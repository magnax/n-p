# frozen_string_literal: true

module Admin
  class InformationsController < Admin::ApplicationController
    def index
      render locals: {
        informations: Information.all
      }
    end
  end
end
