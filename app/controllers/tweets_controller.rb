class TweetsController < ApplicationController
  def index
    @tweets = Tweet.includes(:user).order('created_at DESC')
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user =  current_user
    if @tweet.save
      redirect_to :root
    else
      render action: :new
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text,:user)
  end

end
