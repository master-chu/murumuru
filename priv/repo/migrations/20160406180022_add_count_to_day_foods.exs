defmodule Murumuru.Repo.Migrations.AddCountToFoodDays do
  use Ecto.Migration

  def change do
    alter table(:day_foods) do
      add :count, :float, default: 1.0
    end
  end
end
