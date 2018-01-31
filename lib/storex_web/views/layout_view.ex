defmodule StorexWeb.LayoutView do
  use StorexWeb, :view
  alias StorexWeb.Plugs
  import StorexWeb.Helpers.PriceFormatter

  def items_count(conn) do
    Plugs.ItemsCount.get(conn)
  end

  def items_total_price(conn) do
    Plugs.ItemsTotalPrice.get(conn)
  end
end
