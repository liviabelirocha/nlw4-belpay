defmodule BelpayWeb.FallbackController do
  use BelpayWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(BelpayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
