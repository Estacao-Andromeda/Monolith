### Interaction Messages

# Shown when repairing something
comp-repairable-repair = Você reparar {PROPER($target) ->
  [true] {""}
  *[false] o{" "}
}{$target} com {PROPER($tool) ->
  [true] {""}
  *[false] o{" "}
}{$tool}
