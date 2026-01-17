import Quickshell

ShellRoot {
	PanelWindow {
		id: panelWindow
		anchors {
			left: true
			top: true
			right: true
		}
		implicitHeight: 40
		// Left
		// Center
		Clock {}
		// Right
		SystemControls {}
		
		PopupWindow {
			id: popupWindow
			anchor.window: panelWindow
			anchor.rect.x: parentWindow.width / 2 - width / 2
			anchor.rect.y: parentWindow.height
			width: 500
			height: 500
			visible: false
		}
	}
}