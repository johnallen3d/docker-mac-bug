# docker-mac-bug

This reproduces a bug in docker for mac beta.

1. run `docker-compose up --build`
2. in another terminal, run `docker-compose exec app /bin/bash`
3. run `npm install`
4. verify that node_modules is not empty: `ls -l node_modules`
5. run `node index.js`
6. edit test/test.txt using vim (other editors have not been tested)
7. you should see index.js output `file changed test.txt`
8. hit ctrl-c to stop index.js
9. check node_modules: `ls -l node_modules`. It will be empty.
