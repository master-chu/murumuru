defmodule Murumuru.FoodController do
  use Murumuru.Web, :controller

  alias Murumuru.Food

  def index(conn, _params) do
    foods = Repo.all(Food)
    render(conn, "index.json", foods: foods)
  end

  def show(conn, %{"id" => food_id}) do
    food = Repo.get(Food, food_id)
    render(conn, "show.json", food: food)
  end
end
