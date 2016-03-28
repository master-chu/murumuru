defmodule Murumuru.DayController do
  use Murumuru.Web, :controller

  alias Murumuru.Day

  def show(conn, %{"id" => day_id}) do
    day = Repo.get(Day, day_id)
    render(conn, "show.json", day: day)
  end

  def create(conn, _) do
    # for now just default to today's date
    changeset = Day.changeset(%Day{}, %{})
    case Repo.insert(changeset) do
      {:ok, day} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", day_path(conn, :show, day))
        |> render("show.json", day: day)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Murumuru.ChangesetView, "error.json", changeset: changeset)
    end
  end
  #
  # def delete(conn, %{"id" => day_id}) do
  #   day = Repo.get!(Day, day_id)
  #   Repo.delete!(day)
  #   send_resp(conn, :no_content, "")
  # end
  #
  # def update(conn, %{"id" => day_id, "day" => day_params}) do
  #   day = Repo.get!(Day, day_id) |> Repo.preload(:foods)
  #   IO.inspect day
  #   changeset = Day.changeset(day, day_params)
  #   case Repo.update(changeset) do
  #     {:ok, day} ->
  #       render(conn, "show.json", day: day)
  #     {:error, changeset} ->
  #       conn
  #       |> put_status(:unprocessable_entity)
  #       |> render(Throwaway.ChangesetView, "error.json", changeset: changeset)
  #   end
  # end
end
