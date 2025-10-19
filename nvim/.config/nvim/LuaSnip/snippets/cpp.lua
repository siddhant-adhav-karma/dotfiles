local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("cppbase", {
    t({
      "#include <bits/stdc++.h>",
      "",
      "using namespace std;",
      "",
      "int main() {",
      "\tios_base::sync_with_stdio(false);",
      "\tcin.tie(NULL);",
      "",
      "\t#ifndef ONLINE_JUDGE",
      "\t\tfreopen(\"input.txt\", \"r\", stdin);",
      "\t\tfreopen(\"output.txt\", \"w\", stdout);",
      "\t#endif",
      "",
      "\t",
    }),
    i(0), -- cursor position after expansion
    t({
      "",
      "\treturn 0;",
      "}",
      "",
    }),
  }),
}
