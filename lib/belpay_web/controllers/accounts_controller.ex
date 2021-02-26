defmodule BelpayWeb.AccountsController do
  use BelpayWeb, :controller

  alias Belpay.Account
  alias Belpay.Accounts.Transactions.Response, as: TransactionResponse

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

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- Belpay.transaction(params) do
      conn
      |> put_status(:ok)
      |> render("transaction.json", transaction: transaction)
    end
  end
end
