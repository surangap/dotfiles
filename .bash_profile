# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export LSCOLORS="CXfxcxdxbxegedabagacad"; 
source ~/.bashrc

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
# for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
for file in ~/.{path,bash_prompt,exports,aliases,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

. "$HOME/.cargo/env"

# Case-insensitive globbing (used in pathname expansion)
# shopt -s nocaseglob;
#
# # Append to the Bash history file, rather than overwriting it
# shopt -s histappend;
#
# # Autocorrect typos in path names when using `cd`
# shopt -s cdspell;
#
# # Enable some Bash 4 features when possible:
# # * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# # * Recursive globbing, e.g. `echo **/*.txt`
# # for option in autocd globstar; do
# # 	shopt -s "$option" 2> /dev/null;
# # done;
#
# # Add tab completion for many Bash commands
# if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
# 	# Ensure existing Homebrew v1 completions continue to work
# 	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
# 	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
# elif [ -f /etc/bash_completion ]; then
# 	source /etc/bash_completion;
# fi;
#
# # Enable tab completion for `g` by marking it as an alias for `git`
# if type _git &> /dev/null; then
# 	complete -o default -o nospace -F _git g;
# fi;
#
# # Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
# [ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;
#
# # Add tab completion for `defaults read|write NSGlobalDomain`
# # You could just use `-g` instead, but I like being explicit
# complete -W "NSGlobalDomain" defaults;
#
# # Add `killall` tab completion for common apps
# complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/SP/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/SP/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/SP/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/SP/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

