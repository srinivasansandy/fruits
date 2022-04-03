# == Schema Information
#
# Table name: Orange
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

class Orange < ApplicationRecord
  include Concerns::Blending
  
  # scopes
end