defmodule Murumuru.Repo.Migrations.CreateDay do
  use Ecto.Migration

  def change do
    create table(:days) do
      add :date, :date

      timestamps
    end

  end
end
