class CategoriesController < AdminController
  active_scaffold :category do |config|
    config.actions.exclude :nested
    config.columns[:cartoons].form_ui = :select
  end
end
