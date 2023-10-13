# Talent_Academy Case
Oi gente, tudo bem com vocês?

Vou explicar um pouco de como realizei o case.

Subi o arquivo para o meu github para também ter uma segurança a mais para comprovar o horário realizado do case e também mostrar que mantenho um github ativo que talvez possa ser interessante!

### Em relação a questão 1:

Criei o SCHEMA com o nome ```questionario```. Em seguida fui criar as tabelas: ```Empresas, usuarios e PesquisaClima```. Criei a tabela ```Empresas``` primeiro por conta das necessidades de criar as primeiras relações com as demais tabelas, pois como tabela ```usuarios``` iria usar a FK da tabela ```Empresas``` sem uma referencia?

E em seguida criei a tabela ```PesquisaClima```.

Após isso, comecei a inserir os dados nas empresas e as respostas de níveis de satisfação.

Após essas adições, concluí a primeira questão.

<hr>

### Em relação a questão 2:

Primeira coisa que fiz foi 'USE questionario' para não precisar em me preocupar em utilizar sempre o schema para responder as questões que iriam vir.

Em seguida, para responder a ```questão a``` listei todos os usuários que trabalhavam na TechCorp. Fiz usando ```INNER JOIN``` para que a pessoa que for procurar possa apenas modificar o nome da empresa, pois nem sempre a pessoa vai saber qual é a ```empresa_id``` da TechCorp.

Na ```questão b```, fiz 2 INNER JOIN para relacionar as tabelas de usuarios e Empresas com a tabela de PesquisaClima. Além disso, coloquei alias nos nomes para ficarem mais legíveis.

Por fim, na ```questão c```, fiz a selação do usuário com o maior rating dado a partir de selecionar os valores de forma descendente e limitei para mostrar apenas o primeiro valor.
