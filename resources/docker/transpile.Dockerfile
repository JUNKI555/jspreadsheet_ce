FROM node:lts-fermium
WORKDIR /var/base
RUN npm i -g browserify
ENTRYPOINT browserify src/index.js -o dist/jspreadsheet.js -s jspreadsheet
