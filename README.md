# Auction Example

This is project is an auction web app using Phoenix framework. This example is based on Phoenix in Action book.

Run using docker compose:

```
docker-compose up -d
docker-compose exec phoenix bash
```

Install the dependencies:

```
cd auction_umbrella
mix deps.get
```

Run auction service:

```
mix ecto.create
mix ecto.migrate
mix phx.server
```

With that is possible to access the endpoints: (e.g. http://localhost:4000)

Run integration tests:

```
cd apps/auction
mix test
```

Run API tests:

```
cd apps/auction_web
mix test
```