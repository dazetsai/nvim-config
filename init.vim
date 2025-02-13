lua require('core.init')

"https://stackoverflow.com/questions/11489428/how-to-make-vim-paste-from-and-copy-to-systems-clipboard

set clipboard^=unnamed,unnamedplus
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

" Copy and paste
if has('clipboard') && !has('gui_running')
  vnoremap <C-c> "+y
  vnoremap <C-x> "+d
  vnoremap <C-v> "+p
  inoremap <C-v> <C-r><C-o>+
endif

if has('unix')
	set thesaurus+=/usr/share/dict/words
endif

if exists("g:neovide")
    " Neovide config
	let g:neovide_refresh_rate=24	" come on it's just a text editor
	let g:neovide_transparency=1.0
	let g:neovide_scroll_animation_length = 0.3
	let g:neovide_remember_window_size = v:true
	let g:neovide_input_use_logo=v:true	" the super/command/win key
	let g:neovide_input_macos_alt_is_meta=v:false
	let g:neovide_touch_deadzone=0.0
	let g:neovide_cursor_animation_length=0.05
	let g:neovide_cursor_trail_length=0.8
	let g:neovide_cursor_antialiasing=v:false	" i dont need it
	let g:neovide_cursor_vfx_mode = "wireframe"
	let g:neovide_remember_window_size = v:true
endif

autocmd FileType markdown setlocal spell

