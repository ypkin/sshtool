#!/bin/bash

# 定义可执行的命令
commands=(
    "更新系统并安装必要组件"
    "bin456789 重新安装脚本"
    "Kejilion 脚本"
    "eooce 脚本"
    "优先展示 IPv6 旗帜"
    "在 Alpine 中安装 Hysteria2 一键脚本"
    "Alpine x-ui 一键脚本"
    "流媒体检测（是否原生）"
    "甬哥 sing-box 脚本"
    "3x-ui 安装"
    "VPS 回程测试脚本"
    "甲骨文保活"
    "WARP 安装"
    "WARP Go 安装"
    "ygkkk-warp"
    "退出"
)

# 显示命令列表
while true; do
    echo "请选择要执行的命令："
    PS3="请输入选择 [1-${#commands[@]}]: "
    
    # 输出可选择的命令
    for i in "${!commands[@]}"; do
        echo -e "\033[1;35m$((i + 1)).\033[0m \033[1;32m${commands[$i]}\033[0m"
    done

    select cmd in "${commands[@]}"; do
        case $cmd in
            "更新系统并安装必要组件")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                apt update -y && apt install -y curl socat wget
                break
                ;;
            "bin456789 重新安装脚本")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                curl -O https://raw.githubusercontent.com/bin456789/reinstall/main/reinstall.sh && bash reinstall.sh
                break
                ;;
            "Kejilion 脚本")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                curl -sS -O https://kejilion.pro/kejilion.sh && chmod +x kejilion.sh && ./kejilion.sh
                break
                ;;
            "eooce 脚本")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                curl -fsSL https://raw.githubusercontent.com/eooce/ssh_tool/main/ssh_tool.sh -o ssh_tool.sh && chmod +x ssh_tool.sh && ./ssh_tool.sh
                break
                ;;
            "优先展示 IPv6 旗帜")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                bash <(curl https://raw.githubusercontent.com/xykt/Utilities/main/nezha/ipv6flag.sh)
                break
                ;;
            "在 Alpine 中安装 Hysteria2 一键脚本")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                wget -O hy2.sh https://raw.githubusercontent.com/zrlhk/alpine-hysteria2/main/hy2.sh && sh hy2.sh
                break
                ;;
            "Alpine x-ui 一键脚本")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                apk add curl bash && bash <(curl -Ls https://raw.githubusercontent.com/Lynn-Becky/Alpine-x-ui/main/alpine-xui.sh)
                break
                ;;
            "流媒体检测（是否原生）")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                bash <(curl -L -s media.ispvps.com)
                break
                ;;
            "甬哥 sing-box 脚本")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                bash <(curl -Ls https://gitlab.com/rwkgyg/sing-box-yg/raw/main/sb.sh)
                break
                ;;
            "3x-ui 安装")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
                break
                ;;
            "VPS 回程测试脚本")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                wget -N --no-check-certificate https://raw.githubusercontent.com/Chennhaoo/Shell_Bash/master/AutoTrace.sh && chmod +x AutoTrace.sh && bash AutoTrace.sh
                break
                ;;
            "甲骨文保活")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                curl -L https://gitlab.com/spiritysdx/Oracle-server-keep-alive-script/-/raw/main/oalive.sh -o oalive.sh && chmod +x oalive.sh && bash oalive.sh
                break
                ;;
            "WARP 安装")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                wget -N https://gitlab.com/fscarmen/warp/-/raw/main/menu.sh && bash menu.sh 4
                break
                ;;
            "WARP Go 安装")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                wget -N https://gitlab.com/fscarmen/warp/-/raw/main/warp-go.sh && bash warp-go.sh
                break
                ;;
            "ygkkk-warp")
                echo -e "\033[1;35m正在执行：\033[0m\033[1;32m$cmd\033[0m"
                bash <(wget -qO- https://gitlab.com/rwkgyg/CFwarp/raw/main/CFwarp.sh 2> /dev/null)
                break
                ;;
            "退出")
                echo "退出程序。"
                exit 0
                ;;
            *)
                echo "无效的选择，请重试。"
                break
                ;;
        esac
    done
done
