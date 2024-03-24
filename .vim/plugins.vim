vim9script

#=========
# Plugins
#=========

export def Setup()
  #==========================
  # Disable Standard Plugins
  #==========================

  g:did_indent_on = 1

  g:did_install_default_menus = 1

  g:did_install_syntax_menu = 1

  g:did_load_ftplugin = 1

  g:ebuild_create_on_empty = 1

  g:glep_create_on_empty = 1

  g:loaded_2html_plugin = 1

  g:loaded_gentoo_common = 1

  g:loaded_getscript = 1

  g:loaded_getscriptPlugin = 1

  g:loaded_gzip = 1

  g:loaded_logipat = 1

  g:loaded_logiPat = 1

  g:loaded_man = 1

  g:loaded_matchit = 1

  g:loaded_matchparen = 1

  g:loaded_netrw = 1

  g:loaded_netrwPlugin = 1

  g:loaded_netrwSettings = 1

  g:loaded_netrwFileHandlers = 1

  g:loaded_newebuild = 1

  g:loaded_newglep = 1

  g:loaded_newinitd = 1

  g:loaded_newmetadata = 1

  g:loaded_remote_plugins = 1

  g:loaded_rrhelper = 1

  g:loaded_shada_plugin = 1

  g:loaded_spellfile_plugin = 1

  g:loaded_tar = 1

  g:loaded_tarPlugin = 1

  g:loaded_tutor_mode_plugin = 1

  g:loaded_vimball = 1

  g:loaded_vimballPlugin = 1

  g:loaded_zip = 1

  g:loaded_zipPlugin = 1

  g:loadedzip = 1

  g:skip_loading_mswin = 1

  #========================
  # Enable filetype plugin
  #========================
  filetype plugin indent on
enddef
