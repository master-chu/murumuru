defmodule Murumuru.FoodController do
  use Murumuru.Web, :controller

  alias Murumuru.Food

  def index(conn, _params) do
    foods = Repo.all(Food)
    render(conn, "index.json", foods: foods)
  end

  def show(conn, %{"id" => food_id}) do
    food = Repo.get(Food, food_id)
    render(conn, "show.json", food: food)
  end

  def create(conn, %{"food" => food_params}) do
    changeset = Food.changeset(%Food{}, food_params)
    case Repo.insert(changeset) do
      {:ok, food} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", food_path(conn, :show, food))
        |> render("show.json", food: food)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Murumuru.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => food_id}) do
    food = Repo.get!(Food, food_id)
    Repo.delete!(food)
    send_resp(conn, :no_content, "")
  end
end
