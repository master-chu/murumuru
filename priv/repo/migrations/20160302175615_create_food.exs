defmodule Murumuru.Repo.Migrations.CreateFood do
  use Ecto.Migration

  def change do
    create table(:foods) do
      add :name, :string
      add :protein, :float
      add :carbs, :float
      add :fat, :float
      add :calories, :float
      add :unit, :integer

      timestamps
    end

  end
end
