class RestartController < ApplicationController

  before_filter :require_administrative_privileges

  def restart
    params[:mode] == "IDS" ? %x[rake snorby:restart_snort_ids[i]]: %x[rake snorby:restart_snort_ips[i]]
  end

end