# NodeJS 12 버전을 사용한다.
FROM node:12

# 컨테이너 내, 기준 디렉토리를 설정한다.
WORKDIR /usr/project/

# 소스파일을 복사한다.
COPY ./app ./app

# 80 포트를 연다.
EXPOSE 80 

# RUN START.SH
COPY ./start.sh ./start.sh
RUN chmod +x ./start.sh
CMD ["./start.sh"]