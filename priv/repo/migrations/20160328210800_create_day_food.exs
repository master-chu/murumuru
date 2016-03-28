defmodule Murumuru.Repo.Migrations.CreateDayFood do
  use Ecto.Migration

  def change do
    create table(:day_foods) do
      add :day_id, :integer
      add :food_id, :integer

      timestamps
    end

  end
end
