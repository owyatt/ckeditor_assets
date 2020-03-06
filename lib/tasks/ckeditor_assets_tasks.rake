require 'fileutils'

namespace :ckeditor_assets do
  desc 'Create nondigest versions of all ckeditor digest assets'
  task nondigest: :environment do
    fingerprint = /\-[0-9a-f]{32,64}\./
    path = Rails.root.join("public#{CkeditorAssets.base_path}**/*")

    Dir[path].each do |file|
      next unless file =~ fingerprint
      nondigest = file.sub fingerprint, '.'

      if !File.exist?(nondigest) || File.mtime(file) > File.mtime(nondigest)
        FileUtils.cp file, nondigest, verbose: true, preserve: true
      end
    end
  end
end
