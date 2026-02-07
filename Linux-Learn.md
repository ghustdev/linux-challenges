## O que é Linux:

- Existem tipos de sistemas
- SO é um gerenciamento de apps, hardware, software e o computador intreiro
- O linux é um Kerdel apenas → o núcleo, onde o fica centro, drivers
- Linux = Tecnologia, não um SO, é um motor
- Por isso, surgem as Distros, SO montado emcima do Kernel

## Linux Mint

- Kernel Linux 5.2
- Novas Versões dos Drivers
- Ubuntu LTS como base

## Estrutura de Pastas do Linux

- Nemo (Ubuntu usa GNOME Nautilus) → Mais livre e controle a nivel profissional
- Raiz UNIX como gerenciador de pastas
- bin - executáveis, binários e scripts
- boot - inicialização do sistema, boot e imagem do kerbel
- cdrom - olhar CDs (primeira pasta de ponto de montagem, instalar um SO)
- dev (devices) - hardware do pc partições de memória, cada arquivo significa algo
- etc (edit to config) - arquivos de configuração de software (vscode ou rede)
- home - armazena todos os dados do usuário
- lib - armazena bibliotecas de software
- media - ponto de montagem para dispositivos removíveis de memória, partições…
- mnt (mount) - gerar meus próprios pontos de montagens e partições
- opt (optional) - simula os Arquivos e Programas do Winows
- proc (PROCESSES) - processos executando em forma de arquivo
- root
- run (runtime) - tempo de execução
- srv - usada para servidores e armazenar dados de usuários dos sisteams em Deploy
- sys - módelos e pacotes instalados que não afzem partew do kernel linux
- usr (antigo user) - arquivos e bibliotecas não essenciais para o sistema
- var - importante para o funcionamento, arquivos do sistema

---

## Comandos Linux

Básicos:

- !! - usa comando anterior
- ls - listar
- ls -l -h OU ls -lh: ver informações detalhadas e humanizadas
- ls -a - listar todos até ocultso
- ls -R
- history - hirtorico do terminal
- lscpu - informaçoes extras
- lscpi
- lsblk
- tree
- cd ~: volta para a homa
- cd -: volta para o diretório anterior
- cd ..
- man  <comando> - manual, mostra todos os comando
- cat - ver conteudos de arquivos sem abrir
- cat <arquivo> > <arquivo>: cria ou passa o conteúdo da esqueda para a direita
- <comando> —help - informações desse comando

Arquivos e Diretórios:

- mkdir - make dirmkdir -p: permite criar dir mais complexos
- mkdir -v: verbose - permite ver o q o comando faz
- rm - remove arquivo
- rm -i: pergunta se realmente quer remover
- rm -dv: remove dir vazios
- rm -rf - remover recursivamente → apaga de qualquer jeito, apaga todo o diretório
- rmdir - remove dir
- mv  <nome_arquivo> ~/<pasta> - renomerar / mover arquivo
- cp <nome_arquivo> ~/<pasta> - copiar arquivos
- cp -r: copis diretorios e toda estrutura
- pwd - imprime diretório de trabalho/atual
- >> - pegar informações e joga para algum arquivo

Gerenciamento de Pacotes:

- apt-get / apt
- apt-get - remove, atualiza e baixa pacotes, apenas adms / super user
- sudo apt-get update - atualiza todos os repositórios
- sudo apt-get upgrade -y - atualiza todos os aplicativos / pacotes com permissão
- sudo apt-get install <pacote>
- sudo apt-get p**ur**ge <pacote> - limpar / purgar
- sudo apt-get dist-upgrade - não use para atualizar o sistema da distro
- sudo apt-get autoremove - remove pacotes desatualizados e desnecessaŕios, sempre use
- apt-cache search <pacote> - pesquisa esse pacote e tudo relacionado

Filtros e Buscas

