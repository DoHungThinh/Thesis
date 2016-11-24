class RulesController < ApplicationController

  before_filter :require_administrative_privileges

  def auto_update_rules
    %x[rake snorby:update_rules_through_pulledpork[i]]
  end

  def listing_rules
    @rules = File.open("/etc/snort/rules/#{params[:type]}.rules").read
  end
end