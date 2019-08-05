defmodule DeadLiftWeb.WidgetLive.Show do
  use Phoenix.LiveView
  require Logger

  def mount(%{id: id}, socket) do
    Logger.debug "live view mounting"
    socket
    |> assign(id: id)
    |> show()
  end

  def render(assigns) do
    DeadLiftWeb.WidgetView.render("show.html", assigns)
  end

  defp show(socket) do
    {:ok, socket |> assign(:cities, Cities.map())}
  end
end
