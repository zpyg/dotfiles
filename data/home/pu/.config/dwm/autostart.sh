# 壁纸
feh --no-fehbg --bg-scale "$HOME/Pictures/wallpaper.png"
# 状态栏
slstatus &

# 通知
dunst &
# 输入法
fcitx5 -d
# 网络
nm-applet &
# 代理
if [ -z $(pgrep clash) ]; then
    clash &
fi
# 剪切板
clipit &
# 邮件
# 待定 浏览器/deltachat
# 音量
volumeicon &

# 窗口合成器 透明窗口等
picom -CGb
# 调节屏幕色温
killall -w -q redshift; redshift -l 39.92:116.46 -t 5600:4000 -g 0.8 -m randr &

# 定时锁屏，休眠
xautolock -time 10 -locker slock \
    -killtime 90 -killer ~/.config/dwm/suspend.sh &
