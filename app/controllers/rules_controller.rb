class RulesController < ApplicationController

  before_filter :require_administrative_privileges

  def auto_update_rules
    # ...
  end

end
