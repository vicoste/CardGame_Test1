var component;
var sprite;

function createSpriteObjects(x, y) {
    component = Qt.createComponent("QCard.qml");
   if (component.status == Component.Ready)
        finishCreation(x,y);
    else
        component.statusChanged.connect(finishCreation(x,y));
}

function finishCreation(a, b) {
    if (component.status == Component.Ready) {
        sprite = component.createObject(appWindow, {x: a, y: b});
        if (sprite == null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status == Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}
