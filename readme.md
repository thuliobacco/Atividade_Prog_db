Thúlio Bacco || T15

Models --> Acessa o banco de dados, realizando operações e definindo regras sobre os dados.
Controller --> Funciona como um intercessor entre a View e o Models.
EndPoint --> Rotas de comunicação entre dispositivo e sistema.


SEMANA 5 - 22/05/2025
1. Explique com suas palavras o papel de cada camada da arquitetura MVC usada neste projeto.
Como o Model, o Controller e a View interagem entre si?

R: O MODELS é a parte que se comunica com o banco de dados, requisitando o que o CONTROLLERS precisa para intermediar e enviar para o VIEWS para, enfim, colocar na interface para o usuário (site)



2. Como ocorre o envio e o recebimento de dados no formato JSON neste projeto?
Cite uma rota que responde em JSON e explique seu funcionamento.

R: Além de mostrar páginas HTML, esse projeto também usa JSON quando precisa trocar dados de forma automática, por exemplo com JavaScript ou em uma API.
Um exemplo seria a rota GET /alunos/curso/:curso_id, retornando todos os alunos de um curso específico, mas em vez de devolver uma página, ela
manda os dados em formato JSON. Isso é útil quando queremos carregar informações com JavaScript sem recarregar a página.



3. Qual a importância de usar HTML básico com formulários e tabelas para organizar e manipular dados no navegador?
Por que esse tipo de estrutura ainda é útil em projetos back-end com Node.js?

R: Mesmo com tanta tecnologia nova, o HTML básico ainda é super útil: formulários são simples e funcionam muito bem pra cadastrar coisas, como alunos e professores, tabelas organizam os dados de forma clara — uma lista de cursos, alunos com seus e-mails, etc.
Usar HTML assim no back-end com Node.js é ótimo quando: o projeto é pequeno ou interno, você quer montar um painel administrativo rápido