
### Flutter Web

## Atualizar OAuth 2.0 client IDs
Para executar o Google SigIn vc precisa de cadastrar o projeto no 
console google cloud, neste link.

https://console.cloud.google.com/apis/credentials?project=cemec-innube&supportedpurview=project

Em APIs e Services -> Credentials. Escolha OAuth 2.0 Client IDs.
Clique no labis de edição do item Web client (auto created by Google Service)

![](imagens/Screenshot%20from%202021-06-17%2005-31-20.png)

Em URIs informe as urls que poderão acessar o processo de Google SignIn.

![](imagens/Screenshot%20from%202021-06-17%2005-32-23.png)

Tem que ser a URL local para debug no chrome local e também a URL do hosting.

## Execute localmente

Executar sempre a web localmente nesta porta que esta cadastrada no OAuth

catalunha@pop-os:~/myapps/cemec$ flutter run -d chrome --web-hostname localhost --web-port 7357
