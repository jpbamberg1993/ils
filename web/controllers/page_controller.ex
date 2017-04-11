defmodule Ils.PageController do
  use Ils.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
