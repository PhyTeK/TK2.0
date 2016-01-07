

require 'tk'

root = TkRoot.new { title "Hello, World!" }

content = Tk::Tile::Frame.new(root) {padding "3 3 3 3"}.grid(:sticky => 'nsew')

TkGrid.columnconfigure root, 0, :weight => 1
TkGrid.rowconfigure root, 0, :weight => 1

Tk::Tile::Label.new(content) {text "(0,0)"}.grid( :column => 0, :row => 0, :sticky => 'we');
Tk::Tile::Label.new(content) {text "(1,1)"}.grid( :column => 1, :row => 1, :sticky => 'we');
Tk::Tile::Label.new(content) {text "(1,0)"}.grid( :column => 0, :row => 1, :sticky => 'we');
Tk::Tile::Label.new(content) {text "(2,2)"}.grid( :column => 2, :row => 2, :sticky => 'we');
Tk::Tile::Label.new(content) {text "(3,3)"}.grid( :column => 3, :row => 3, :sticky => 'we');




Tk.mainloop