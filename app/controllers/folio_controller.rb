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
      begin 

      client = Mastodon::REST::Client.new(base_url: "https://" + $', bearer_token: user.token)
      puts user.uid
      @users[user.id] = { :account => client.verify_credentials }

      rescue => error
        puts error
      end
    end
  end

  def show
  end

  private

    def get_info
      puts params
        user = User.find(params[:format])

        token = user.token.to_s

        user.email.match("@")
        puts $'

        client = Mastodon::REST::Client.new(base_url: "https://" + $', bearer_token: token)

        id = client.verify_credentials.id

        @toots = client.statuses(id)
        @account = client.verify_credentials
    end
end
