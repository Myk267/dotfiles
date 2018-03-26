#!/usr/bin/env python
config='''menu.bevelWidth: 2

menu.borderWidth: 2
menu.borderColor: {colorTo}

#menu.bullet: empty|triangle|square|diamond
menu.bullet: diamond
#menu.bullet.position: left|right
menu.bullet.position: right

menu.itemHeight: 0

menu.title: {texture}
menu.title.justify: {justify}
menu.title.color: {color}
menu.title.colorTo: {colorTo}
menu.title.textColor: {text}
menu.titleHeight: 0

menu.frame: {textureSolid}
menu.frame.justify: {justify}
menu.frame.color: {colorTo}
menu.frame.colorTo: {colorTo}
menu.frame.textColor: {text}
menu.frame.disableColor: {color}

menu.hilite: {texture}
menu.hilite.color: {color}
menu.hilite.colorTo: {colorTo}
menu.hilite.textColor: {text}

toolbar.bevelWidth: 0

toolbar.borderWidth: 0
toolbar.borderColor: black

toolbar.height: 0

toolbar: {texture}
toolbar.color: {colorTo}
toolbar.colorTo: {colorTo}

toolbar.clock: {textureSolid}
toolbar.clock.borderWidth: 2
toolbar.clock.borderColor: {colorTo}
toolbar.clock.justify: {justify}
toolbar.clock.textColor: {text}
toolbar.clock.color: {colorTo}
toolbar.clock.colorTo: {colorTo}

toolbar.systray: {textureSolid}
toolbar.systray.borderWidth: 2
toolbar.systray.borderColor: {colorTo}
toolbar.systray.color: {colorTo}
toolbar.systray.colorTo: {colorTo}

toolbar.workspace: {textureSolid}
toolbar.workspace.borderWidth: 2
toolbar.workspace.borderColor: {colorTo}
toolbar.workspace.justify: {justify}
toolbar.workspace.textColor: {textTo}
toolbar.workspace.color: {colorTo}
toolbar.workspace.colorTo: {colorTo}

toolbar.button: {textureButton}
toolbar.button.borderWidth: 2
toolbar.button.borderColor: {colorTo}
toolbar.button.picColor: {text}
toolbar.button.color: {color}
toolbar.button.colorTo: {colorTo}
toolbar.button.pressed: {textureTo}
toolbar.button.pressed.picColor: {textTo}
toolbar.button.pressed.color: {color}
toolbar.button.pressed.colorTo: {colorTo}

toolbar.iconbar.empty: {textureButton}
toolbar.iconbar.empty.color: {color}
toolbar.iconbar.empty.colorTo: {colorTo}

toolbar.iconbar.focused: {textureButton}
toolbar.iconbar.focused.borderWidth: 2
toolbar.iconbar.focused.borderColor: {colorTo}
toolbar.iconbar.focused.justify: {justify}
toolbar.iconbar.focused.textColor: {text}
toolbar.iconbar.focused.color: {color}
toolbar.iconbar.focused.colorTo: {colorTo}

toolbar.iconbar.unfocused: {textureTo}
toolbar.iconbar.unfocused.borderWidth: 2
toolbar.iconbar.unfocused.borderColor: {colorTo}
toolbar.iconbar.unfocused.justify: {justify}
toolbar.iconbar.unfocused.textColor: {textTo}
toolbar.iconbar.unfocused.color: {colorTo}
toolbar.iconbar.unfocused.colorTo: {colorTo}

window.bevelWidth: 1

window.borderWidth: 1
window.borderColor: {colorTo}

window.title.height: 0

window.justify: {justify}

window.label.focus: {texture}
window.label.focus.color: {color}
window.label.focus.colorTo: {colorTo}
window.label.focus.textColor: {text}
window.label.unfocus: {textureTo}
window.label.unfocus.color: {colorTo}
window.label.unfocus.colorTo: {colorTo}
window.label.unfocus.textColor: {textTo}

window.button.focus: {textureButton}
window.button.focus.color: {color}
window.button.focus.colorTo: {colorTo}
window.button.focus.picColor: {text}
window.button.unfocus: {textureTo}
window.button.unfocus.Color: {colorTo}
window.button.unfocus.ColorTo: {colorTo}
window.button.unfocus.picColor: {text}
window.button.pressed: {textureTo}
window.button.pressed.color: {color}
window.button.pressed.colorTo: {colorTo}
window.button.pressed.picColor: {textTo}

window.title.focus: {texture}
window.title.focus.color: {colorTo}
window.title.focus.colorTo: {colorTo}
window.title.unfocus: {textureTo}
window.title.unfocus.color: {colorTo}
window.title.unfocus.colorTo: {colorTo}

window.handleWidth: 4
window.handle.focus: {texture}
window.handle.focus.color: {colorTo}
window.handle.focus.colorTo: {colorTo}
window.handle.unfocus: {texture}
window.handle.unfocus.color: {colorTo}
window.handle.unfocus.colorTo: {colorTo}

window.grip.focus: {texture}
window.grip.focus.color: {color}
window.grip.focus.colorTo: {color}
window.grip.unfocus: {texture}
window.grip.unfocus.color: {colorTo}
window.grip.unfocus.colorTo: {colorTo}

*font: sans-12

#menu.roundCorners: TopRight TopLeft BottomRight BottomLeft
#window.roundCorners: TopRight TopLeft BottomRight BottomLeft
toolbar.shaped: false'''

print(config.format(
    text=   "#ffffff",
    textTo= "#ffffff",
    #color=  "#900090",
    color=  "#005AA3",
    colorTo="#000000",
    texture="raised gradient crossdiagonal bevel1",
    textureTo="sunken gradient pipecross interlaced",
    textureSolid="raised solid bevel1",
    textureButton="raised gradient pipecross bevel1",
    justify="left"))
