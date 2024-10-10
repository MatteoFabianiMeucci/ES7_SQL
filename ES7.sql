-- 1
SELECT Impiegato.matricola, Impiegato.cognome
FROM Impiegato, Dipartimento
WHERE Impiegato.codice_dipartimento = Dipartimento.codice
	AND Dipartimento.Nome = 'sud'
    AND Impiegato.stipendio > 50000;
    
-- 2
SELECT Impiegato.cognome, Impiegato.stipendio
FROM Impiegato, Dipartimento
WHERE Impiegato.codice_dipartimento = Dipartimento.codice
	AND Dipartimento.sede = 'Napoli'
ORDER BY Impiegato.stipendio ASC;

-- 3
SELECT Impiegato.cognome, Dipartimento.Nome
FROM Impiegato, Dipartimento
WHERE Impiegato.codice_dipartimento = Dipartimento.codice;

-- 4
SELECT Impiegato.cognome
FROM Impiegato, Dipartimento, Progetto, Partecipazione
WHERE Impiegato.codice_dipartimento = Dipartimento.codice
	AND Partecipazione.sigla_progetto = Progetto.sigla
    AND Partecipazione.impiegato = Impiegato.matricola
    AND Impiegato.matricola = Dipartimento.matricola_direttore
    AND progetto.sigla = 'Alpha';

-- 5
SELECT Progetto.nome, Impiegato.cognome
FROM Progetto, Impiegato
WHERE Impiegato.matricola = Progetto.matricola_responsabile
ORDER BY Progetto.nome DESC
    
/*
Impiegato (matricola, cognome, nome, stipendio, codice_dipartimento (FK))
Dipartimento (codice, nome, sede, matricola_direttore (FK))
Progetto (sigla, nome, bilancio, matricola_responsabile (FK)) 
Partecipazione (impiegato (FK), sigla_progetto (FK))


Formulare le seguenti interrogazioni in SQL:
1. Trovare matricola e cognome degli impiegati che guadagnano piu` di 50000 e sono del
dipartimento Sud.
2. Trovare cognome e stipendio degli impiegati che lavorano a Napoli ordinati per
stipendio.
3. Trovare cognome degli impiegati e nome del dipartimento in cui lavorano.
4. Trovare cognome degli impiegati che sono direttori di dipartimento e svolgono il
progetto Alpha.
5. Trovare i nomi dei progetti e i cognomi dei responsabili ordinati in ordine decrescente
per progetto.
*/