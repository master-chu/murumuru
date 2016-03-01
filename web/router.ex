defmodule Murumuru.Router do
  use Murumuru.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Murumuru do
    pipe_through :api # Use the default browser stack

    resources "/foods", FoodController, only: [:index]
  end
end
