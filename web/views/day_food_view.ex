defmodule Murumuru.DayFoodView do
  use Murumuru.Web, :view

  # This is deliberately called food, since from the client's
  # perspective, this is the information about a food they would
  # want. It also matches the format the client requests with
  # to add new foods to a day.

  def render("food.json", %{day_food: day_food}) do
    %{
      food_id: day_food.food_id,
      count: day_food.count

      # We could nest the food itself, but Ember should only need the food_id
      # provided we have preloaded it on the client side.
      # food: render_one(day_food.food, Murumuru.FoodView, "food.json")
    }
  end
end
