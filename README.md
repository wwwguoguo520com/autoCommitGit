11222333ee666

# Git提交到gitHub每次都要输入用户名和密码的解决办法

说明：



    1.使用https操作gitHub才需要用户名，密码；
    
    2.使用ssh需要在gitHub上配置ssh秘钥

 





使用SSH协议传输



1)git remote rm origin

2)git remote add origin git@github.com:userName/repository.git

3)git push origin master

 

使用HTTPS协议传输



1)git remote rm origin 

2)git remote add origin https://userName:password@github.com/userName/repository.git

3)git push origin master

说明：

userName 是在 GitHub 网站上注册时使用的用户名；

repository 是为这个项目建立的仓库名。

