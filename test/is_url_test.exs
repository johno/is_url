defmodule IsUrlTest do
  use ExUnit.Case
  doctest IsUrl

  test "returns true for valid urls" do
    urls = [
      "http://johnotander.com",
      "ftp://www.johnotander.com/foo/bar",
    ]

    for url <- urls do
      assert(IsUrl.validate(url))
    end
  end

  test "returns false for invalid urls" do
    invalidUrls = [
      "johnotander.com",
      "foobar",
    ]

    for invalidUrl <- invalidUrls do
      assert(!IsUrl.validate(invalidUrl))
    end
  end
end
