defmodule Murumuru.Day do
  use Murumuru.Web, :model
  alias Murumuru.Food
  alias Murumuru.DayFood

  schema "days" do
    field :date, Ecto.Date, default: Ecto.Date.utc

    has_many :day_foods, DayFood
    has_many :foods, through: [:day_foods, :foods]

    timestamps
  end

  @required_fields ~w()
  @optional_fields ~w(date)

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> unique_constraint(:date)
  end
end
