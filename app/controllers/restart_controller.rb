class RestartController < ApplicationController

  before_filter :require_administrative_privileges

  def restart
    if params[:mode] == "IDS"

    else

    end
  end

end