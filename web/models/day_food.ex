defmodule Murumuru.DayFood do
  use Murumuru.Web, :model

  alias Murumuru.Day
  alias Murumuru.Food

  schema "day_foods" do
    belongs_to :day, Day
    belongs_to :food, Food

    field :count, :float, default: 1.0

    timestamps
  end

  @required_fields ~w(day_id food_id)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
