defmodule Murumuru.DayTest do
  use Murumuru.ModelCase

  alias Murumuru.Day

  @valid_attrs %{date: "2010-04-17"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Day.changeset(%Day{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Day.changeset(%Day{}, @invalid_attrs)
    refute changeset.valid?
  end
end
