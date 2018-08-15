class FolioController < ApplicationController
  before_action :get_info

  def index
  end

  private

    def get_info

      if user_signed_in? then
        url = "https://gamelinks007.net"
        token = current_user.token.to_s

        client = Mastodon::REST::Client.new(base_url: url, bearer_token: token)

        id = client.verify_credentials.id

        @toots = client.statuses(id)
        puts @account = client.verify_credentials

      else
        @toots = nil
      end
    end

    puts @toots
end
