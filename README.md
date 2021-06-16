# cemec

Projeto cemec-innube

## Getting Started


### Web local

## Atualizar OAuth 2.0 client IDs
https://console.cloud.google.com/apis/credentials?project=cemec-innube&supportedpurview=project

Edit: 	Web client (auto created by Google Service)
incluia a url do projeto

## execute localmente

Executar web localmente nesta porta que esta cadastrada
catalunha@pop-os:~/myapps/cemec$ flutter run -d chrome --web-hostname localhost --web-port 7357

### hosting

catalunha@pop-os:~/Downloads$ sudo apt install nodejs
catalunha@pop-os:~/Downloads$ node -v
v10.19.0
Se necessario veja as notificações e corrija neste caso aqui foi
catalunha@pop-os:~/Downloads$ sudo npm install -g npm@7.17.0
catalunha@pop-os:~/Downloads$ firebase logout
catalunha@pop-os:~/Downloads$ firebase login

catalunha@pop-os:~/myapps/cemec$ firebase init
? What do you want to use as your public directory? build/web
? Configure as a single-page app (rewrite all urls to /index.html)? Yes
? Set up automatic builds and deploys with GitHub? No
catalunha@pop-os:~/myapps/cemec$ flutter build web
catalunha@pop-os:~/myapps/cemec$ firebase deploy --only hosting


