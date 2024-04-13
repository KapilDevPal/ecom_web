class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    return @blogs
  end
end
