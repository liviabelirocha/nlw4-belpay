defmodule BelpayWeb.AccountsView do
  alias Belpay.{Account}

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
end
