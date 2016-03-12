defmodule Murumuru.Day do
  use Murumuru.Web, :model
  alias Murumuru.Food

  schema "days" do
    field :date, Ecto.Date, default: Ecto.Date.utc

    has_many :foods, Food
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
