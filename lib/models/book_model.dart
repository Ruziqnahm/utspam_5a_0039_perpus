class BookModel {
  final String title;
  final String genre;
  final double pricePerDay;
  final String cover;
  final String synopsis;

  BookModel({
    required this.title,
    required this.genre,
    required this.pricePerDay,
    required this.cover,
    required this.synopsis,
  });

  static List<BookModel> getDummyBooks() {
    return [
      BookModel(
        title: 'The Midnight Library',
        genre: 'Fiction',
        pricePerDay: 15000,
        cover: '📚',
        synopsis:
            'A stunning exploration of the choices that make us who we are.',
      ),
      BookModel(
        title: 'Atomic Habits',
        genre: 'Self-Help',
        pricePerDay: 18000,
        cover: '⚛️',
        synopsis:
            'Transform your life with tiny changes that deliver remarkable results.',
      ),
      BookModel(
        title: 'Project Hail Mary',
        genre: 'Science Fiction',
        pricePerDay: 20000,
        cover: '🚀',
        synopsis:
            'A lone astronaut must save the earth from disaster in this gripping tale.',
      ),
      BookModel(
        title: 'The Psychology of Money',
        genre: 'Finance',
        pricePerDay: 17000,
        cover: '💰',
        synopsis: 'Timeless lessons on wealth, greed, and happiness.',
      ),
      BookModel(
        title: 'Educated',
        genre: 'Biography',
        pricePerDay: 16000,
        cover: '📖',
        synopsis:
            'A powerful memoir about a young woman who leaves her survivalist family.',
      ),
      BookModel(
        title: 'Sapiens',
        genre: 'History',
        pricePerDay: 19000,
        cover: '🌍',
        synopsis:
            'A brief history of humankind from the Stone Age to the modern age.',
      ),
      BookModel(
        title: 'The Silent Patient',
        genre: 'Thriller',
        pricePerDay: 16000,
        cover: '🔍',
        synopsis:
            'A woman shoots her husband and then never speaks another word.',
      ),
      BookModel(
        title: 'Ikigai',
        genre: 'Philosophy',
        pricePerDay: 14000,
        cover: '🎌',
        synopsis: 'The Japanese secret to a long and happy life.',
      ),
    ];
  }
}
