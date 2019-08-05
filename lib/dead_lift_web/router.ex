defmodule DeadLiftWeb.Router do
  use DeadLiftWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :put_layout, {DeadLiftWeb.LayoutView, :app}
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DeadLiftWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources("/widgets", WidgetController, only: [:show])
  end

  # Other scopes may use custom stacks.
  # scope "/api", DeadLiftWeb do
  #   pipe_through :api
  # end
end
