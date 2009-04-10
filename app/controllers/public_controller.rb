class PublicController < ApplicationController
  layout 'public'
  before_filter :set_nav_context

  private

  def set_nav_context
    # TODO: figure out how to sort action_methods appropriately
    @menu = ['home', 'gallery', 'contact', 'blog']
  end
end
