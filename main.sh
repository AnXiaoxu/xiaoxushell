#/bin/bash
#封装函数 获取新版本
function uper {
echo '获取直装,模块等新版本'
curl -o update.sh https://ghproxy.com/github.com/AriesEDGE/AriesEDGE/releases/download/Aries_sss/hack_sec.sh -#
echo '即将自动执行新版本shell文件'
source update.sh
}

#封装函数 加入电报群
function tg {
echo '即将转跳TG群聊'
am start -a android.intent.action.VIEW -d https://t.me/cnyx666666 >> /dev/null
echo 欢迎打开新世界的大门！''
}

#封装函数 功能区
function tools {
echo '即将进入功能区....'
sleep 1
curl -o iTools.sh https://ghproxy.com/github.com/AriesEDGE/AriesEDGE/releases/download/ssh/iTools.sh -#
source iTools.sh
}

#封装函数 PUBG各区服（云端）
function pubg {
echo '即将执行一键下载pubg数据，请稍后...'
sleep 1
curl -o pubgm.sh https://ghproxy.com/github.com/AriesEDGE/AriesEDGE/releases/download/Aries_sss/install_game.sh -#
source pubgm.sh
}
#封装函数 科技
function hack {
echo '科技区...'
sleep 1
curl -o hacksss.sh https://ghproxy.com/github.com/AriesEDGE/AriesEDGE/releases/download/hack/hack.sh -#
source hacksss.sh
}
#封装函数 开发日志
function log {
echo '即将查看这个小白看开发者的开发日志与更新...'
sleep 2
curl -o aries.txt https://ghproxy.com/github.com/AriesEDGE/AriesEDGE/releases/download/Aries_sss/Aries.txt -#
cat aries.txt
}
#封装函数 防封
function anti {
echo '即将进入防封区，请做好拉闸准备....'
curl -o anti.sh https://ghproxy.com/github.com/AriesEDGE/AriesEDGE/releases/download/Aries/antiban.sh -#
source anti.sh
}

#封装函数 反馈
function facebook {
echo -e '\033[31;;1m ### ▶反馈区ing... ### \033[0m'
echo ""
sleep 1
echo -e '\033[36;;1m ### ✨本反馈会收集您的手机型号，api版本等消息，请熟知，收集这些便于我修复bug，大家理解下~ ### \033[0m'
echo ""
sleep 1
echo -e '\033[32;;1m ### 请输入你的反馈（反馈以telegram API接入，需要打开vpn...) ### \033[0m'
echo ""

read fb
echo "反馈内容：${fb}。
日期：`date`。
手机信息：`cat /system/build.prop | grep "product" `。
安卓api版本：`getprop  ro.build.version.sdk` 。
设备品牌：`getprop ro.product.brand` 。
设备名称：`getprop ro.product.model`" 。>> output.txt
TOKEN=5180827122:AAGnTr8rbAPkAAjRH8j7pXl6SJkA9vM-g7o	#TG机器人token
chat_ID=901152703		#用户ID或频道、群ID
message_text=`cat output.txt`		#要发送的信息
MODE='HTML'		#解析模式，可选HTML或Markdown
URL="https://api.telegram.org/bot${TOKEN}/sendMessage"		#api接口
curl -s -X POST $URL -d chat_id=${chat_ID}  -d parse_mode=${MODE} -d text="${message_text}"  >> /dev/null
echo ""
echo -e '\033[38;;1m 🔰反馈成功~！🔰 \033[0m'
rm -rf output.txt
}






#menu菜单
echo -e '\033[31;;1m ### ▶Starting... ### \033[0m'
start=`date +%s`
start=`date +%s`
echo ""
sleep 1
echo -n "时间: "
date "+%a %d %b %Y %Z %H:%M:%S"
echo ""
echo -n "设备 : "
getprop ro.product.brand
echo ""
echo -n "设备类型 : "
getprop ro.product.model
echo ""
echo -e '\033[36;;1m ### ✨@awwwwwwesome ### \033[0m' 
echo ""
echo -e '\033[32;;1m ### 欢迎使用云脚本... ### \033[0m' 

sleep 1
echo '请输入你的选项（输入按钮在右下角的“Im”上，选择完成后回车执行）'
sleep 3
echo '1.【云模块区】一键安装直装，模块等新版本'
echo '2.【交流区】加入电报群...'
echo '3.【实用功能区】无限推特,锁设备，过验证...'
echo '4.【云客户端区(beta)】一键安装各客户端以及地图数据'
echo '5.【科技区】一键其他靠谱的科技'
echo '6.【LOG区】获取更新开发日志...'
echo '7.【防封区】安装来着网络的蜜汁防封...'
echo '8.【反馈区】有什么问题进这个区域...'

read new
case ${new} in

1)uper;;
2)tg;;
3)tools;;
4)pubg;;
5)hack;;
6)log;;
7)anti;;
8)facebook;;
*) exit 0 ;;

esac
echo -e '\033[38;;1m 🔰欢迎下次使用！🔰 \033[0m'