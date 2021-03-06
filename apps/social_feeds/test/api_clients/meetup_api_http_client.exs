defmodule SocialFeeds.Test.MeetupApiHttpClient do
  @moduledoc false

  @upcoming_meetups_json File.read!("test/fixtures/meetup_get_upcoming_events.json")
  @meetups_json File.read!("test/fixtures/meetup_get_events.json")

  def request(url) do
    url = to_string(url)

    cond do
      String.contains?(url, "scroll=next_upcoming") -> {:ok, {[], [], @upcoming_meetups_json}}
      String.contains?(url, "error=true") -> {:error, {}}
      true -> {:ok, {[], [], @meetups_json}}
    end
  end
end
