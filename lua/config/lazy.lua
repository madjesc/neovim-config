return {
    install = {
      -- install missing plugins on startup. This doesn't increase startup time.
      missing = true,
      -- try to load one of these colorschemes when starting an installation during startup
      colorscheme = { 'material-darker' },
    },
    ui = {
      border = 'shadow',
      icons = {
        cmd = require('nonicons')('command-palette'),
        config = require('nonicons')('gear'),
        event = require('nonicons')('calendar'),
        ft = require('nonicons')('file-code'),
        init = require('nonicons')('tools'),
        import = require('nonicons')('package-dependencies'),
        keys = require('nonicons')('key'),
        lazy = require('nonicons')('stopwatch') .. ' ',
        loaded = require('nonicons')('package'),
        not_loaded = require('nonicons')('diamond'),
        plugin = require('nonicons')('plug'),
        runtime = require('nonicons')('rocket'),
        source = require('nonicons')('code'),
        start = require('nonicons')('gear'),
        task = require('nonicons')('zap'),
        list = {
          require('nonicons')('dot-fill'),
          require('nonicons')('chevron-right'),
          require('nonicons')('star-fill'),
          require('nonicons')('trash'),
        },
      },
    }
  };
