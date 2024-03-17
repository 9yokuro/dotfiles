vim9script

# Plugins
export def DisableBuiltinPlugins()
  const plugins = [
    "did_indent_on",
    "did_install_default_menus",
    "did_install_syntax_menu",
    "did_load_ftplugin",
    "ebuild_create_on_empty",
    "glep_create_on_empty",
    "loaded_2html_plugin",
    "loaded_gentoo_common",
    "loaded_getscript",
    "loaded_getscriptPlugin",
    "loaded_gzip",
    "loaded_logipat",
    "loaded_logiPat",
    "loaded_man",
    "loaded_matchit",
    "loaded_matchparen",
    "loaded_netrw",
    "loaded_netrwPlugin",
    "loaded_newebuild",
    "loaded_newglep",
    "loaded_newinitd",
    "loaded_newmetadata",
    "loaded_remote_plugins",
    "loaded_rrhelper",
    "loaded_shada_plugin",
    "loaded_spellfile_plugin",
    "loaded_tar",
    "loaded_tarPlugin",
    "loaded_tutor_mode_plugin",
    "loaded_vimball",
    "loaded_vimballPlugin",
    "loaded_zip",
    "loaded_zipPlugin",
    "loadedzip",
    "skip_loading_mswin",
  ]

  for plugin in plugins
    execute "g:" .. plugin .. " = 1"
  endfor
enddef

export def All()
  DisableBuiltinPlugins()
enddef
