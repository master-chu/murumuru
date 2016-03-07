defmodule Murumuru.FoodView do
  use Murumuru.Web, :view

  def render("index.json", %{foods: foods}) do
    %{data: render_many(foods, Murumuru.FoodView, "food.json")}
  end

  def render("food.json", %{food: food}) do
    %{
      name: food.name,
      protein: food.protein,
      fat: food.fat,
      carbs: food.carbs,
      calories: food.calories,
      unit: food.unit
    }
  end
end
