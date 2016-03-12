defmodule Murumuru.Repo.Migrations.AddUniqueIndexToDaysDate do
  use Ecto.Migration

  def change do
    create unique_index(:days, [:date])
  end
end
