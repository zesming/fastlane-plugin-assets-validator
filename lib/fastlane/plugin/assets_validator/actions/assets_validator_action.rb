require 'cocoapods-core'

# According to https://developer.apple.com/library/content/documentation/2DDrawing/Conceptual/DrawingPrintingiOS/LoadingImages/LoadingImages.html#//apple_ref/doc/uid/TP40010156-CH17-SW7
# Ignore some rare Windows file formats：.cur .xbm, if you want to check, please add them below.
SUPPORTED_IMAGE_FORMATS = {
    '.png' => 'PNG',

    '.tif' => 'TIFF',
    '.tiff' => 'TIFF',

    '.jpg' => 'JPEG',
    '.jpeg' => 'JPEG',

    '.git' => 'GIF',

    '.bmp' => 'PC bitmap',
    '.bmpf' => 'PC bitmap',

    '.ico' => 'MS Windows icon'
}

module Fastlane
  module Actions
    class AssetsValidatorAction < Action
      def self.run(params)
        UI.message("The assets_validator plugin is working!")
        
        # Check the project
        Dir.chdir 'Your project workspace' do
          invalid_files = Dir['**/*'].select { |f| not asset_validator f }
          generate_report invalid_files unless invalid_files.empty?
        end
        
        # Check component assets
        # Dir.chdir 'Your component workspace' do
        #   s = Pod::Specification.from_file shared_env.component_spec_file
        #   resources_file_names = s.recursive_subspecs.append(s)
        #                              .map { |spec| analyze_spec_resource spec }
        #                              .flatten
        #
        #   invalid_files = Dir[*resources_file_names].select { |f| not asset_validator f }
        #
        #   generate_report invalid_files unless invalid_files.empty?
        # end
      end
      
      def self.analyze_spec_resource(spec)
        consumer = spec.consumer(:ios)
        consumer.resource_bundles.values.select { |f| f.is_a? Array }.append(consumer.resources).flatten
      end
      
      def self.asset_validator(file_path)
        extension_format = SUPPORTED_IMAGE_FORMATS[File.extname(file_path).downcase]
        if extension_format.present?
          `file -b #{file_path}`.start_with? extension_format
        else
          true
        end
      end
      
      def self.generate_report(invalid_files)
        result = invalid_files.join "\n"
        detail = "The invalid assets: \n#{result}"
        
        raise detail
      end

      def self.description
        "iOS project assets validator"
      end

      def self.authors
        ["zesming"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Check the iOS project asset files validation"
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        [:ios, :mac].include? platform
      end
    end
  end
end
