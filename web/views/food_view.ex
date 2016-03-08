defmodule Murumuru.FoodView do
  use Murumuru.Web, :view

  def render("index.json", %{foods: foods}) do
    %{data: render_many(foods, Murumuru.FoodView, "food.json")}
  end

  def render("show.json", %{food: food}) do
    %{data: render_one(food, Murumuru.FoodView, "food.json")}
  end

  def render("food.json", %{food: food}) do
    %{
      id: food.id,
      name: food.name,
      protein: food.protein,
      fat: food.fat,
      carbs: food.carbs,
      calories: food.calories,
      unit: food.unit
    }
  end
end
