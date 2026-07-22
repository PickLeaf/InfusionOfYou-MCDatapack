$execute if items entity $(UUID) weapon.mainhand \
    *[minecraft:enchantments~$(enchantments)] \
    run return fail
return 1