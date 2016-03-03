defmodule Murumuru.FoodTest do
  use Murumuru.ModelCase

  alias Murumuru.Food

  @valid_attrs %{calories: "120.5", carbs: "120.5", fat: "120.5", name: "some content", protein: "120.5", unit: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Food.changeset(%Food{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Food.changeset(%Food{}, @invalid_attrs)
    refute changeset.valid?
  end
end
