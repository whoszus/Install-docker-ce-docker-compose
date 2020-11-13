### dockerfile for files-server

FROM openresty/openresty:latest

# install lua  modules;
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-upload
RUN /usr/local/openresty/luajit/bin/luarocks install lua-cjson
RUN /usr/local/openresty/luajit/bin/luarocks install luafilesystem
RUN /usr/local/openresty/luajit/bin/luarocks install stringy
RUN /usr/local/openresty/luajit/bin/luarocks install nginx-resumable-upload



ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8
# ENV FILE_DOCUMENT NONE



# CREATE /etc/nginx/conf.g
RUN mkdir -p /etc/nginx/conf.g && mkdir -p /etc/nginx/lua

# nginx configuration; 
COPY conf/nginx-entry.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY conf/nginx-plus.conf /etc/nginx/conf.d/default.conf

# lua project 
COPY Lua/*.lua /etc/nginx/lua/
COPY Lua/lib/ /etc/nginx/lua/lib
# startup.sh 

CMD ["openresty", "-g", "daemon off;"]


