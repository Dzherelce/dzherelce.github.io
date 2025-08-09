#
# Build: docker build -t dzerelce .
#
# Develop:
#  docker run -it  --rm -v $(pwd):/app -p 4567:4567 dzerelce
#  open http://localhost:4567
#
#
# Deploy:
# docker run -it  --rm -v $(pwd):/app -v ~/.gitconfig:/root/.gitconfig  -p 4567:4567 dzerelce deploy
#
FROM ruby:3.4.1

# Expose ports.
EXPOSE 4567

RUN \
  apt-get update && apt-get --yes upgrade \
  && apt-get install -y sudo curl build-essential locales locales-all nodejs

ADD Gemfile* /app/
RUN cd /app; bundle install

ENTRYPOINT ["bundle", "exec", "middleman"]

CMD ["server"]

WORKDIR "/app"

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
