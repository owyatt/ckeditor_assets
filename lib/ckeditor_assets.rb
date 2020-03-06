require "ckeditor_assets/engine"

module CkeditorAssets
  def self.base_path
    @base_path ||= File.join([Rails.application.config.assets.prefix, '/ckeditor/'])
  end

  def self.root_path
    @root_path ||= Pathname.new(File.dirname(File.expand_path('../', __FILE__)))
  end
end
