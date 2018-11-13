module Eneroth
module ActiveLayer

  def self.select_active_layer
    model = Sketchup.active_model
    layer_names = model.layers.map(&:name).sort
    
    # Use gritty built in inputbox, rather than a more pleasantly looking
    # HtmlDialog to prevent changing active layer from feeling too welcoming.
    results = UI.inputbox(
      ["Active Layer"],
      [model.active_layer.name],
      [layer_names.join("|")],
      EXTENSION.name
    )
    return unless results
    
    model.active_layer = model.layers[results[0]]
  end
  
  unless @loaded
    @loaded = true
    
    menu = UI.menu("Plugins")
    item = menu.add_item(EXTENSION.name) { select_active_layer }
  end

end
end
