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
        title: 'The Life of Lions',
        genre: 'Wild Animals',
        pricePerDay: 15000,
        cover:
            'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?w=400',
        synopsis:
            'Explore the majestic world of lions and their social structures.',
      ),
      BookModel(
        title: 'Dolphins and Intelligence',
        genre: 'Marine Animals',
        pricePerDay: 18000,
        cover:
            'https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=400',
        synopsis: 'Discover the amazing intelligence and behavior of dolphins.',
      ),
      BookModel(
        title: 'The World of Birds',
        genre: 'Birds',
        pricePerDay: 20000,
        cover:
            'https://images.unsplash.com/photo-1552728089-57bdde30beb3?w=400',
        synopsis:
            'A comprehensive guide to bird species from around the world.',
      ),
      BookModel(
        title: 'Elephants: Gentle Giants',
        genre: 'Wild Animals',
        pricePerDay: 17000,
        cover:
            'https://images.unsplash.com/photo-1564760055775-d63b17a55c44?w=400',
        synopsis:
            'Understanding the complex lives of elephants and their families.',
      ),
      BookModel(
        title: 'Cats: From Wild to Domestic',
        genre: 'Domestic Animals',
        pricePerDay: 16000,
        cover:
            'https://images.unsplash.com/photo-1574158622682-e40e69881006?w=400',
        synopsis:
            'The fascinating journey of cats from wild hunters to beloved pets.',
      ),
      BookModel(
        title: 'Wolves and Their Pack',
        genre: 'Wild Animals',
        pricePerDay: 19000,
        cover:
            'https://images.unsplash.com/photo-1546527868-ccb7ee7dfa6a?w=400',
        synopsis:
            'Learn about wolf behavior, pack dynamics, and survival strategies.',
      ),
      BookModel(
        title: 'Underwater Life: Fish',
        genre: 'Marine Animals',
        pricePerDay: 16000,
        cover:
            'https://images.unsplash.com/photo-1535591273668-578e31182c4f?w=400',
        synopsis: 'Dive into the colorful and diverse world of fish species.',
      ),
      BookModel(
        title: 'Dogs: Man\'s Best Friend',
        genre: 'Domestic Animals',
        pricePerDay: 14000,
        cover:
            'https://images.unsplash.com/photo-1587300003388-59208cc962cb?w=400',
        synopsis: 'The history and bond between humans and dogs through ages.',
      ),
    ];
  }
}
