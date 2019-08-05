defmodule DeadLiftWeb.PageController do
  use DeadLiftWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", cities: Cities.map())
  end
end
