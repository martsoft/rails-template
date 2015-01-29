class PagesController < ApplicationController
  include HighVoltage::StaticPage

  layout :layout_for_pages

  private

  def layout_for_pages
    params[:id] =~ /^templates/ ? 'empty' : 'application'
  end
end