data modify storage ifsou:var dialog.actions append value \
    {label: "",\
     action: {\
        type: "minecraft:show_dialog",\
        dialog: ""}}

data modify storage ifsou:var dialog.actions[-1].label \
    set from storage nutlet:var list.pair.value.button_label
data modify storage ifsou:var dialog.actions[-1].action.dialog \
    set from storage nutlet:var list.pair.value.dialog