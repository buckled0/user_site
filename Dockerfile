FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /xanview_test
WORKDIR /xanview_test
COPY Gemfile /xanview_test/Gemfile
COPY Gemfile.lock /xanview_test/Gemfile.lock
RUN bundle install
COPY . /xanview_test

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]