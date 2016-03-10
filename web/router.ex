defmodule Murumuru.Router do
  use Murumuru.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Murumuru do
    pipe_through :api

    resources "/foods", FoodController, only: [:index, :show, :create]
  end
end
