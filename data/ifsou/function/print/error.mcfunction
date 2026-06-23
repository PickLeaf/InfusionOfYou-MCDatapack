data modify storage ifsou:print cmd.error \
        set value '{"translate": "ifsou.load_resourcepack",\
        "fallback": "(Missing Resource Pack)"},\
        {"translate": "ifsou.load_unexpected_version",\
        "color": "dark_red",\
        "fallback": "(Be loaded to UNEXPECTED version!)"}'