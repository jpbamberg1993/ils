# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ils,
  ecto_repos: [Ils.Repo]

# Configures the endpoint
config :ils, Ils.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FfAJ5JI7mkjz2Vr2rvY458AhKsVyPeIyXmYGV/A1Q7pDT5QkpVeNzuJwRxN0I4td",
  render_errors: [view: Ils.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ils.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
