defmodule ElhexDelivery.Supervisor do
  use Supervisor
  alias ElhexDelivery.PostalCode.Store

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init(_) do
    children = [
      supervisor(Store, [])
    ]

    supervise(children, strategy: :one_for_all)
  end
end