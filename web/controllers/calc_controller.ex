defmodule MacroTargets.CalcController do
  use MacroTargets.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
