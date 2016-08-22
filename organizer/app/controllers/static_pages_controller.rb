class StaticPagesController < ApplicationController
  layout "static", only: [:help, :about]
  def help
  end

  def about
  end
end
