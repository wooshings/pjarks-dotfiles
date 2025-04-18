export EDITOR="/usr/local/bin/nvim"
export DOTNET_ROOT="/usr/local/share/dotnet"
alias py="python3"
alias pip="python3 -m pip"
alias border="sh border"
alias lvim="~/.local/bin/lvim"
eval "$(starship init zsh)"

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
