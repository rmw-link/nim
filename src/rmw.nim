import sugar

# sugar provides a "->" macro that simplifies writing type
# declarations, e.x. (char) -> char
proc map(str: string, fun: (char) -> char): string =
  for c in str:
    result &= fun(c)

# sugar also provides a "=>" macro for the actual lambda value
echo "foo".map((c) => char(ord(c) + 1))


import rmwpkg/submodule

when isMainModule:
  echo(getWelcomeMessage())
