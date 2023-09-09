local icons = require('nonicons')
local fontpath = '~/.local/share/fonts/nonicons.ttf';
if not vim.loop.fs_stat(fontpath) then
  vim.fn.system({
    "wget",
    "https://github.com/yamatsum/nonicons/raw/master/dist/nonicons.ttf",
    "-O " .. fontpath,
  })
end

return {
    'nvim-tree/nvim-web-devicons',
    opts = {
        override = {
            ["svg"] = {
              icon = icons("image"),
              color = "#FFB13B",
              name = "Svg"
            },
            ["log"] = {
              icon = icons("log"),
              color = "#31B53E",
              name = "Log"
            },
            ["commit_editmsg"] = {
              icon = icons("git-commit"),
              color = "#F14C28",
              name = "GitLogo"
            },
            ["git"] = {
              icon = icons("git-commit"),
              color = "#F14C28",
              name = "GitLogo"
            },
            [".gitattributes"] = {
              icon = icons("git-commit"),
              color = "#41535b",
              name = "GitAttributes"
            },
            [".gitconfig"] = {
              icon = icons("gear"),
              color = "#41535b",
              name = "GitConfig"
            },
            [".editorconfig"] = {
              icon = icons("gear"),
              color = "#41535b",
              name = "EditorConfig"
            },
            [".gitignore"] = {
              icon = icons("git-commit"),
              color = "#41535b",
              name = "GitIgnore"
            },
            [".gvimrc"] = {
              icon = icons("vim"),
              color = "#019833",
              name = "Gvimrc"
            },
            [".npmignore"] = {
              icon = icons("npm"),
              color = "#E8274B",
              name = "NPMIgnore"
            },
            [".vimrc"] = {
              icon = icons("vim"),
              color = "#019833",
              name = "Vimrc"
            },
            [".zshrc"] = {
              icon = icons("terminal"),
              color = "#89e051",
              name = "Zshrc"
            },
            ["docker-compose.yml"] = {
              icon = icons("docker"),
              color = "#384d54",
              name = "Dockerfile"
            },
            ["Dockerfile"] = {
              icon = icons("docker"),
              color = "#384d54",
              name = "Dockerfile"
            },
            ["Gemfile$"] = {
              icon = icons("ruby"),
              color = "#701516",
              name = "Gemfile"
            },
            ["LICENSE"] = {
              icon = icons("file-badge"),
              color = "#d0bf41",
              name = "License"
            },
            [".bash_profile"] = {
              icon = icons("terminal"),
              color = "#89e051",
              name = "Bash"
            },
            [".zprofile"] = {
              icon = icons("terminal"),
              color = "#89e051",
              name = "Bash"
            },
            ["bash"] = {
              icon = icons("terminal"),
              color = "#89e051",
              name = "Bash"
            },
            ["c"] = {
              icon = icons("c"),
              color = "#599eff",
              name = "C"
            },
            ["c++"] = {
              icon = icons("c-plusplus"),
              color = "#f34b7d",
              name = "CPlusPlus"
            },
            ["cc"] = {
              icon = icons("c-plusplus"),
              color = "#f34b7d",
              name = "CPlusPlus"
            },
            ["conf"] = {
              icon = icons("gear"),
              color = "#6d8086",
              name = "Conf"
            },
            ["cp"] = {
              icon = icons("c-plusplus"),
              color = "#519aba",
              name = "Cp"
            },
            ["cpp"] = {
              icon = icons("c-plusplus"),
              color = "#519aba",
              name = "Cpp"
            },
            ["css"] = {
              icon = icons("css"),
              color = "#563d7c",
              name = "Css"
            },
            ["dart"] = {
              icon = icons("dart"),
              color = "#03589C",
              name = "Dart"
            },
            ["db"] = {
              icon = icons("database"),
              color = "#dad8d8",
              name = "Db"
            },
            ["dockerfile"] = {
              icon = icons("docker"),
              color = "#384d54",
              name = "Dockerfile"
            },
            ["fish"] = {
              icon = icons("terminal"),
              color = "#4d5a5e",
              name = "Fish"
            },
            ["go"] = {
              icon = icons("go"),
              color = "#519aba",
              name = "Go"
            },
            ["htm"] = {
              icon = icons("html"),
              color = "#e34c26",
              name = "Htm"
            },
            ["html"] = {
              icon = icons("html"),
              color = "#e34c26",
              name = "Html"
            },
            ["ico"] = {
              icon = icons("image"),
              color = "#cbcb41",
              name = "Ico"
            },
            ["java"] = {
              icon = icons("java"),
              color = "#cc3e44",
              name = "Java"
            },
            ["jpeg"] = {
              icon = icons("image"),
              color = "#a074c4",
              name = "Jpeg"
            },
            ["jpg"] = {
              icon = icons("image"),
              color = "#a074c4",
              name = "Jpg"
            },
            ["js"] = {
              icon = icons("javascript"),
              color = "#cbcb41",
              name = "Js"
            },
            ["json"] = {
              icon = icons("json"),
              color = "#cbcb41",
              name = "Json"
            },
            ["jsx"] = {
              icon = icons("react"),
              color = "#519aba",
              name = "Jsx"
            },
            ["license"] = {
              icon = icons("file-badge"),
              color = "#cbcb41",
              name = "License"
            },
            ["lua"] = {
              icon = icons("lua"),
              color = "#51a0cf",
              name = "Lua"
            },
            ["makefile"] = {
              icon = icons("terminal"),
              color = "#6d8086",
              name = "Makefile"
            },
            ["markdown"] = {
              icon = icons("markdown"),
              color = "#519aba",
              name = "Markdown"
            },
            ["md"] = {
              icon = icons("markdown"),
              color = "#519aba",
              name = "Md"
            },
            ["mdx"] = {
              icon = icons("markdown"),
              color = "#519aba",
              name = "Mdx"
            },
            ["node_modules"] = {
              icon = icons("npm"),
              color = "#E8274B",
              name = "NodeModules"
            },
            ["php"] = {
              icon = icons("php"),
              color = "#a074c4",
              name = "Php"
            },
            ["pl"] = {
              icon = icons("perl"),
              color = "#519aba",
              name = "Pl"
            },
            ["png"] = {
              icon = icons("image"),
              color = "#a074c4",
              name = "Png"
            },
            ["py"] = {
              icon = icons("python"),
              color = "#3572A5",
              name = "Py"
            },
            ["pyc"] = {
              icon = icons("python"),
              color = "#519aba",
              name = "Pyc"
            },
            ["pyd"] = {
              icon = icons("python"),
              color = "#519aba",
              name = "Pyd"
            },
            ["pyo"] = {
              icon = icons("python"),
              color = "#519aba",
              name = "Pyo"
            },
            ["r"] = {
              icon = icons("r"),
              color = "#358a5b",
              name = "R"
            },
            ["rake"] = {
              icon = icons("ruby"),
              color = "#701516",
              name = "Rake"
            },
            ["rakefile"] = {
              icon = icons("ruby"),
              color = "#701516",
              name = "Rakefile"
            },
            ["rb"] = {
              icon = icons("ruby"),
              color = "#701516",
              name = "Rb"
            },
            ["rs"] = {
              icon = icons("rust"),
              color = "#dea584",
              name = "Rs"
            },
            ["rss"] = {
              icon = icons("rss"),
              color = "#FB9D3B",
              name = "Rss"
            },
            ["scala"] = {
              icon = icons("scala"),
              color = "#cc3e44",
              name = "Scala"
            },
            ["sh"] = {
              icon = icons("terminal"),
              color = "#4d5a5e",
              name = "Sh"
            },
            ["sql"] = {
              icon = icons("database"),
              color = "#dad8d8",
              name = "Sql"
            },
            ["swift"] = {
              icon = icons("swift"),
              color = "#e37933",
              name = "Swift"
            },
            ["toml"] = {
              icon = icons("toml"),
              color = "#6d8086",
              name = "Toml"
            },
            ["ts"] = {
              icon = icons("typescript"),
              color = "#519aba",
              name = "Ts"
            },
            ["tsx"] = {
              icon = icons("react"),
              color = "#519aba",
              name = "Tsx"
            },
            ["vim"] = {
              icon = icons("vim"),
              color = "#019833",
              name = "Vim"
            },
            ["vue"] = {
              icon = icons("vue"),
              color = "#8dc149",
              name = "Vue"
            },
            ["webp"] = {
              icon = icons("image"),
              color = "#a074c4",
              name = "Webp"
            },
            ["yaml"] = {
              icon = icons("yaml"),
              color = "#6d8086",
              name = "Yaml"
            },
            ["yml"] = {
              icon = icons("yaml"),
              color = "#6d8086",
              name = "Yml"
            },
            ["zsh"] = {
              icon = icons("terminal"),
              color = "#89e051",
              name = "Zsh"
            },
            ["terminal"] = {
              icon = icons("terminal"),
              color = "#31B53E",
              name = "Terminal"
            },
            ["twig"] = {
              icon = icons("html"),
              color = "#31B53E",
              name = "Twig"
            },
            ["bat"] = {
              icon = icons("terminal"),
              color = "#31B53E",
              name = "Bat"
            },
            [".bashrc"] = {
              icon = icons("terminal"),
              color = "#31B53E",
              name = "Sh"
            },
            ["txt"] = {
              icon = icons("file"),
              color = "#31B53E",
              name = "Text"
            },
            [".env"] = {
              icon = icons("gear"),
              color = "#31B53E",
              name = "Gear"
            },
            ["ini"] = {
              icon = icons("gear"),
              color = "#31B53E",
              name = "Text"
            },
            ["cs"] = {
              icon = icons("c-sharp"),
              color = "#31B53E",
              name = "C_Sharp"
            },
            ["kts"] = {
              icon = icons("kotlin"),
              color = "#51a0cf",
              name = "Kotlin"
            },
            ["pro"] = {
              icon = icons("gear"),
              color = "#31B53E",
              name = "Gear"
            },
            ["xml"] = {
              icon = icons("code"),
              color = "#cc3e44",
              name = "XML"
            },
        },
    },
    config = function (_, opts)
        local devicons = require('nvim-web-devicons')
        devicons.setup(opts)
        devicons.set_default_icon(icons("file"), "#6d8086")
    end
}
