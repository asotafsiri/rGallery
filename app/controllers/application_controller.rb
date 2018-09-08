# frozen_string_literal: true

# appcontroller class
class ApplicationController < ActionController::Base
  before_action :getCategoryNav

  private

  def getCategoryNav
    @categoryNav = Category.all
  end
end
