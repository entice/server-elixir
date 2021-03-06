use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :entice_web, Entice.Web.Endpoint,
  http: [port: 4001],
  server: false

config :entice_web, client_version: "TestVersion"

# Print only warnings and errors during test
config :logger, level: :warn

# Set a higher stacktrace during test
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :entice_web, Entice.Web.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "entice_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
