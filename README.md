# KeywordExtra

Utility for comparing nested keyword lists where order is irrelevant.

## Example

```elixir
fruit = [citrus: [:orange, :lemon]]
veg = [colourful: [:peppers, :tomatoes], bland: [:potatoes]]
kw1 = [food: [fruit: fruit, veg: veg]]
kw2 = [food: [veg: veg, fruit: fruit]]

Keyword.equal?(kw1, kw2) # false
kw1 == kw2 # false

KeywordExtra.sorted_equal?(kw1, kw2) # true
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `keyword_extra` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:keyword_extra, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/keyword_extra](https://hexdocs.pm/keyword_extra).

