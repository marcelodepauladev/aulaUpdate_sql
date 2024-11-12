use escola;

UPDATE alunos a 
inner join cidades c on a.id_cidade = c.id
inner join boletins b on a.id = b.id_aluno
set b.nota = b.nota * 1.2
where c.uf = 'RJ' and
	  b.data >= '2012-04-01' and
      b.data <= '2012-04-30';

-- Antes de realizar o update, é sadio realizar uma select antes para ver se os campos estão de acordo      
SELECT c.UF, b.DATA
FROM alunos a 
inner join cidades c on a.id_cidade = c.id
inner join boletins b on a.id = b.id_aluno
-- set b.nota = b.nota * 1.2
where c.uf = 'RJ' and
	  b.data >= '2012-04-01' and
      b.data <= '2012-04-30';