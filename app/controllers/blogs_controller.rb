class BlogsController < ApplicationController
  def index
    @blog = Blog.find_by(id: params[:user_id])
    @entries = Entry.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(title: params[:title], user_id: params[:user_id])
    if @blog.save
      redirect_to user_blogs_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
