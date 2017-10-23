class PostsController < ApplicationController
    
    def index
        @posts = Post.all
    end
    
    def new
        
    end
    
    def create
        post = Post.new
        post.content = params[:content]
        post.save
        
        redirect_to "/posts/#{post.id}"
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        post = Post.find(params[:id])
        post.content = params[:content]
        post.save
        
        redirect_to "/posts/#{post.id}"
    end
    
    def destroy
        
    end
    
end
