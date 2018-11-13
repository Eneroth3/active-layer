SketchUp Layers aren't layers in the sense most other software use the term. SketchUp Layers aren't places you can separate objects into, but tags you attach to objects. If you draw a rectangle with Layer0, hide Layer0 and draw another overlapping rectangle with Layer1 their geometry will merge, and moving the second one will morph the first one into unrecognizable nonsense.

To separate objects in SketchUp, use groups and components. Layers are then typically applied to these groups and components to categorize them and control their visibility on a global level. For instance you can use it to hide all furniture, regardless of where in the model hierarchy it happens to be. Groups and components define this hierarchy, layers are global tags.

Thinking of SketchUp layers as... well... layers is extremely common among new users, and leads to hundredas of hours of wasted frustration.

This extension is written with the hope that the ability to change active layer will be removed from SketchUp's UI. If you consider yourself being a power user that knows exactly what you are doing, and have some specific use case where it can be excusable to change the active layer, you can use this extension. But typically you shouldn't!