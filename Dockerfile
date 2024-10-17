FROM ghcr.io/puppeteer/puppeteer

RUN git clone https://github.com/ruwen/pa11y-webservice.git && cd pa11y-webservice && npm i

WORKDIR /home/pptruser/pa11y-webservice
COPY ./config/production.json ./config/
EXPOSE 3000

CMD ["npm","start"]