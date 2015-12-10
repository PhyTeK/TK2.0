require 'tk'

for in (0..4) do
    grid [button .b$i -text "Button $i" -command "runMyProc $i"]
end
