FROM ruby:3.0.2
WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY . .
RUN rake db:create
ENV RAILS_ENV='development'
RUN bundle exec rake db:migrate
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]