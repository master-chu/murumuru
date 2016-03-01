defmodule Murumuru.FoodController do
  use Murumuru.Web, :controller

  def index(conn, _params) do
    json conn, %{id: 353}
  end
end
