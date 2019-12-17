defmodule ElhexDelivery.PostalCode.DataParserTest do
  use ExUnit.Case

  alias ElhexDelivery.PostalCode.DataParser

  @moduletag :capture_log

#  doctest DataParser

  test "module exists" do
    assert is_list(DataParser.module_info())
  end

  test "Parse data" do
    geolocation_data = DataParser.parse_data()
    {latitude, longitude} = Map.get(geolocation_data, "79718")

    assert is_float(latitude)
    assert is_float(longitude)
  end
end
