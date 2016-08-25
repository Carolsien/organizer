class StaticPagesController < ApplicationController
  layout "static", only: [:help, :about, :bride]
  def help
  end

  def about
  end

  def bride
    @bride_dresses = BrideDress.where(user_id: current_user.id)
    @bride_accessories = BrideAccessory.where(user_id: current_user.id)
    @bride_hairdressers = BrideHairdresser.where(user_id: current_user.id)
    @bride_beauticans = BrideBeautican.where(user_id: current_user.id)
  end
end
