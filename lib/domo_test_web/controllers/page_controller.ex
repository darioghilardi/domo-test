defmodule DomoTestWeb.PageController do
  use DomoTestWeb, :controller
  alias DomoTest.Schema

  def index(conn, _params) do
    DomoTest.Schema.new(%{one: "aaa", two: 23, three: false})
    |> IO.inspect()

    render(conn, "index.html")
  end
end
