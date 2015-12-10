require 'tk'
require 'tkextlib/tile'
root = TkRoot.new

content = Tk::Tile::Frame.new(root)
frame = Tk::Tile::Frame.new(content) {borderwidth 5; relief "sunken"; width 200; height 100}
namelbl = Tk::Tile::Label.new(content) {text "Name"}
name = Tk::Tile::Entry.new(content)
$option_one = TkVariable.new( 1 )
one = Tk::Tile::CheckButton.new(content) {text "One"; variable $option_one; onvalue 1}
$option_two = TkVariable.new( 0 )
two = Tk::Tile::CheckButton.new(content) {text "Two"; variable $option_two; onvalue 1}
$option_three = TkVariable.new( 1 )
three = Tk::Tile::CheckButton.new(content) {text "Three"; variable $option_three; onvalue 1}
ok = Tk::Tile::Button.new(content) {text "Okay"}
cancel = Tk::Tile::Button.new(content) {text "Cancel"}

content.grid :column => 0, :row => 0
frame.grid :column => 0, :row => 0, :columnspan => 3, :rowspan => 2
namelbl.grid :column => 3, :row => 0, :columnspan => 2
name.grid :column => 3, :row => 1, :columnspan => 2
one.grid :column => 0, :row => 3
two.grid :column => 1, :row => 3
three.grid :column => 2, :row => 3
ok.grid :column => 3, :row => 3
cancel.grid :column => 4, :row => 3

Tk.mainloop
