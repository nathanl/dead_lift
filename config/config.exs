# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :dead_lift, DeadLiftWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZZo6gvmoQ3qau9beG1Sa1fy3f/LaGv2hFTYrR8lQ6TZtV5GSOQMK8WuDXpQTavra",
  render_errors: [view: DeadLiftWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DeadLift.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "J6QWA1ATk2IqA3/dV2z++4LVms1WtRwY"
  ]


# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
