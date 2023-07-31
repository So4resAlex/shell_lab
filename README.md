## Descrição

O Shell Lab é um repositório contendo scripts para automatizar configurações em sistemas baseados no Debian. O foco principal é o estudo e desenvolvimento de "bibliotecas" de funções para reuso futuro, utilizando a estrutura de condicional `case`.

## Utilização

1. **Clonando o repositório e ajustando as permissões**:
   ```bash
   >> git clone https://github.com/So4resAlex/shell_lab.git
   >> cd shell_lab
   >> chmod 755 funcoes auto_installv2
2. O ``auto_installv2`` deve receber dois argumentos obrigatórios, o ``$1`` será o case ``all`` e o ``$2`` será o nome do seu user normal.  
Ex: ``./auto_installv2 all alex``;

Atualmente o scrip baixa e instala o Curl, Flatpack e o Oh-my-posh. O Oh-my-posh é mantido inativo, você pode ativa-lo e custimiza-lo a seu modo com essa [doc](https://ohmyposh.dev/docs/). Manipula o ``.vimrc`` adicionando as customizações basicas, tambem custumiza o ``.bashrc`` criando o primeiro alias e adicionando a linha comentada da configuração do Oh-my-posh.

### Próximos passos
---

* Implementar cases para instalar recursos de maneira separada;
* Criar função para intalação do git;



  

