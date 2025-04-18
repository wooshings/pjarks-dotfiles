-- Run Commands

local function new_run_command(cmd, lang, desc)
	if desc == nil then
		desc = "Run script"
	end

	local group = vim.api.nvim_create_augroup("RunScript_" .. lang, { clear = true })

	vim.api.nvim_create_autocmd("FileType", {
		pattern = lang,
		group = group,
		callback = function()
			vim.keymap.set("n", "<leader>vv", function()
				vim.cmd("terminal " .. cmd)
			end, {
				desc = desc,
				buffer = true,
				silent = true,
			})
		end,
	})
end

-- Add new run commands
-- Run scripts or projects using <leader>vv
-- new_run_command(<shell command>, <language>, <description)

new_run_command("go run .", "go", "Run Go Project")
new_run_command("cargo run", "rust", "Cargo run")
new_run_command("python3 main.py", "python", "Run Python Project")
new_run_command("dotnet run", "csharp", "Run Dotnet Project")
