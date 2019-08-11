FROM elixir:1.8

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install hex phx_new 1.4.6 --force
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN apt-get install -y inotify-tools
WORKDIR /src/auction_umbrella

CMD ["iex"]