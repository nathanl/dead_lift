defmodule DeadLiftWeb.WidgetController do
  use DeadLiftWeb, :controller

  def show(conn, %{"id" => id} = _params) do
    live_render(conn, DeadLiftWeb.WidgetLive.Show,
      session: %{
        id: id
      }
    )
  end
end
