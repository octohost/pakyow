FROM octohost/ruby-2.0

WORKDIR /srv/www

RUN mkdir /srv/www
ADD . /srv/www
RUN bundle install --deployment

EXPOSE 3000

CMD bundle exec pakyow server
