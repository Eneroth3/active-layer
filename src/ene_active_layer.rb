require 'extensions.rb'

# Eneroth Extensions
module Eneroth

# Eneroth Active Layer
module ActiveLayer

  path = __FILE__
  path.force_encoding("UTF-8") if path.respond_to?(:force_encoding)

  PLUGIN_ID = File.basename(path, ".*")
  PLUGIN_DIR = File.join(File.dirname(path), PLUGIN_ID)

  EXTENSION = SketchupExtension.new(
    "Eneroth Active Layer",
    File.join(PLUGIN_DIR, "main")
  )
  EXTENSION.creator     = "Eneroth3"
  EXTENSION.description =
    "Wishing for SketchUp to remove the active layer control."
  EXTENSION.version     = "1.0.1"
  EXTENSION.copyright   = "2018, #{EXTENSION.creator}"
  Sketchup.register_extension(EXTENSION, true)

end
end
