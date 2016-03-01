ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Murumuru.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Murumuru.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Murumuru.Repo)

