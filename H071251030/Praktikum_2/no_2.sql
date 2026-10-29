INSERT INTO mahasiswa
VALUES ('H075','Dasep', 3.50, 'dasep@gmail.com', 2), ('H077','Lasep', 0, 'lasep@gmail.com', 2) returning *;

update mahasiswa set ipk = 3.75 where ipk = 3.50 returning *;
delete from mahasiswa where nim = 'H075' returning *;
delete from mahasiswa where email is null returning *;
