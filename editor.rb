require 'tk'
require 'tkextlib/iwidgets'

root=TkRoot.new


content = Tk::Tile::Frame.new(root).grid

st = Tk::Iwidgets::Scrolledtext.new
st.pack(:expand=>true, :fill=>:both)

file_menu = TkMenu.new(root)

win = Tk::Toplevel.new(root)
menubartop = Tk::Menu.new(win)
win['menu'] = menubartop


def open(st)
  st.import('/tmp/test')
end


file_menu.add('command',
              'label'     => "New...",
              'command'   => proc{st.clear},
              'underline' => 0)
file_menu.add('command',
              'label'     => "Open...",
              'command'   => proc{open(st)},
              'underline' => 0)
file_menu.add('command',
              'label'     => "Exit",
              'command'   => proc{exit},
              'underline' => 1)

menu_bar = TkMenu.new

menu_bar.add('cascade',
             'menu'  => file_menu,
             'label' => "File")

root.menu(menu_bar)


Tk.mainloop
