# frozen_string_literal: true

# category model
class Category < ApplicationRecord
  has_many :images
end
