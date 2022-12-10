local status_ok, legendary = pcall(require, "legendary")
if not status_ok then
  return
end

legendary.setup({
 keymaps = require('user.legendary.keymap').default_keymaps(),
        commands = require('user.legendary.commands').default_commands(),
        autocmds = require('user.legendary.autocmds').default_autocmds(),
        functions = require('user.legendary.functions').default_functions(),
        col_separator_char = ' ',
        default_opts = {
          keymaps = { silent = true, noremap = true },
        },
        which_key = { auto_register = true },
})

require "user.legendary.autocmds"
require "user.legendary.commands"
require "user.legendary.functions"
require "user.legendary.keymap"


