defmodule Murumuru.DayFoodTest do
  use Murumuru.ModelCase

  alias Murumuru.DayFood

  @valid_attrs %{day_id: 42, food_id: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = DayFood.changeset(%DayFood{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = DayFood.changeset(%DayFood{}, @invalid_attrs)
    refute changeset.valid?
  end
end
