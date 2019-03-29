# vim: filetype=sh
# Misc unicode chars: ➜  ⚪ ⚫ ⏣ ⌬  ム
# ⌁ ⚡ ⌀ ⌔  ⌘  ⌭  ⌲ ⌿ ⍙ ⍟ ⍢ ⎊ 
# ⇝ ↪ ↬ ⇢ ⇥ ⭼ 
# ✗ ✘ 𝀘 🗙 
# 🍍 🍉 🎔 
# 🞶 🞷 🞸 🞹 🞰 🞱 🞲 🞳 🞴
# 🜲 🜰 🝄 🝋 🝎 🝩 🝥 🝂 🜺 🜱 🜍 🜅 
local char="  ⌁"
# zsh sets colors differently from bash, generally you want to put color
# commands in %{ [...] %} so the cursor does not move
# black, red, green, yellow, blue, magenta, cyan, white (1-7)
# Watson Shit Experiment {{{
WATSON_DIR="$HOME/.config/watson"
watson_status() {
	local txtred=	# Started
    local wat_status="%{$fg_no_bold[green]%}⚫" 
	# Stopped
    if [[ $(cat "$WATSON_DIR/state") == '{}' ]]; then
        wat_status="%{$fg_bold[green]%}⚪"
    fi
    echo "$wat_status""%{$reset_color%}"
}
#}}}
# Return Status and Prompt {{{
local ret_status="%(?:%{$fg_bold[yellow]%}${char}:%{$fg_bold[red]%}${char}%s)"
# Prompt
PROMPT='$(watson_status) %{$fg_bold[magenta]%}%n@%m%{$fg[cyan]%}%(5~|%-1~/…/%3~|%4~)
${ret_status}%p %{$reset_color%}'
# Right hand Prompt
#RPROMPT='%T %D'
# }}}
