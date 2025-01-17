 class PostsController < ApplicationController
    before_action :initialize_posts
  
    def index
      # All posts are already in the @posts array
    end
  
    def new
      @post = {}
    end
  
    def create
      # Saving the image to the public directory
      image_path = nil
      if params[:image]
        image_path = "uploads/#{params[:image].original_filename}"
        File.open(Rails.root.join('public', image_path), 'wb') do |file|
          file.write(params[:image].read)
        end
      end
  
      new_post = { title: params[:title], body: params[:body], image: image_path }
      @posts << new_post  # Add the post to the array
      redirect_to posts_path
    end
  
    private
  
    def initialize_posts
      # Initialize an in-memory array of posts
      @posts ||= []
    end
  end  