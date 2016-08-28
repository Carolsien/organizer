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
    @church_ceremonies = ChurchCeremony.all
    @church_decorations = ChurchDecoration.all
    @church_bests = ChurchBest.all
    @church_rings = ChurchRing.all
  end

  def wedding
    @wedding_rooms = WeddingRoom.all
    @wedding_decorations = WeddingDecoration.all
    @wedding_services = WeddingService.all
  end

  def groom
    @groom_suits = GroomSuit.all

  end
end
