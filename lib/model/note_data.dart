class NoteData {
  String title;
  String text;

  NoteData({
    required this.title,
    required this.text,
  });
}

var noteDataList = [
  NoteData(
    title: "Resep Soto",
    text:
        "daging, bumbu dapur, garam, merica, gula santan, bawang putih, bawang merah, tomat, jahe, ketumbar",
  ),
  NoteData(
    title: "Goals in 2022",
    text: "Belajar sampai bisa bikin project di publish playstore",
  ),
  NoteData(
    title: "Jangan Lupa!",
    text: "Beli game yakuza di summer sale steam",
  ),
  NoteData(
    title: "Liburan",
    text: "Ke Tangkuban Perahu bulan Juli",
  ),
];
