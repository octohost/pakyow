FROM octohost/ruby-2.0

RUN mkdir /srv/www
ADD . /srv/www

WORKDIR /srv/www

RUN bundle install --deployment

EXPOSE 3000

CMD bundle exec pakyow server
