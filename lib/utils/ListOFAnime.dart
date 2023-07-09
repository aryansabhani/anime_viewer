class AnimeList {
  static List<AnimeModal> Anime = [
    AnimeModal(
      AnimeName: "One Piece",
      AnimeImg:
          "https://img.flawlessfiles.com/_r/300x400/100/54/90/5490cb32786d4f7fef0f40d7266df532/5490cb32786d4f7fef0f40d7266df532.jpg",
      AnimeUrl: "https://aniwatch.to/one-piece-100",
    ),
    AnimeModal(
      AnimeName: "Bleach",
      AnimeImg:
          "https://img.flawlessfiles.com/_r/300x400/100/bd/5a/bd5ae1d387a59c5abcf5e1a6a616728c/bd5ae1d387a59c5abcf5e1a6a616728c.jpg",
      AnimeUrl: "https://aniwatch.to/bleach-806",
    ),
    AnimeModal(
      AnimeName: "Black Clover",
      AnimeImg:
          "https://img.flawlessfiles.com/_r/300x400/100/f5/8b/f58b0204c20ae3310f65ae7b8cb9987e/f58b0204c20ae3310f65ae7b8cb9987e.jpg",
      AnimeUrl: "https://aniwatch.to/black-clover-2404",
    ),
    AnimeModal(
      AnimeName: "Chainsaw Man",
      AnimeImg: "https://img.flawlessfiles.com/_r/300x400/100/b3/da/b3da1326e07269ddd8d73475c5dabf2c/b3da1326e07269ddd8d73475c5dabf2c.jpg",
      AnimeUrl: "https://aniwatch.to/chainsaw-man-17406",
    ),
    AnimeModal(
      AnimeName: "Demon Slayer: season 1",
      AnimeImg: "https://img.flawlessfiles.com/_r/300x400/100/30/df/30df93feaa422101659e14d0a2a2f582/30df93feaa422101659e14d0a2a2f582.jpg",
      AnimeUrl: "https://aniwatch.to/demon-slayer-kimetsu-no-yaiba-47",
    ),
    AnimeModal(
      AnimeName: "Demon Slayer Movie",
      AnimeImg: "https://img.flawlessfiles.com/_r/300x400/100/ab/45/ab45afa989aa5a2e06ef973c8482b015/ab45afa989aa5a2e06ef973c8482b015.jpg",
        AnimeUrl: "https://aniwatch.to/kimetsu-no-yaiba-movie-mugen-ressha-hen-15763",
    ),
    AnimeModal(
      AnimeName: "Demon Slayer: season 2",
      AnimeImg: "https://img.flawlessfiles.com/_r/300x400/100/3e/13/3e13d0ab2ce8799c9da8ed59548b96e9/3e13d0ab2ce8799c9da8ed59548b96e9.jpg",
      AnimeUrl: "https://aniwatch.to/demon-slayer-entertainment-district-arc-17483",
    ),
    AnimeModal(
      AnimeName: "Demon Slayer: season 3",
      AnimeImg: "https://img.flawlessfiles.com/_r/300x400/100/db/2f/db2f3ce7b9cab7fdc160b005bffb899a/db2f3ce7b9cab7fdc160b005bffb899a.png",
      AnimeUrl: "https://aniwatch.to/demon-slayer-kimetsu-no-yaiba-swordsmith-village-arc-18056",
    ),
    AnimeModal(
      AnimeName: "Naruto",
      AnimeImg: "https://m.media-amazon.com/images/M/MV5BZmQ5NGFiNWEtMmMyMC00MDdiLTg4YjktOGY5Yzc2MDUxMTE1XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_FMjpg_UX1000_.jpg",
      AnimeUrl: "https://aniwatch.to/naruto-677?ref=search",
    ),
    AnimeModal(
      AnimeName: "Naruto: Shippuden",
      AnimeImg: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKHYpGBZSewL4MBq-Zor25Xl8e8rdbKUkERAQ6PxsIm9Ir39sVQ-l5ifihI8JXPHrb9s0&usqp=CAU",
      AnimeUrl: "https://aniwatch.to/naruto-shippuden-355",
    ),
    AnimeModal(
      AnimeName: "Boruto: Naruto Next Generations",
      AnimeImg: "https://img.flawlessfiles.com/_r/300x400/100/32/c8/32c83e2ad4a43229996356840db3982c/32c83e2ad4a43229996356840db3982c.jpg",
      AnimeUrl: "https://aniwatch.to/boruto-naruto-next-generations-8143",
    ),
    AnimeModal(
      AnimeName: "Jujutsu Kaisen 2nd Season",
      AnimeImg: "https://img.flawlessfiles.com/_r/300x400/100/b5/1f/b51f863b05f30576cf9d85fa9b911bb5/b51f863b05f30576cf9d85fa9b911bb5.png",
      AnimeUrl: "https://aniwatch.to/jujutsu-kaisen-2nd-season-18413",
    ),
  ];
}

class AnimeModal {
  String AnimeName = "";
  String AnimeImg = "";
  String AnimeUrl = "";

  AnimeModal(
      {required this.AnimeName,
      required this.AnimeImg,
      required this.AnimeUrl});
}
