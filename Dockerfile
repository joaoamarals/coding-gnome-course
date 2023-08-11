FROM elixir:1.13.3-alpine

RUN mkdir -p /var/app/current home/user

WORKDIR /home/user/code

COPY . .

RUN mix local.hex --force && \
    mix local.rebar --force

CMD ["mix", "phx.server"]