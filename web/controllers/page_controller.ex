defmodule Murumuru.PageController do
  use Murumuru.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
