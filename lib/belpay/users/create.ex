defmodule Belpay.Users.Create do
  alias Belpay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
