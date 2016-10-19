class RulesController < ApplicationController

  before_filter :require_administrative_privileges

  def auto_update_rules
    %x[rake snorby:update_rules_through_pulledpork[i]]
  end

end
