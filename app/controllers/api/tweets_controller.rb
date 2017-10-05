class Api::TweetsController < ApplicationController
  def index
    render json: TwitterCLient.home_timeline
  end

  def search 
    render json: TwitterClient.search(params[:term])
  end

  def tweet 
    TwitterClient.tweet(params[:tweet])
  end
end
