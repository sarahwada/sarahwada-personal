# sarahwada-personal

1. put .bashrc, .bash_profile, .emacs in your ~/ dir
2. iterm2: open system preferences, and click "load from directory". route to this
   dir but don't overwrite to this dir
3. intellij: cp to ~/Library/Preferences/<PRODUCT><VERSION>. when first starting intellij you can't access this
   after you start intellij with the default settings, you can point the settings here.
   https://www.jetbrains.com/help/idea/exporting-and-importing-settings.html#d245166e56
   - To allow repeat execution of keyboard shortcut on hey holddown, run:
       defaults write com.jetbrains.intellij.ce ApplePressAndHoldEnabled -bool false