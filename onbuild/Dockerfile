FROM cloudgear/rails:ruby2.2
MAINTAINER Georg Kunz, CloudGear <contact@cloudgear.net>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY Gemfile /usr/src/app/
ONBUILD COPY Gemfile.lock /usr/src/app/
ONBUILD RUN bundle install

ENV RACK_ENV     production
ENV PORT         5000

ONBUILD COPY . /usr/src/app
ONBUILD RUN bundle exec rake assets:precompile

EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "$PORT"]