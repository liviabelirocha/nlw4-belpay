defmodule BelpayWeb.UsersController do
  use BelpayWeb, :controller

  alias Belpay.User

  action_fallback BelpayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Belpay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
