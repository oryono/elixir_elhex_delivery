defmodule ElhexDelivery.PostalCode.Navigator do
  def get_distance(from, to) do
    do_get_distance(from, to)
  end

  defp do_get_distance(from, to) do
    {lat1, lon1} = get_geolocation(from)
    {lat2, lon2} = get_geolocation(to)

    22.45
  end

  defp get_geolocation(postal_code) when is_binary(postal_code) do
    {123, 456}
  end

  defp get_geolocation(postal_code) when is_integer(postal_code) do
    postal_code = Integer.to_string(postal_code)
    get_geolocation(postal_code)
  end
end