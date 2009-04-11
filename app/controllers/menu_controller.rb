class MenuController < ApplicationController
  before_filter :set_nav_context

  protected

  def set_nav_context
    # TODO: figure out how to sort action_methods appropriately
    @menu = ['home', 'gallery', 'contact', 'blog']
  end
end
