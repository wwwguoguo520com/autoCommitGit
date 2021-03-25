打开“计划任务”，点击“任务计划程序库”，创建文件夹

![img](win10%20%E8%AE%A1%E5%88%92%E4%BB%BB%E5%8A%A1%E4%B8%AD%E5%8A%A0%E5%85%A5bat%E6%96%87%E4%BB%B6%E6%89%A7%E8%A1%8C.assets/20180709173322654)

在“常规”中，勾上“使用最高权限运行”，修改“配置”

![img](win10%20%E8%AE%A1%E5%88%92%E4%BB%BB%E5%8A%A1%E4%B8%AD%E5%8A%A0%E5%85%A5bat%E6%96%87%E4%BB%B6%E6%89%A7%E8%A1%8C.assets/2018070917370822)

点击“触发器”，设置“开始任务”，再进行“高级设置”

![img](win10%20%E8%AE%A1%E5%88%92%E4%BB%BB%E5%8A%A1%E4%B8%AD%E5%8A%A0%E5%85%A5bat%E6%96%87%E4%BB%B6%E6%89%A7%E8%A1%8C.assets/20180709173826897)

点击“操作”，设置“程序或脚本”和“添加参数”（2者都是bat的文件目录），设置“起始于”（为bat的根目录）

![img](win10%20%E8%AE%A1%E5%88%92%E4%BB%BB%E5%8A%A1%E4%B8%AD%E5%8A%A0%E5%85%A5bat%E6%96%87%E4%BB%B6%E6%89%A7%E8%A1%8C.assets/20180709174107234)

完成

也可以使用 cmd 命令快速创建 任务



> schtasks /create /sc minute /mo 5 /tn "自动更新-git" /tr "D:\run.vbs"

**参数说明：**

schtasks /create：固定写法

/sc minute，/sc就指这条schtasks的类型。minute是分钟的意思，就是分钟类型，类型有很多，每小时每天每个月，具体的自己看文档。
/mo 5，/mo就是运行的频率，5就是每5分钟运行一次，假如/sc类型是hourly，就是每5个小时运行一次。
/tn "自动更新-git",/tn就是给这个计划任务取个名字。随意写
/tr "D:\XXXX.bat",/tr就是你要运行的路径，其实只要把创建的bat完整路径贴过来即可。





# 遇到问题解决：

# Windows里bat文件手动点击可以执行，但在计划任务里却无法执行？

通过上面的教程测试 定时任务 无法执行vbs脚本，可以按照下面的配置，亲测可以



![image-20210324175018832](win10%20%E8%AE%A1%E5%88%92%E4%BB%BB%E5%8A%A1%E4%B8%AD%E5%8A%A0%E5%85%A5bat%E6%96%87%E4%BB%B6%E6%89%A7%E8%A1%8C.assets/image-20210324175018832.png)

在起始于后边填上这个[bat文件](https://www.baidu.com/s?wd=bat文件&tn=SE_PcZhidaonwhc_ngpagmjz&rsv_dl=gh_pc_zhidao)所在的目录，

编辑任务把批处理文件的起始位置加上，如：在d:\aa.bat，那么起始位置就是：d:\ 

注：路径中不能有引号 。

如果是账户权限的问题，在常规里勾选上最高权限。

![image-20210324175432856](win10%20%E8%AE%A1%E5%88%92%E4%BB%BB%E5%8A%A1%E4%B8%AD%E5%8A%A0%E5%85%A5bat%E6%96%87%E4%BB%B6%E6%89%A7%E8%A1%8C.assets/image-20210324175432856.png)