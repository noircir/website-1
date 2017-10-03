defmodule MontrealElixirWeb.PageControllerTest do
  use MontrealElixirWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "About Montreal Elixir"
  end
end
