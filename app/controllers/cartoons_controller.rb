class CartoonsController < AdminController
  active_scaffold :cartoon do |config|
#    config.actions.exclude :nested
  end
end