- tail e head - ler uma parte do arquivo, cima ou baixo
- head -n 1 - ve apenas 1 linha de cima para baixo, e assim por diante
- tail -n 1 - ve apenas 1 linha de baixo para cima, e assim por diante
- tail -f - mostra atualizações automáticas, bom para debug de logs
- less abre arquivo de forma paginada
- grep -i <busca> <arquivo> - busca em arquivos sem case sensitive
- grep -c <busca> <arquivo> - qtd de ocorrencias
- grep <busca> -r - busca recursiva em todos os diretorios / arquivos
- ip a | grep <nome para filtrar> - grep faz um filtro no nome do texto que irá aparecer ao digitar o comando ip a
- find -name - encontrar arquivos em diretórios → . (esse diratório) ou simplesmente digita o nome do diretório; *nome* tudo q tiver isso no nome
- find -iname <busca*> - sem case sensitive e independente do tipo
- find -empty - busca dir vazios
- find . -name "*.doc" -type f (file ou d para diretório) -delete - remove todos os arquivos com “.doc”
- locate <arquivo> - acha todos os aruivos
- locate -S - qtd de dados
- which - de onde um ocmando é executado

Nano:

- nano
- sudo nano /etc/default/grub
- sudo update-grub - atualziar o grub
    - atividade: alterar o tema do GRUB usando nano e Bash
- Alt + / - vai para o fim do arquivo
- Alt + \ - vai para o inicio
- Alt + g - vai para linha especifica

Gerenciamento de Usuários

- sudo adduser <nome> - apenas como admin
- sudo userdel —remove <nome>
- usdo usermod -c “novo” <nome> - alterar nome de usuario de display
- usermod -l <nome> -d <caminho> - alterar display e diretório
- sudo usermod -L - desabilitar usuário
- sudo usermod -U- desbloquear usuário
- su / sudo su - entrar no super user → Ctrl + D para sair
- sudo - atribui o super user
- gustavo@gustavo-IdeaPad-Gaming-3-15IMH05:~$  : user comum ($), user root (#)
- passwd - alterar a senha

Gerenciamento de Permissões

- Possibilita alterar entre 3 propriedades de arquivos e diretórios
    - Read - R
    - Write - W
    - Execute - X
    - “-” - sem permissão

![Captura de tela de 2026-02-07 19-10-30.png](attachment:2cc0d95e-1d51-47e4-88ac-22d31fd98c1d:Captura_de_tela_de_2026-02-07_19-10-30.png)
<img width="1030" height="395" alt="image" src="https://github.com/user-attachments/assets/2690b58d-c838-465e-b365-2da06c7981c6" />


- d OU “-”- diretório / arquivo
- chmod xxx (dono, grupo, não grupo) file/dir - alterar a permissão
    - Modo numérico:
    
    ![Captura de tela de 2026-02-07 19-20-39.png](attachment:aec14656-b565-40e4-b69a-097b023247c0:Captura_de_tela_de_2026-02-07_19-20-39.png)
  <img width="777" height="438" alt="image" src="https://github.com/user-attachments/assets/3b331555-a6f0-46b1-8af1-2ac4c71b7fe3" />

    
    ![Captura de tela de 2026-02-07 19-22-37.png](attachment:b10af533-9636-4371-a50b-11e1ca6a5f4f:Captura_de_tela_de_2026-02-07_19-22-37.png)
  <img width="599" height="133" alt="image" src="https://github.com/user-attachments/assets/e876aa07-d3f0-4b1f-9fc8-b35d253d7c72" />

    
    ![Captura de tela de 2026-02-07 19-23-30.png](attachment:123d4a41-877f-4657-9e8a-bdbf724ab5ff:Captura_de_tela_de_2026-02-07_19-23-30.png)
  <img width="611" height="87" alt="image" src="https://github.com/user-attachments/assets/500b175c-ced7-462f-91d3-5a0fbe379254" />

    
- chown - altera owner do file/dir

Gerenciamento de Rede:

- ping - testar conexão (com DNSs ou IPs)
- netstat - ver estatísticasda rede
- netstat -at - apenas tcp
- netstat -au - apenas udp
- ifconfig - ocnfigurações de interface e conexão
- nslookup - verificar DNSs
- tcpdump - ver coneões tcp
- hostnmae —help
- hostname - nome da máquina atural
- hostname -I - IP da maquina
- ip a - tudo sobre IP

Extras:

- free -h - visualizar espaço de memoria
- htop - informações e processos
- ps aux | <nome> - processos do pc rodando
- kill - acaba com processos / programas
- ncdu - utilitário para vizualizar espaço livre de memoria, seu local e permitir apagar (tecla Delete)
- uname -r - versao kernel
Linux Cheat Sheet
<img width="2551" height="3301" alt="image" src="https://github.com/user-attachments/assets/8590681f-ff0f-454b-93df-d7dce95c0cc6" />
