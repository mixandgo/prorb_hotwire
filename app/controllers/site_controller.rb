class SiteController < ApplicationController
  def first
    @count = 3
  end

  def second
  end

  def third
    @name, @email, @age = params[:person].values_at(:name, :email, :age)
    @count = params[:count].to_i + 1
    @post = Post.create(title: @name)
    @post.broadcast_prepend_to("teststr", target: "broadcasts")
  end

  def fourth; end
end
