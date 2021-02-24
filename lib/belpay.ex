defmodule Belpay do
  alias Belpay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
