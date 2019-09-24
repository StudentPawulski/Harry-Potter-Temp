# frozen_string_literal: true

class HousesController < ApplicationController
  def index
    @houses = House.all # This instance variable will be shared with the view.
  end
  # the associated view is auto-magically loaded with access to the @vars.
  # index action maps to: app/views/houses/index.html.erb

  def show
    @house = House.find(params[:id])
  end
end
