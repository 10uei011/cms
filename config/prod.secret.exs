use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :cms, Cms.Endpoint,
  secret_key_base: "PZOWEWkDX7A+4Xk9SpoxbGsDmgLqBMefjhSy7OsfTsRIflc7zuCHwByj9SnzNx29"

# Configure your database
config :cms, Cms.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DATABASE_USERNAME"),
  password: System.get_env("DATABASE_PASSWORD"),
  database: "cms_prod",
  pool_size: 20
