local ls = require "luasnip"

local s = ls.s

local fmt = require("luasnip.extras.fmt").fmt


local i = ls.insert_node

local rep = require("luasnip.extras").rep


ls.snippets = {
    lua = {
        s("test", fmt("local {} = require('{}')", { i(1, "default"), rep(1)})),
    },
}




