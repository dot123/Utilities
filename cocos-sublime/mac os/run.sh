killall HelloLua-desktop

rm -rf /Users/当前用户名/Documents/HelloLua/runtime/mac/HelloLua-desktop.app/Contents/Resources/src
rm -rf /Users/当前用户名/Documents/HelloLua/runtime/mac/HelloLua-desktop.app/Contents/Resources/res
cp -rf /Users/当前用户名/Documents/HelloLua/res "/Users/当前用户名/Documents/HelloLua/runtime/mac/HelloLua-desktop.app/Contents/Resources"
cp -rf /Users/当前用户名/Documents/HelloLua/src "/Users/当前用户名/Documents/HelloLua/runtime/mac/HelloLua-desktop.app/Contents/Resources"

open -a /Users/当前用户名/Documents/HelloLua/runtime/mac/HelloLua-desktop.app
