WITH AgrupaPessoaPorDepartamento (IdPessoa, IdDepartamento, NumeroLinha)
AS(SELECT	
		p.Id,
		p.DeptId,
		ROW_NUMBER() OVER (PARTITION BY DeptId ORDER BY salario DESC) AS NumeroLinha
	FROM Pessoa p)

SELECT 
	d.Nome AS Departamento,
	p.Nome AS Pessoa,
	p.Salario AS Salario
FROM Departamento d
JOIN AgrupaPessoaPorDepartamento apd ON d.Id= apd.IdDepartamento and NumeroLinha = 1
JOIN Pessoa p ON apd.IdPessoa = p.Id
