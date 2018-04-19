# IdentityServerApi
IdentityServerApi

1. In main.go, please config your database as below

orm.RegisterDataBase("default", "mysql", "root:root@tcp(127.0.0.1:3306)/identityserver")

2. cd IdentityServerApi to make sure that your command window current path is your project' root path.

   then run "bee run watchall true"

   As below image show:

3. open http://localhost:8091/swagger/, you could see all the api document.

   As below image show: