local icon = require("nonicons")

return function()
  local devicons = require("nvim-web-devicons")
  devicons.set_icon {
    ["svg"] = {
      icon = icon("image"),
      color = "#FFB13B",
      name = "Svg"
    },
    ["git"] = {
      icon = icon("git-commit"),
      color = "#F14C28",
      name = "GitLogo"
    },
    [".gitattributes"] = {
      icon = icon("git-commit"),
      color = "#41535b",
      name = "GitAttributes"
    },
    [".gitconfig"] = {
      icon = icon("gear"),
      color = "#41535b",
      name = "GitConfig"
    },
    [".gitignore"] = {
      icon = icon("git-commit"),
      color = "#41535b",
      name = "GitIgnore"
    },
    [".gvimrc"] = {
      icon = icon("vim"),
      color = "#019833",
      name = "Gvimrc"
    },
    [".npmignore"] = {
      icon = icon("npm"),
      color = "#E8274B",
      name = "NPMIgnore"
    },
    [".vimrc"] = {
      icon = icon("vim"),
      color = "#019833",
      name = "Vimrc"
    },
    [".zshrc"] = {
      icon = icon("terminal"),
      color = "#89e051",
      name = "Zshrc"
    },
    ["Dockerfile"] = {
      icon = icon("docker"),
      color = "#384d54",
      name = "Dockerfile"
    },
    ["Gemfile$"] = {
      icon = icon("ruby"),
      color = "#701516",
      name = "Gemfile"
    },
    ["LICENSE"] = {
      icon = icon("file-badge"),
      color = "#d0bf41",
      name = "License"
    },
    ["bash"] = {
      icon = icon("terminal"),
      color = "#89e051",
      name = "Bash"
    },
    ["c"] = {
      icon = icon("c"),
      color = "#599eff",
      name = "C"
    },
    ["c++"] = {
      icon = icon("c-plusplus"),
      color = "#f34b7d",
      name = "CPlusPlus"
    },
    ["cc"] = {
      icon = icon("c-plusplus"),
      color = "#f34b7d",
      name = "CPlusPlus"
    },
    ["conf"] = {
      icon = icon("gear"),
      color = "#6d8086",
      name = "Conf"
    },
    ["cp"] = {
      icon = icon("c-plusplus"),
      color = "#519aba",
      name = "Cp"
    },
    ["cpp"] = {
      icon = icon("c-plusplus"),
      color = "#519aba",
      name = "Cpp"
    },
    ["css"] = {
      icon = icon("css"),
      color = "#563d7c",
      name = "Css"
    },
    ["dart"] = {
      icon = icon("dart"),
      color = "#03589C",
      name = "Dart"
    },
    ["db"] = {
      icon = icon("database"),
      color = "#dad8d8",
      name = "Db"
    },
    ["dockerfile"] = {
      icon = icon("docker"),
      color = "#384d54",
      name = "Dockerfile"
    },
    ["fish"] = {
      icon = icon("terminal"),
      color = "#4d5a5e",
      name = "Fish"
    },
    ["go"] = {
      icon = icon("go"),
      color = "#519aba",
      name = "Go"
    },
    ["htm"] = {
      icon = icon("html"),
      color = "#e34c26",
      name = "Htm"
    },
    ["html"] = {
      icon = icon("html"),
      color = "#e34c26",
      name = "Html"
    },
    ["ico"] = {
      icon = icon("image"),
      color = "#cbcb41",
      name = "Ico"
    },
    ["java"] = {
      icon = icon("java"),
      color = "#cc3e44",
      name = "Java"
    },
    ["jpeg"] = {
      icon = icon("image"),
      color = "#a074c4",
      name = "Jpeg"
    },
    ["jpg"] = {
      icon = icon("image"),
      color = "#a074c4",
      name = "Jpg"
    },
    ["js"] = {
      icon = icon("javascript"),
      color = "#cbcb41",
      name = "Js"
    },
    ["json"] = {
      icon = icon("json"),
      color = "#cbcb41",
      name = "Json"
    },
    ["jsx"] = {
      icon = icon("react"),
      color = "#519aba",
      name = "Jsx"
    },
    ["license"] = {
      icon = icon("file-badge"),
      color = "#cbcb41",
      name = "License"
    },
    ["lua"] = {
      icon = icon("lua"),
      color = "#51a0cf",
      name = "Lua"
    },
    ["makefile"] = {
      icon = icon("terminal"),
      color = "#6d8086",
      name = "Makefile"
    },
    ["markdown"] = {
      icon = icon("markdown"),
      color = "#519aba",
      name = "Markdown"
    },
    ["md"] = {
      icon = icon("markdown"),
      color = "#519aba",
      name = "Md"
    },
    ["mdx"] = {
      icon = icon("markdown"),
      color = "#519aba",
      name = "Mdx"
    },
    ["node_modules"] = {
      icon = icon("npm"),
      color = "#E8274B",
      name = "NodeModules"
    },
    ["php"] = {
      icon = icon("php"),
      color = "#a074c4",
      name = "Php"
    },
    ["pl"] = {
      icon = icon("perl"),
      color = "#519aba",
      name = "Pl"
    },
    ["png"] = {
      icon = icon("image"),
      color = "#a074c4",
      name = "Png"
    },
    ["py"] = {
      icon = icon("python"),
      color = "#3572A5",
      name = "Py"
    },
    ["pyc"] = {
      icon = icon("python"),
      color = "#519aba",
      name = "Pyc"
    },
    ["pyd"] = {
      icon = icon("python"),
      color = "#519aba",
      name = "Pyd"
    },
    ["pyo"] = {
      icon = icon("python"),
      color = "#519aba",
      name = "Pyo"
    },
    ["r"] = {
      icon = icon("r"),
      color = "#358a5b",
      name = "R"
    },
    ["rake"] = {
      icon = icon("ruby"),
      color = "#701516",
      name = "Rake"
    },
    ["rakefile"] = {
      icon = icon("ruby"),
      color = "#701516",
      name = "Rakefile"
    },
    ["rb"] = {
      icon = icon("ruby"),
      color = "#701516",
      name = "Rb"
    },
    ["rs"] = {
      icon = icon("rust"),
      color = "#dea584",
      name = "Rs"
    },
    ["rss"] = {
      icon = icon("rss"),
      color = "#FB9D3B",
      name = "Rss"
    },
    ["scala"] = {
      icon = icon("scala"),
      color = "#cc3e44",
      name = "Scala"
    },
    ["sh"] = {
      icon = icon("terminal"),
      color = "#4d5a5e",
      name = "Sh"
    },
    ["sql"] = {
      icon = icon("database"),
      color = "#dad8d8",
      name = "Sql"
    },
    ["swift"] = {
      icon = icon("swift"),
      color = "#e37933",
      name = "Swift"
    },
    ["toml"] = {
      icon = icon("toml"),
      color = "#6d8086",
      name = "Toml"
    },
    ["ts"] = {
      icon = icon("typescript"),
      color = "#519aba",
      name = "Ts"
    },
    ["tsx"] = {
      icon = icon("react"),
      color = "#519aba",
      name = "Tsx"
    },
    ["vim"] = {
      icon = icon("vim"),
      color = "#019833",
      name = "Vim"
    },
    ["vue"] = {
      icon = icon("vue"),
      color = "#8dc149",
      name = "Vue"
    },
    ["webp"] = {
      icon = icon("image"),
      color = "#a074c4",
      name = "Webp"
    },
    ["yaml"] = {
      icon = icon("yaml"),
      color = "#6d8086",
      name = "Yaml"
    },
    ["yml"] = {
      icon = icon("yaml"),
      color = "#6d8086",
      name = "Yml"
    },
    ["zsh"] = {
      icon = icon("terminal"),
      color = "#89e051",
      name = "Zsh"
    },
    ["terminal"] = {
      icon = icon("terminal"),
      color = "#31B53E",
      name = "Terminal"
    },
    ["twig"] = {
      icon = icon("html"),
      color = "#31B53E",
      name = "Twig"
    },
    ["bat"] = {
      icon = icon("terminal"),
      color = "#31B53E",
      name = "Bat"
    },
    [".bashrc"] = {
      icon = icon("terminal"),
      color = "#31B53E",
      name = "Sh"
    },
    ["txt"] = {
      icon = icon("file"),
      color = "#31B53E",
      name = "Text"
    },
    [".env"] = {
      icon = icon("gear"),
      color = "#31B53E",
      name = "Gear"
    },
    ["ini"] = {
      icon = icon("gear"),
      color = "#31B53E",
      name = "Text"
    },
    ["cs"] = {
      icon = icon("c-sharp"),
      color = "#31B53E",
      name = "C_Sharp"
    },
  }

  devicons.set_default_icon(icon("file"), "#6d8086")
end

