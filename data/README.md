# Dokumentasi Dataset - Wikipedia Bahasa Indonesia (Wiki ID)

## 1. Identitas & Sumber Dataset
- **Nama Dataset:** Indonesian Wikipedia Articles Corpus (`wikipedia-id`)
- **Organisasi / Penerbit:** Indonesian NLP Community / Hugging Face Datasets
- **Repositori Sumber:** [indonesian-nlp/wikipedia-id](https://huggingface.co/datasets/indonesian-nlp/wikipedia-id)
- **URL Unduhan Mentah:** `https://huggingface.co/datasets/indonesian-nlp/wikipedia-id/resolve/refs%2Fconvert%2Fparquet/default/train/0000.parquet`
- **Lisensi:** Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0) / GNU FDL (sesuai lisensi konten Wikipedia)

## 2. Karakteristik & Pemenuhan Syarat Tugas
Sesuai ketentuan tugas Analisis Big Data:
> **Syarat Ukuran:** Ukuran $\ge 500\text{ MB}$ ATAU $> 1.000.000\text{ baris}$.

| Parameter | Nilai Aktual | Keterangan |
|---|---|---|
| **Nama File** | `wikipedia_id.parquet` | Disimpan di `data/raw/` tanpa modifikasi |
| **Ukuran File (Disk)** | **311.02 MB** (terkompresi Parquet/Snappy) | Ukuran data tidak terkompresi $> 1\text{ GB}$ |
| **Jumlah Baris** | **1.301.683 baris** | **Memenuhi syarat $> 1.000.000\text{ baris}$** |
| **Jumlah Kolom** | 3 kolom | `docid`, `title`, `text` |
| **Format File** | Apache Parquet (Columnar Storage) | Standar format analisis modern Polars & DuckDB |
| **Checksum SHA-256** | `b3f827439ba3a31048e5cae4a93292d59489e34a37aeb758219e94ee0d551c7f` | Integritas data mentah terverifikasi |

## 3. Skema Kolom
1. `docid` (`String`): Identifier unik artikel Wikipedia (contoh: `1#1`, `123#1`).
2. `title` (`String`): Judul artikel Wikipedia Bahasa Indonesia.
3. `text` (`String`): Isi teks artikel Wikipedia hasil ekstraksi dan pembersihan markup.

## 4. Aturan Penyimpanan & Reproduksibilitas
- Folder `data/raw/` hanya berisi file asli mentah yang diunduh langsung dari sumber dan **tidak boleh dimodifikasi**.
- Dataset mentah berukuran besar tidak di-commit ke Git (didaftarkan pada `.gitignore`).
- Seluruh hasil transformasi, pembersihan, dan feature engineering pada Milestone berikutnya akan disimpan pada folder `data/processed/`.
