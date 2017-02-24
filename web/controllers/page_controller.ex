defmodule Cms.PageController do
  use Cms.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
