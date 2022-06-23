defmodule MyApp.Router do
  use Phoenix.Router
  import Phoenix.LiveView.Router
  use MyApp.Cldr.Routes

  localize do
    get "/pages/:page", PageController, :show, assigns: %{key: :value}
    resources "/users", UserController do
      resources "/faces", UserController
    end
  end

  localize [:en, :fr] do
    resources "/comments", PageController, except: [:delete]
    get "/pages/:page", PageController, :edit, assigns: %{key: :value}
  end

  localize do
    get "/pages/:page", PageController, :show
    patch "/pages/:page", PageController, :update
    delete "/pages/:page", PageController, :delete
    post "/pages/:page", PageController, :create
    options "/pages/:page", PageController, :options
    head "/pages/:page", PageController, :head
  end

  localize "fr" do
    get "/chapters/:page", PageController, :show, as: "chap"
    put "/pages/:page", PageController, :update
  end

  localize do
    live "/columns/:page", ColumnLive
    live "/live_page", PageLive
  end

  # Unlocalized route with translatable path
  # elements so we can confirm there is no translation
  get "/not_localized/:page", NotLocalizedController, :show
end
