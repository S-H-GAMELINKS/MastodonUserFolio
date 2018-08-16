class FolioController < ApplicationController
  before_action :get_info, only: :show

  def index
  end

  def users

    @all_user = User.all

    @users = Hash.new

    @all_user.each do |user|

      user.email.match("@")
      puts $'
      client = Mastodon::REST::Client.new(base_url: "https://" + $', bearer_token: user.token)
      puts user.uid
      @users[user.id] = { :account => client.verify_credentials }
    end
  end

  def show
  end

  private

    def get_info
      puts params
        user = User.find(params[:format])

        url = "https://gamelinks007.net"
        token = user.token.to_s

        client = Mastodon::REST::Client.new(base_url: url, bearer_token: token)

        id = client.verify_credentials.id

        @toots = client.statuses(id)
        @account = client.verify_credentials
    end
end
