defmodule Rumbl.ChannelCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      #Import conveniences for testing with channels
      use Phoenix.ChannelTest
      alias Rumbl.Repo
      import Ecto
      import Ecto.Changeset
      import Ecto.Query, only: [from: 1, from: 2]

      #The default endpoint for testing
      @endpoint Rumbl.Endpoint
    end
  end

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Rumbl.Repo)
    Ecto.Adapters.SQL.Sandbox.mode(Rumbl.Repo, {:shared, self()})
  end
end