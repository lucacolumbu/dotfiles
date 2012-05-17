# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{bash_prompt,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

export EDITOR="vim"

# Use Git’s colored diff when available
hash git &>/dev/null
if [ $? -eq 0 ]; then
  function diff() {
    git diff --no-index --color-words "$@"
  }
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
