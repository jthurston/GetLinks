MYSITE='http://jefftest.com:8080/webapps/html/help-page-main.html';
wget -nv -r --spider $MYSITE 2>&1
egrep ' URL:'
awk '{print $3}'
sed "s@URL:${MYSITE}@@g"
