-- Beispiel: Der Unix Timestamp 1666742552 entspricht 152s nach Mitternacht
-- Berechnet Sekunden seit Mitternacht des aktuellen Tags
sec_since_midnight:: Integer -> Integer 
sec_since_midnight unixtime = mod unixtime (60*60*24)

-- Berechnung der vollen vergangenen Tage zwischen zwei Zeitpunkten
-- Beispiel: Zwischen 1666958062 und 1667231902 sind 3 volle Tage vergangen - Test bestanden :)
full_days_between_dates:: Integer -> Integer -> Integer
full_days_between_dates ut1 ut2 = div (ut1 -ut2) (60*60*24)


-- Berechnung der vergangenen vollen Stunden an einem Tag für einen Unix Timestamp in Deutschland
-- Beispiel: Der Unix Timestamp 1666742552 entspricht 1 vergangenen Stunde
--           Der Unix Timestamp 1666739552 entspricht 0 vergangenen Stunden
full_hours_german:: Integer -> Integer
full_hours_german unixtime = div (sec_since_midnight (unixtime + (60*60))) (60*60)