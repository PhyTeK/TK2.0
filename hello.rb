require 'tk'

root = TkRoot.new { title "Hello, World!" }
TkLabel.new(root) {text 'Hello, World!' ; pack}

Tk.mainloop


