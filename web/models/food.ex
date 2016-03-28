defmodule Murumuru.Food do
  use Murumuru.Web, :model

  alias Murumuru.Enums

  schema "foods" do
    field :name, :string
    field :protein, :float, default: 0.0
    field :carbs, :float, default: 0.0
    field :fat, :float, default: 0.0
    field :calories, :float, default: 0.0
    field :unit, Enums.UnitEnum, default: :g

    timestamps
  end

  @required_fields ~w(name)
  @optional_fields ~w(protein carbs fat calories unit)

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
