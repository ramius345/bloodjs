FROM node:14.15.4-alpine3.10
#RUN wget https://image.dosgamesarchive.com/games/blood.zip
RUN  yes | npx -q create-dosbox blood
RUN cd /blood && npm install
COPY BLOOD.zip /blood/public/BLOOD.zip
COPY fullblood.zip /blood/public/fullblood.zip
COPY index.html /blood/public
EXPOSE 8080
ENTRYPOINT [ "/bin/sh" , "-c" , "cd /blood; npm start"  ]
