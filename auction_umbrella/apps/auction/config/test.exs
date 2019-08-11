use Mix.Config

config :auction, Auction.Repo,
  username: "postgres",
  password: "postgres",
  database: "auction_test",
  hostname: "0.0.0.0",
  port: "5432",
  pool: Ecto.Adapters.SQL.Sandbox
