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
      AnimeName: "Demon Slayer: Kimetsu no Yaiba",
      AnimeImg: "https://img.flawlessfiles.com/_r/300x400/100/30/df/30df93feaa422101659e14d0a2a2f582/30df93feaa422101659e14d0a2a2f582.jpg",
      AnimeUrl: "https://aniwatch.to/demon-slayer-kimetsu-no-yaiba-47",
    ),
    AnimeModal(
      AnimeName: "Demon Slayer Movie: Mugen Train",
      AnimeImg: "https://img.flawlessfiles.com/_r/300x400/100/ab/45/ab45afa989aa5a2e06ef973c8482b015/ab45afa989aa5a2e06ef973c8482b015.jpg",
      AnimeUrl: "https://aniwatch.to/kimetsu-no-yaiba-movie-mugen-ressha-hen-15763",
    ),
    AnimeModal(
      AnimeName: "Demon Slayer: Entertainment District Arc",
      AnimeImg: "https://img.flawlessfiles.com/_r/300x400/100/3e/13/3e13d0ab2ce8799c9da8ed59548b96e9/3e13d0ab2ce8799c9da8ed59548b96e9.jpg",
      AnimeUrl: "https://aniwatch.to/demon-slayer-entertainment-district-arc-17483",
    ),
    AnimeModal(
      AnimeName: "Demon Slayer: Kimetsu no Yaiba Swordsmith Village Arc",
      AnimeImg: "https://img.flawlessfiles.com/_r/300x400/100/db/2f/db2f3ce7b9cab7fdc160b005bffb899a/db2f3ce7b9cab7fdc160b005bffb899a.png",
      AnimeUrl: "https://aniwatch.to/demon-slayer-kimetsu-no-yaiba-swordsmith-village-arc-18056",
    ),
    AnimeModal(
      AnimeName: "",
      AnimeImg: "",
      AnimeUrl: "",
    ),
    AnimeModal(
      AnimeName: "",
      AnimeImg: "",
      AnimeUrl: "",
    ),
    AnimeModal(
      AnimeName: "",
      AnimeImg: "",
      AnimeUrl: "",
    ),
    AnimeModal(
      AnimeName: "",
      AnimeImg: "",
      AnimeUrl: "",
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
