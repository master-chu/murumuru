defmodule Murumuru.DayView do
  use Murumuru.Web, :view

  def render("index.json", %{days: days}) do
    %{data: render_many(days, Murumuru.DayView, "day.json")}
  end

  def render("show.json", %{day: day}) do
    %{data: render_one(day, Murumuru.DayView, "day.json")}
  end

  # Assumes you have preloaded :day_foods !!!
  def render("day.json", %{day: day}) do
    %{
      id: day.id,
      date: day.date,
      foods: render_many(day.day_foods, Murumuru.DayFoodView, "food.json")
    }
  end

end
