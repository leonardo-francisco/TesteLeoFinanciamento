--QUERYS: LEONARDO DA SILVA FRANCISCO


--Listar todos os clientes do estado de SP que tenham mais de 60% das parcelas pagas.
SELECT c.Nome, f.ValorTotal, SUM(p.ValorParcela) from Cliente c
JOIN Financiamento as f ON f.IdCliente = c.IdCliente
JOIN Parcelas as p ON p.IdFinanciamento = f.IdFinanciamento
WHERE p.DtPagamento is not null and c.Uf = 'SP'  
group by c.Nome, f.ValorTotal
HAVING SUM(p.ValorParcela) >= (f.ValorTotal * 0.6)


--Listar os primeiros 4 clientes que tenham alguma parcela com mais de 05 dias atrasadas(Data Vencimento maior que data atual E data pagamento nula)
SELECT distinct top 4 c.Nome from Cliente c
JOIN Financiamento as f ON f.IdCliente = c.IdCliente
JOIN Parcelas as p ON p.IdFinanciamento = f.IdFinanciamento
WHERE (p.DtVencimento < (getdate() - 5)) AND p.DtPagamento is null

--Listar todos os clientes que já atrasaram em algum momento duas ou mais parcelas em
--mais de 10 dias, e que o valor do financiamento seja maior que R$ 10.000,00.
SELECT distinct c.Nome, p.DtPagamento, p.DtVencimento from Cliente c
JOIN Financiamento as f ON f.IdCliente = c.IdCliente
JOIN Parcelas as p ON p.IdFinanciamento = f.IdFinanciamento
WHERE ((p.DtPagamento - p.DtVencimento) > 10) AND f.ValorTotal > 10000