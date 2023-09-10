local icons = require("devicons")

local override_names = {
	-- Languages
	["lang-r"] = { "r" },
	["lang-c"] = { "c" },
	["lang-go"] = { "go" },
	["lang-css"] = { "css" },
	["lang-elm"] = { "elm" },
	["lang-php"] = { "php", "phtml", ".phtml" },
	["lang-java"] = { "java", ".jar" },
	["lang-lua"] = { "lua" },
	["lang-json"] = { "json", "jsonc", "json5" },
	["lang-kotlin"] = { "kotlin", "kt", "kts" },
	["lang-vue"] = { "vue" },
	["lang-dart"] = { "dart" },
	["lang-perl"] = { "perl", "pl" },
	["lang-rust"] = { "rust", "rs" },
	["lang-yaml"] = { "yaml", ".yml", ".yaml" },
	["lang-toml"] = { "toml" },
	["lang-react"] = { "javascriptreact", "javascript.jsx", "rsx", "tsx", "typescriptreact" },
	["lang-swift"] = { "swift" },
	["lang-elixir"] = { "elixir", "ex" },
	["lang-prisma"] = { "prisma" },
	["lang-python"] = { "python", "py" },
	["lang-svelte"] = { "svelte", "svelte.config.js" },
	["lang-c-sharp"] = { "cs", "c#" },
	["lang-graphql"] = { "gql", "graphql" },
	["lang-terraform"] = { "tf", "terraform" },
	["lang-javascript"] = { "js", "javascript" },
	["lang-typescript"] = { "ts", "typescript" },
	["lang-babel"] = { "babel", ".babelrc" },
	["lang-c-plusplus"] = { "c++", "cpp", "cc", "h", ".h" },
	["lang-node"] = { "node_modules" },
	["lang-npm"] = { "package.json", "package-lock.json", ".npmignore", ".npmrc" },
	["lang-nginx"] = { "nginx", ".nginx" },
	-- CI
	["ci-docker"] = {
		"dockerfile",
		"containerfile",
		"docker-compose.yml",
		"docker-compose.yaml",
		".dockerignore",
	},

	-- Others
	["eslint"] = { ".eslintrc" },
	["file-binary"] = { "exe", ".exe", ".out", "out", "binary" },
	["file-code"] = { "xml", "svg" },
	["vim"] = { "vim", ".gvimrc", ".vimrc", "_gvimrc", "_vimrc" },
	["terminal"] = { "terminal", "bash", "zsh" },
	["video"] = { ".mov", ".mp4", ".mvk", ".ogg" },
	["image"] = { "jpeg", "jpg", "ico", "png", "webp" },
	["ruby"] = { "ruby", "erb", "rb", "eruby" },
	["git-merge"] = { ".gitignore", ".gitattributes", ".gitconfig", ".gitmodules" },
	["mark-github"] = { ".github" },
	["database"] = { ".sql", "sql" },
	["gear"] = { "config", ".env", ".ini", ".cnf" },
}

return {
	"nvim-tree/nvim-web-devicons",
	config = function(_, opts)
		local web_devicons = require("nvim-web-devicons")
		web_devicons.setup(opts)
		web_devicons.set_default_icon(icons("file"))
		local override = {}

		for key, value in pairs(override_names) do
			for _, name in pairs(value) do
				override[name] = { icon = icons(key) }
			end
		end

		for key, value in pairs(web_devicons.get_icons()) do
			if override[key] ~= nil then
				override[key] = vim.tbl_extend("force", value, override[key])
			else
				override[key] = web_devicons.get_default_icon()
			end
		end
		web_devicons.set_icon(override)
	end,
}
