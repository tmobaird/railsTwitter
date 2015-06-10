class TweetsController < ApplicationController
    def index
      @tweets = Tweet.all
      @new_tweet = Tweet.new
      respond_to do |format|
          format.html
      end
    end
    
    def show
        @tweets = Tweet.all
    end
    
    def create
       @tweet = Tweet.create(user_params)
       respond_to do |format|
       if @tweet.save
        format.html { redirect_to tweets_path }
       else
        flash[:notice] = "Message failed to save."
        format.html { redirect_to tweets_path }
       end
       end
    end
    
    def add
        if params[:tweet][:name] != ""
            tweetName = params[:tweet][:name]
        else
            tweetName = "Anonymous"
        end
        tweet = Tweet.new(:name => tweetName, :body => params[:tweet][:body])
        if params[:tweet][:body] != ""
            tweet.save
            flash[:success] = "Tweet Successfully Posted!"
        else
            flash[:error] = "Tweet not posted! Make sure your tweet has a body"
        end
        redirect_to :action => 'index'
    end
    
  private
  ## Strong Parameters 
  def user_params
    params.require(:tweet).permit(:name, :body)
  end
end
