defmodule BelpayWeb.AccountsView do
  alias Belpay.Account
  alias Belpay.Accounts.Transactions.Response, as: TransactionResponse

  def render("update.json", %{
        account: %Account{
          id: id,
          balance: balance
        }
      }) do
    %{
      message: "Value deposited.",
      account: %{
        id: id,
        balance: balance
      }
    }
  end

  def render("transaction.json", %{
        transaction: %TransactionResponse{to_account: to_account, from_account: from_account}
      }) do
    %{
      message: "Transaction done successfully.",
      transaction: %{
        from_account: %{id: from_account.id, balance: from_account.balance},
        to_account: %{id: to_account.id, balance: to_account.balance}
      }
    }
  end
end
