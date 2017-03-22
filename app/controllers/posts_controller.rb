class PostsController < ApplicationController
 helper KryptonicCms::MarkdownHelper

  def index
    @posts = blog_posts_with_links.order('id desc')
  end

  def show
    @post = blog_posts_with_links.find_by_slug!(params[:slug])
  end

  def search
    @posts = blog_posts_with_links.search(params[:query])
    render action: 'index'
  end

  private

  def blog_posts_with_links
    KryptonicCms::Entry.where(type: %w(BlogPost BlogLink)).published
  end
end