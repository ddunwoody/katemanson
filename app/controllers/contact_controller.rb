class ContactController < ApplicationController
  before_filter :set_nav_context

  def index
  end

  def update
  end

  private

  def set_nav_context
    super
    @current_page = 'contact'
    @page_title = @current_page.capitalize
  end
end
