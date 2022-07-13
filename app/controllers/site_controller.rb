class SiteController < ApplicationController
  def first; end

  def second; end

  def third
    redirect_to second_page_path
  end

  def fourth; end
end
