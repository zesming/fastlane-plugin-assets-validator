module Fastlane
  module Helper
    class AssetsValidatorHelper
      # class methods that you define here become available in your action
      # as `Helper::AssetsValidatorHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the assets_validator plugin helper!")
      end
    end
  end
end
