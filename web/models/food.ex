import EctoEnum
defenum UnitEnum, g: 0, oz: 1

defmodule Murumuru.Food do
  use Murumuru.Web, :model

  schema "foods" do
    field :name, :string
    field :protein, :float
    field :carbs, :float
    field :fat, :float
    field :calories, :float
    field :unit, UnitEnum
    
    timestamps
  end

  @required_fields ~w(name protein carbs fat calories unit)
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
