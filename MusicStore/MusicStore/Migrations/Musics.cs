using System;

namespace MusicStore.Migrations
{
    internal class Musics
    {
        public string Title { get; set; }
        public string Singers { get; set; }
        public int RunTime { get; set; }
        public DateTime ReleaseDate { get; set; }
    }
}