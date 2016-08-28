class StaticPagesController < ApplicationController
  layout "static", only: [:help, :about, :bride, :church, :wedding, :groom]
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

  def church
    @church_ceremonies = ChurchCeremony.where(user_id: current_user.id)
    @church_decorations = ChurchDecoration.where(user_id: current_user.id)
    @church_bests = ChurchBest.where(user_id: current_user.id)
    @church_rings = ChurchRing.where(user_id: current_user.id)
  end

  def wedding
    @wedding_rooms = WeddingRoom.where(user_id: current_user.id)
    @wedding_decorations = WeddingDecoration.where(user_id: current_user.id)
    @wedding_services = WeddingService.where(user_id: current_user.id)
  end

  def groom
    @groom_suits = GroomSuit.where(user_id: current_user.id)
    @groom_accessories = GroomAccessory.where(user_id: current_user.id)

  end
end
