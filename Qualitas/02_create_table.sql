-- =====================================================
-- Table: Data Anggota
-- =====================================================

CREATE TABLE qualitas.data_anggota (
    da_id SERIAL PRIMARY KEY,
    da_id_number VARCHAR(20),
    da_name VARCHAR(100),
    da_address TEXT,
    da_phone_number VARCHAR(20),
    da_regist_date DATE
);


-- =====================================================
-- Table: Data Buku
-- =====================================================

CREATE TABLE qualitas.data_buku (
    db_id SERIAL PRIMARY KEY,
    db_id_book VARCHAR(20),
    db_category VARCHAR(50),
    db_title_book VARCHAR(150),
    db_writer_name VARCHAR(100),
    db_release_date DATE,
    db_stock INT
);


-- =====================================================
-- Table: Data Peminjaman
-- =====================================================

CREATE TABLE qualitas.data_peminjaman (
    dp_id SERIAL PRIMARY KEY,
    dp_da_id_number VARCHAR(20),
    dp_db_id_book VARCHAR(20),
    dp_borrow_date DATE,
    dp_return_date DATE,
    dp_late_days INT,
    dp_fine_amt NUMERIC(12,2)
);