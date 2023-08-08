# This dockerfile user the ubuntu image
# VERSION 2 - EDITON 1
# Author: docker_user
# Command format: Instruction [arguments / command] ..

# 第一行必须指定基于的基础镜像
FROM mixnet/sdwebui:base

# 维护者信息
MAINTAINER  light xxxxxx@email.com

WORKDIR /workspace
COPY docker/init-container.sh /root/
COPY docker/bootstrap.sh /root/
RUN chmod a+x /root/bootstrap.sh
#RUN sh /root/init-container.sh
RUN rm -rf /root/init-container.sh
RUN ./webui.sh
ENTRYPOINT ["/root/bootstrap.sh"]