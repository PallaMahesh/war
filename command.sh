#jar -xvf sample.war
jar -cvf sample.war hello.jsp images/ index.html  META-INF/ WEB-INF/
rm -rf images/ index.html  META-INF/ WEB-INF/ hello.jsp
git add .
git commit -m "Version 4"
git push -u origin master

