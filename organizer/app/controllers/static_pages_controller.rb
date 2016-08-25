class StaticPagesController < ApplicationController
  layout "static", only: [:help, :about, :bride]
  def help
  end

  def about
  end

  def bride
  end
end
