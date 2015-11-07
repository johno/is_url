# is_url [![Build Status](https://travis-ci.org/johnotander/is_url.svg?branch=master)](https://travis-ci.org/johnotander/is_url)

Validate a url.

## Installation

Add is_url to your list of dependencies in `mix.exs`

```elixir
def deps do
  [{:is_url, "~> 0.0.1"}]
end
```

Ensure is_url is started before your application

```elixir
def application do
  [applications: [:is_url]]
end
```

## Usage

```elixir
IsUrl.validate("http://johnotander.com") # => true
IsUrl.validate("ftp://www.foo.bar") # => true
IsUrl.validate("foo.bar") # => false
```

## Development

```
mix test
```

## License

MIT

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Crafted with <3 by [John Otander](http://johnotander.com) ([@4lpine](https://twitter.com/4lpine)).
