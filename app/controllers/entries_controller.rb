class EntriesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @entry = Entry.new
  end

  def create
    blog_id = params[:blog_id]
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to user_blogs_path(blog_id)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def entry_params
      params.require(:entry).permit(:title, :body)
    end
end
