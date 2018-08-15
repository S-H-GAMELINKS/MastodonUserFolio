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

        puts id = client.verify_credentials.id

        @toots = Array.new

        client.statuses(id).each do |toot|
          puts toot.methods
          puts @toots.push(toot.content)
        end

      else
        @toots = nil
      end
    end

    puts @toots
end
