defmodule KeywordExtraTest do
  use ExUnit.Case
  doctest KeywordExtra

  test "greets the world" do
    assert KeywordExtra.hello() == :world
  end
end
