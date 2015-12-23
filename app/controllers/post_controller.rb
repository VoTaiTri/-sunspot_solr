class PostController < ApplicationController
  def search
    @search = Post.search(include: [:comments]) do
      keywords(params[:q])
    end
  end
end
