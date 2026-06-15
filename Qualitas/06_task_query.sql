-- Tampilkan data anggota yang mendaftar setelah tahun 2024 diurutkan dari yang paling terbaru
select * from data_anggota where extract(year from da_regist_date) > 2024 order by da_regist_date desc;



-- Tampilkan buku yang memiliki stok antara 5 dan 12
select  * from data_buku where db_stock between 5 and 12 order by db_id;




-- Tampilkan jumlah buku berdasarkan kategori buku nya diurutkan dari yang paling banyak bukunya
select db_category, count (*) as db_total_book from data_buku group by db_category order by db_total_book desc ;




-- Tampilkan data anggota yang mendaftar setelah tahun 2024 diurutkan dari yang paling terbaru
SELECT
    da.da_name,
    COUNT(dp.dp_id) AS dp_total_transaksi,
    SUM(dp.dp_fine_amt) AS dp_total_fine_amt,
    CASE 
        WHEN SUM(dp.dp_fine_amt) = 0 THEN 'Lunas'
        ELSE 'Belum Lunas'
    END AS dp_status
FROM qualitas.data_peminjaman dp
JOIN qualitas.data_anggota da
    ON dp.dp_da_id_number = da.da_id_number
GROUP BY da.da_name
ORDER BY da.da_name;
