defmodule Murumuru.Repo.Migrations.AddUnitCountToFoods do
  use Ecto.Migration

  def change do
    alter table(:foods) do
      add :unit_count, :integer, default: 1
    end
  end
end
