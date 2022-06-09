FROM node:lts-fermium
WORKDIR /var/base
RUN npm i -g browserify
RUN npm i -g terser
ENTRYPOINT browserify src/index.js -o dist/jspreadsheet.js -s jspreadsheet && terser dist/jspreadsheet.js --compress --mangle --comments --output dist/jspreadsheet.min.js
