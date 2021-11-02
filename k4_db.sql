CREATE TABLE public.barang (
    id character varying(50) PRIMARY KEY NOT NULL,
    nama text NOT NULL,
    harga integer NOT NULL,
    stok integer NOT NULL,
    gambar text NOT NULL
);

CREATE TABLE public.promobarang (
    id_barang character varying(50) NOT NULL,
    promo double precision NOT NULL
);

CREATE TABLE public.riwayattransaksi (
    id character varying(50) PRIMARY KEY NOT NULL,
    id_barang character varying(50) NOT NULL,
    jumlah_beli integer NOT NULL,
    waktu_beli integer NOT NULL,
    status boolean NOT NULL,
    nomor_antrian integer NOT NULL
);

ALTER TABLE ONLY public.promobarang
    ADD CONSTRAINT "fk_promobarang.id_barang_barang.id" FOREIGN KEY (id_barang) REFERENCES public.barang(id) ON DELETE CASCADE;

ALTER TABLE ONLY public.riwayattransaksi
    ADD CONSTRAINT "fk_riwayattransaksi.id_barang_barang.id" FOREIGN KEY (id_barang) REFERENCES public.barang(id) ON DELETE CASCADE;