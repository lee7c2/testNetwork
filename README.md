# textNetwork

## 简介
可用于多线激光雷达网络测试，如雷达发生断流情况，其中一部分原因是网络问题。可以使用pingSingle.sh脚本检测（间隔时间可以自己调整，超时会生成ping_failure.log文件），还有一种情况是多线雷达直连电脑时，握手速率低于1000M会停发数据包（可以运行testSpeed.sh脚本，检测到速率改变就会生成条目在ping_failure.log文件）

## 使用方法
**使用前先打开.sh文件配置ip，记得给文件赋777权限在运行**

### pingSingle.sh配置示例
col 3：改成检测物ip
`ip_address="192.168.1.201"`


col 12：设置延迟时间(目前是0.5秒)
`sleep 0.5`

保存，运行`./pingSingle.sh`不要关闭终端

### testSpeed.sh配置示例
col 4：改成正确网卡名称
`interface="eth0"`


col 5:改成检测物ip
`ip_address="192.168.1.200"`


col 20：设置延迟时间(目前是0.5秒)
`sleep 0.5`


保存，运行`./testSpeed.sh`不要关闭终端

### 查看报错文件
脚本正常运行时，遇到断ping，或者网卡握手速率改变就是写入ping_failure.log文件

>[2024-09-18 11:33:14] Network interface lo speed is less than 1000M. Current speed: .
>
>[2024-09-18 11:33:14] Network interface lo speed is less than 1000M. Current speed: .
>
>[2024-09-18 11:33:15] Network interface lo speed is less than 1000M. Current speed: .
>
>[2024-09-18 11:33:15] Network interface lo speed is less than 1000M. Current speed: .

这里记录的时间是你系统时间
