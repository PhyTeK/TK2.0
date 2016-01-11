#
002 # menubar sample 1 : use frame and menubuttons
003 #
004
005 require 'tk'
006
007 radio_var = TkVariable.new('y')
008
009 menu_spec = [
    010   [['File', 0],
           011     {:label=>'Open', :command=>proc{puts('Open clicked')}, :underline=>0},
    012     '---',
    013     ['Check_A', TkVariable.new(true), 6],
    014     {:type=>'checkbutton', :label=>'Check_B',
             015                 :variable=>TkVariable.new, :underline=>6},
    016     '---',
    017     ['Radio_X', [radio_var, 'x'], 6, '', {:foreground=>'black'}],
    018     ['Radio_Y', [radio_var, 'y'], 6],
    019     ['Radio_Z', [radio_var, 'z'], 6],
    020     '---',
    021     ['cascade', [
    022                    ['sss', proc{p 'sss'}, 0],
    023                    ['ttt', proc{p 'ttt'}, 0],
    024                    ['uuu', proc{p 'uuu'}, 0],
    025                    ['vvv', proc{p 'vvv'}, 0],
    026                 ],
    027       0, '',
    028       {:font=>'Courier 16 italic',
               029        :menu_config=>{:font=>'Times -18 bold', :foreground=>'black'}}],
    030     '---',
    031     ['Quit', proc{exit}, 0]],
    032
033   [['Edit', 0],
       034     ['Cut', proc{puts('Cut clicked')}, 2],
    035     ['Copy', proc{puts('Copy clicked')}, 0],
    036     ['Paste', proc{puts('Paste clicked')}, 0]],
    037
038   [['Help', 0, {:menu_name=>'help'}],
       039     ['About This', proc{puts('Ruby/Tk menubar sample 1')}, 6]]
040 ]
041
042 menubar = TkMenubar.new(nil, menu_spec,
                            043                        'tearoff'=>false,
044                        'foreground'=>'grey40',
    045                        'activeforeground'=>'red',
    046                        'font'=>'Helvetia 12 bold')
047 menubar.pack('side'=>'top', 'fill'=>'x')
048
049 TkText.new(:wrap=>'word').pack.insert('1.0', 'Please read the sample source, and check how to override default configure options of menu entries on a menu_spec. Maybe, on windows, this menubar does not work properly about keyboard shortcuts. Then, please use "menu" option of root/toplevel widget (see sample/menubar2.rb).')
050
051 Tk.mainloop