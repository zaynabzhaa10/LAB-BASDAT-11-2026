INSERT INTO mahasiswa
-- VALUES ('H07156565','Rafllly', NULL, 'raflytampangggggg@gmail.com',14),
--  ('H01236','Saipull', 3.50, 'saipulltampan@gmail.com',15),
 Values ('H02347999','Asepp keselepet', 3.12, NULL,16)
 returning *;

 select * from mahasiswa;

update mahasiswa set ipk = 3.75 where ipk = 3.50 returning*;
delete from mahasiswa where email isnull returning *;