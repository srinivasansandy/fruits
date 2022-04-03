module Concerns
  # Public: Macros and logic for Models
  module Blending
    extend ActiveSupport::Concern

    included do
      # extend and include

      # default scope

      # constants

      # attr related macros

      # enums

      # association macros

      # validation macros

      # callbacks

      if self.class.name == "Apple"
        after_save :make_juice
      end

      # other macros

      # scopes
    end

    private

    # Internal: make_juice
    #
    # Returns
    def make_juice
      #write some code
    end
  end
end
