# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# third-party users, it should be done in your "mix.exs" file.

# You can configure your application as:
#
#     config :auction, key: :value
#
# and access this configuration in your application as:
#
#     Application.get_env(:auction, :key)
#
# You can also configure a third-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env()}.exs"

config :auction, ecto_repos: [Auction.Repo]

config :auction_web, AuctionWeb.Endpoint,
  url: [host: "localhost"],
  http: [port: 4000],
  secret_key_base: "U0A+e5HxHpVqo8L+rmnmEZm1eWXWFOnHmD2atMn5HnUaCL2SWbi/i33YKpyzfF+L",
  render_errors: [view: AuctionWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: AuctionWeb.PubSub, adapter: Phoenix.PubSub.PG2]

config :auction, Auction.Repo,
  database: "auction_test",
  username: "postgres",
  password: "postgres",
  hostname: "postgres",
  port: "5432",
  pool: Ecto.Adapters.SQL.Sandbox

config :logger, level: :info
