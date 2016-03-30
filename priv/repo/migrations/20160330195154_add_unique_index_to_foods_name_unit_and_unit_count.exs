defmodule Murumuru.Repo.Migrations.AddUniqueIndexToFoodsNameUnitAndUnitCount do
  use Ecto.Migration

  def change do
    create unique_index(:foods, [:name, :unit, :unit_count])
  end
end
