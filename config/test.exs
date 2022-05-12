import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :domo_test, DomoTestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "SDQLzN+BNrQnx2XgU+1qwlTp5UkpJ6xjVS7VATvSHjozq1x+Ry9Gf+QHChrULjvz",
  server: false

# In test we don't send emails.
config :domo_test, DomoTest.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
