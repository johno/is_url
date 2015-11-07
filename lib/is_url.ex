defmodule IsUrl do
  @moduledoc """
  The base module of IsUrl.

  It exposes a single function, `validate`.
  """

  @doc """
  Validate whether a given string is a url. This is a solution adapted from [Stack Overflow](http://stackoverflow.com/questions/30696761/check-if-a-url-is-valid-in-elixir).

  Args:

  * `url` - The url to validate, string

  Returns a boolean.
  """
  def validate(url) do
    case URI.parse(url) do
      %URI{scheme: nil} -> false
      %URI{host: nil, path: nil} -> false
      _ -> true
    end
  end
end
