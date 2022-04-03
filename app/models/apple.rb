# == Schema Information
#
# Table name: Apple
#
#  id               :uuid             not null, primary key
#  basket_id        :integer
#  variety          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#

class Apple < ApplicationRecord
  include Concerns::Blending

  # scopes
end