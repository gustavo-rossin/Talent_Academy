# USE questionario;

# a) Liste todos os usuários que trabalham na empresa "TechCorp".
SELECT * FROM usuarios u

INNER JOIN Empresas E ON
u.empresa_id = E.empresa_id

WHERE E.nome_empresa = 'TechCorp';

# b) Exiba o nome de todos os usuários, o nome das empresas em que trabalham e, se tiverem respondido, a nota que deram na pesquisa de clima.
SELECT
u.nome as 'Usuário',
E.nome_empresa as 'Empresa',
pc.satisfacao as 'Nota'

FROM PesquisaClima pc

INNER JOIN usuarios u ON 
pc.usuario_id = u.usuario_id
INNER JOIN Empresas E ON
u.empresa_id = E.empresa_id;

# c) Determine qual usuário deu a nota mais alta na pesquisa de clima e exiba o nome do usuário.

SELECT
u.nome as 'Usuário',
pc.satisfacao as 'Nota'

FROM PesquisaClima pc
INNER JOIN usuarios u ON 
pc.usuario_id = u.usuario_id

ORDER BY Nota DESC
LIMIT 1;