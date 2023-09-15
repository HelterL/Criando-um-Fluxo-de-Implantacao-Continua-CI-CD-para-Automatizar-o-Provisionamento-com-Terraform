# projetoDevOpsaws
O intuito desse projeto é a criação de pipeline de infra as code utilizando serviços da AWS juntamente com Terraform, logo não será possível detalhar passo a passo de cada serviço da AWS e se aprofundar.
## Requisitos preliminares
* Conta na AWS
* Usuário no IAM
* Credenciais IAM
* Credenciais github
* Bucket S3
* Docker
* Terraform 

## Primeiro a criação de um usuário do IAM para acessar o codecommit
No console da AWS pesquise por **IAM** > no menu lateral a esquerda selecione **usuários**
Adicione um nome ao usuário > em **Opções de permissões** clique em **anexar políticas diretamente** 
Adicione as seguintes políticas **AWSCodeCommitPowerUser** e **AmazonS3FullAccess**
![image](https://github.com/HelterL/projetoDevOpsaws/assets/39557564/e6e41d17-f57c-4138-a6e6-01a22ae977a3)

Após a criação do usuário, clique no nome dele e vá em **credenciais de segurança** > e gere as credenciais e faça o download do arquivo **.csv**
Lembre-se: temos duas credenciais uma para acessar serviços da AWS e outra para acessar o codecommit através do git
![image](https://github.com/HelterL/projetoDevOpsaws/assets/39557564/ccd26396-7faf-4ffe-84bd-7e3b6b1bc66f)
![image](https://github.com/HelterL/projetoDevOpsaws/assets/39557564/8e7c6c5b-a493-4cd7-a79d-fef5b7f52c39)


