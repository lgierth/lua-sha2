package="sha2"
version="0.1.0-1"
source = {
	url = "http://sha2.googlecode.com/hg/sha2-0.1.0.zip",
	dir = "sha2",
}
description = {
	summary = "Lua binding for Aaron Gifford's SHA-2 implementation",
	detailed = [[
		Lua Binding for the SHA-2 (SHA-256/384/512) BSD-licensed C implementation by Aaron Gifford.
	]],
	homepage = "http://code.google.com/p/sha2/",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		sha2 = {
			sources = { "sha2.c", "sha2lib.c" },
			incdirs = { "." },
			defines = { "SHA2_USE_INTTYPES_H", "BYTE_ORDER", "LITTLE_ENDIAN" },
		}
	},
}

