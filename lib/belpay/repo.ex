defmodule Belpay.Repo do
  use Ecto.Repo,
    otp_app: :belpay,
    adapter: Ecto.Adapters.Postgres
end
