defmodule ColumnLive do
  use MyAppWeb, :live_view

  def render(assigns) do
    ~H"""
        <p>Hi!</p>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(_params, _uri, socket) do
    {:noreply, socket}
  end
end

defmodule PageLive do
  use MyAppWeb, :live_view

  def render(assigns) do
    ~H"""
        <p>Hi!</p>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(_params, _uri, socket) do
    {:noreply, socket}
  end
end
