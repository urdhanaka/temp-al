INSERT INTO 
  kp_kkp (
    komitmen_id,
    filter_26_wk,
    filter_38_wk,
    hdr_psc_id, -- done
    holding_id, -- done
    kontraktor, -- done
    jenis_wk_id, -- done
    tanggal_efektif, -- done
    area_id,  -- done
    basin_id, -- done
    jenis_kegiatan_id, -- done
    tipe_kegiatan_id, -- done
    satuan, -- done
    realisasi_satuan, -- done
    anggaran_kks, -- done
    realisasi_anggaran_kks, -- done
    jumlah_kegiatan, -- done
    realisasi_kegiatan, -- done
    komitmen_tahun_ke, -- done
    tahun_komitmen, -- done 
    tahun_pelaksanaan, --done
    ontime, --done
    akhir_periode_kp_kkp,-- done
    status_pelaksanaan, -- done
    jenis_unit_id, -- done
    progress, -- done
    catatan_khusus, -- done
    nama_kegiatan, -- done
    pengalihan_komitmen,
    bobot_penilaian_kinerja
  )
VALUES
  (
    (SELECT id from jenis_komitmen WHERE name = 'KP'), -- komitmen_id, name CAN BE CHANGED
    'Yes',
    'Yes',
    (
      SELECT id FROM psc WHERE psc_id = (SELECT wk_id FROM mdm WHERE wk_name = 'JAMBI MERANG') -- hdr_psc_id, wk_name CAN BE CHANGED
    ),
    (SELECT id FROM holding WHERE name = 'PERTAMINA'), -- holding_id, name CAN BE CHANGED
    'PT PERTAMINA HULU ENERGI JAMBI MERANG',
    (SELECT id FROM jenis_wk WHERE name = 'EPT'),
    '2019-02-10',
    (SELECT id FROM area WHERE name = 'Jambi'),
    (SELECT id FROM basin WHERE name = 'Luar WK'),
    (SELECT id FROM jenis_kegiatan WHERE name = '2D SEISMIK AKUISISI DAN PROCESSING'),
    (SELECT id FROM tipe_kegiatan WHERE name = 'EKSPLORASI WT'),
    30000,
    30000,
    30000000,
    30000000,
    1,
    1,
    1,
    2019,
    2019,
    'Terlaksana, mundur',
    2027,
    'Sudah',
    (SELECT id FROM jenis_unit WHERE name = '2D'),
    'Selesai 2 Jun 2021',
    'Amandemen ke IV',
    'Akuisisi dan Processing Seismik 2D 32,215 km Area Bone-Tukang Besi',
    NULL,
    NULL
  );
