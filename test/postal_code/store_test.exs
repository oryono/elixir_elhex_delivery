defmodule ElhexDelivery.PostalCode.StoreTest do
  use ExUnit.Case

  alias ElhexDelivery.PostalCode.Store

  test "geo_location" do
    {latitude, longitude} = Store.get_geolocation_data("94062")

    assert is_float(latitude)
    assert is_float(longitude)
  end
end