defmodule Murumuru.Repo.Migrations.ModifyFoodsDefaults do
  use Ecto.Migration

  def change do
    alter table(:foods) do
      modify :protein, :float, default: 0.0
      modify :fat, :float, default: 0.0
      modify :carbs, :float, default: 0.0
      modify :calories, :float, default: 0.0
      modify :unit, :integer, default: 0
    end
  end
end
