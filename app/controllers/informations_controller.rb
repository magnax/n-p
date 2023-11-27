# frozen_string_literal: true

class InformationsController < ApplicationController
  def create
    information = Information.new(information_params)
    if information.save
      flash[:notice] = 'Thanks!'
    else
      flash[:error] = 'Error'
    end
    redirect_to request.referrer
  end

  private

  def information_params
    params.permit :text
  end
end
