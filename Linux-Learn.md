## O que é Linux:

- Existem tipos de sistemas
- SO é um gerenciamento de apps, hardware, software e o computador intreiro
- O linux é um Kerdel apenas → o núcleo, onde o fica centro, drivers
- Linux = Tecnologia, não um SO, é um motor
- Por isso, surgem as Distros, SO montado emcima do Kernel

## Linux Mint (distro que uso)

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

- gustavo@gustavo-IdeaPad-Gaming-3-15IMH05:~$  : user comum ($), user root (#)
- ls - listar
- ls -l -h OU ls -lh: ver informações detalhadas e humanizadas
- ls -a - listar todos até ocultso
- ls -R
- cd ~: volta para a homa
- cd -: volta para o diretório anterior
- cd ..
- man  <comando> - manual, mostra todos os comando
- cat - ver conteudos de arquivos sem abrir
- cat <arquivo> > <arquivo>: cria ou passa o conteúdo da esqueda para a direita
- <comando> —help - informações desse comando

Aruivos e Diretórios:

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

Gerenciamento de Pacotes:

- su / sudo su - entrar no super user → Ctrl + D para sair
- sudo - atribui o super user
- apt-get / apt
- apt-get - remove, atualiza e baixa pacotes, apenas adms / super user
- sudo apt-get update - atualiza todos os repositórios
- sudo apt-get upgrade -y - atualiza todos os aplicativos / pacotes com permissão
- sudo apt-get install

Linux Cheat Sheet
<img width="2551" height="3301" alt="image" src="https://github.com/user-attachments/assets/8590681f-ff0f-454b-93df-d7dce95c0cc6" />
