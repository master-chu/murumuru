defmodule Murumuru.FoodController do
  use Murumuru.Web, :controller

  alias Murumuru.Food

  def index(conn, _params) do
    foods = Repo.all(Food)

    render(conn, "index.json", foods: foods)
  end
end
