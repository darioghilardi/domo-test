defmodule DomoTest.Schema do
  use Domo
  use TypedStruct

  typedstruct enforce: true do
    field(:one, String.t())
    field(:two, boolean())
    field(:three, integer())
  end
end
