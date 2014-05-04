require 'ruble'

bundle do |bundle|
  bundle.display_name = 'ElfRuble'
  bundle.author = 'Charlie Calvert'
  bundle.copyright = "(c) Copyright 2013 Elvenware.com. Distributed under MIT license."
  bundle.description = 'Elvenware Ruble'
  bundle.repository = 'git@github.com:charliecalvert/ElfRuble.git'

  # Use Commands > Bundle Development > Insert Bundle Section > Menu
  # to easily add new sections
  bundle.menu 'ElfRuble' do |menu|
    menu.command 'Swap Case'
    menu.command 'Sample Snippet'
    menu.separator
    menu.menu 'Sub Menu' do |sub_menu|
        sub_menu.command 'Sample Snippet'
    end
  end
end


