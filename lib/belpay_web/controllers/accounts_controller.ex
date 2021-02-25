defmodule BelpayWeb.AccountsController do
  use BelpayWeb, :controller

  alias Belpay.Account

  action_fallback BelpayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Belpay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- Belpay.withdraw(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end
end
