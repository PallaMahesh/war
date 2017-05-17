#jar -xvf sample.war
jar -cvf sample.war hello.jsp images/ index.html  META-INF/ WEB-INF/
rm -rf images/ index.html  META-INF/ WEB-INF/ hello.jsp
git add .
git commit -m "Version 5"
git push -u origin master
curl -H "Accept: application/json" -d roles="appserver" -d secretkey="replacethiswithsomethingbetter" -k http://34.250.152.1:8080/hook/deploy
