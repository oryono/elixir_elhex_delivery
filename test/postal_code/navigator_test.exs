defmodule ElhexDelivery.PostalCode.NavigatorTest do
  use ExUnit.Case
  alias ElhexDelivery.PostalCode.Navigator

  test "Basic Test" do
    distance = Navigator.get_distance("123", "123")
    assert distance == 22.45
  end
end