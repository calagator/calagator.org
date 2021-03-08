FROM ruby:2.5.8
ARG git_sha
ENV LANG C.UTF-8
RUN apt-get update \
    && apt-get install --no-install-recommends -y libpq-dev postgresql-client sqlite3 libsqlite3-dev libssl-dev nodejs \
    && rm -rf /var/lib/apt/lists/*
RUN gem install bundler -v '< 2' \
    && bundle config --global frozen 1 \
    && bundle config github.https true \
    && bundle config set deployment 'true'
COPY Gemfile Gemfile.lock .ruby-version /app/
WORKDIR /app
RUN bundle install
ENTRYPOINT ["bundle", "exec"]
ENV SHA ${git_sha}
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true
RUN echo ${git_sha} > /app/REVISION
COPY . /app/
RUN bin/rake assets:precompile
EXPOSE 3000
CMD ["puma","-C","config/puma.rb"]

