FROM docker.io/redhat/ubi8
RUN dnf install nginx -y
RUN dnf install unzip -y
RUN rm -rf /usr/share/nginx/html/*
RUN curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip
RUN cd /usr/share/nginx/html ; unzip /tmp/frontend.zip
ADD expense.conf /etc/nginx/default.d/expense.conf
ENTRYPOINT ["nginx", "-g", "daemon off;"]