-- a

select t.nomusuel as troncon, ptInteret.type as typePointInteret, COUNT(*) as nombrePointsInteret
from troncon t, TABLE(t.ptsInteret) ptInteret
group by t.nomusuel, ptInteret.type;


-- b 

SELECT t.nomUsuel AS Troncon,iq.nom AS NomIndiceQualite, iq.get_Impact() AS Impact
FROM Troncon t
CROSS JOIN TABLE(t.indiceQualite) iq;
