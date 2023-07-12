# sarahwada-personal
- install brew (if needed)
- brew install emacs
- put .bashr.c, .bash_profile, .emacs, .useful_commands, .zshrc in your ~/ dir
- put emacs-aliases in ~/.emacs.d/
- iterm2: open system preferences, and click "load from directory". route to this
   dir but don't overwrite to this dir
- intellij: cp to ~/Library/Preferences/<PRODUCT><VERSION>. when first starting intellij you can't access this
   after you start intellij with the default settings, you can point the settings here.
   https://www.jetbrains.com/help/idea/exporting-and-importing-settings.html#d245166e56
   - To allow repeat execution of keyboard shortcut on hey holddown, run:
       defaults write com.jetbrains.intellij.ce ApplePressAndHoldEnabled -bool false
   - put vmoptions in "/Applications/IntelliJ\ IDEA\ CE.app/Contents/bin/idea.vmoptions"

# laptop setup
- Configure keyboard:
  - Modifier Keys: remap cmd->ctrl and ctrl->cmd
  - "Key repeat rate", "Delay until repeat": fastest settings
- Sound
  - Disable sound effects for "Play sound on startup", "Play user interface sound effects", etc
  - Set "Alert volumne" to 0

# zsh setup
- install zsh via brew, oh my zsh
- put zsh/.aliases in ~/.oh-my-zsh/custom/

# git setup:
- > git config --global core.editor "emacs -nw"