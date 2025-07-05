SELECT 
  kp.hdr_id, kp.komitmen_id, jko.name, kp.filter_26_wk, kp.filter_38_wk, kp.hdr_psc_id, p.psc_id, m.wk_name,
  kp.holding_id, h.name, kp.kontraktor, 
  kp.jenis_wk_id, jw.name, kp.tanggal_efektif, kp.area_id, a.name, kp.basin_id, b.name, kp.jenis_kegiatan_id, jk.name,
  kp.tipe_kegiatan_id, tk.name, kp.satuan, kp.realisasi_satuan, kp.anggaran_kks, kp.realisasi_anggaran_kks,
  kp.jumlah_kegiatan, kp.realisasi_kegiatan, kp.komitmen_tahun_ke, kp.tahun_komitmen, kp.tahun_pelaksanaan, kp.ontime,
  kp.akhir_periode_kp_kkp, kp.status_pelaksanaan, kp.jenis_unit_id, ju.name, kp.progress, kp.catatan_khusus, kp.nama_kegiatan,
  kp.pengalihan_komitmen, kp.bobot_penilaian_kinerja
FROM kp_kkp AS kp
JOIN jenis_komitmen AS jko ON kp.komitmen_id = jko.id
JOIN psc AS p ON kp.hdr_psc_id = p.id
JOIN mdm as m ON p.psc_id = m.wk_id
JOIN holding AS h ON kp.holding_id = h.id
JOIN jenis_wk as jw ON kp.jenis_wk_id = jw.ID
JOIN area AS a ON kp.area_id = a.id
JOIN basin AS b on kp.basin_id = b.id
JOIN jenis_kegiatan AS jk ON kp.jenis_kegiatan_id = jk.id
JOIN tipe_kegiatan as tk ON kp.tipe_kegiatan_id = tk.id
JOIN jenis_unit AS ju ON kp.jenis_unit_id = ju.id;
