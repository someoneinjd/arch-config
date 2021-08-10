let g:config_root_path = stdpath('config') . '/' . 'config/'
command! -nargs=1 LoadScript exec 'source ' . g:config_root_path . '<args>'

"base config
LoadScript base.vim

"vim-plug
call plug#begin(stdpath('data') . '/plugged')
LoadScript plugin_list.vim
call plug#end()

"plugin config
LoadScript theme.vim
LoadScript keymap.vim
LoadScript plugin_config/airline.vim
LoadScript plugin_config/explorer.vim
