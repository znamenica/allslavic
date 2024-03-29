# frozen_string_literal: true

class Dictum < ApplicationRecord
   belongs_to :language
   belongs_to :alphabeth
   belongs_to :dictumable, polymorphic: true
end
