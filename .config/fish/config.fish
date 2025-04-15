if status is-interactive
	# Commands to run in interactive sessions can go here
	export PATH="$PATH:$HOME/.local/bin:$HOME/.local/sbin:$HOME/.local/share/flatpak/exports/bin:$HOME/.local/share/JetBrains/Toolbox/scripts:$HOME/.deno/bin:$HOME/.cargo/bin"
	export TERM="xterm"
end

# Remove below if you dont want a hostname alias
function fish_prompt
	set -l cyan (set_color cyan)
	set -l blue (set_color blue)
	set -l yellow (set_color yellow)
	set -l reset (set_color normal)

	echo -n $cyan(whoami)$reset"@"$blue"archlinux"$reset" "$yellow(prompt_pwd)$reset"> "
end
