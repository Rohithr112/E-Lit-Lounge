import '../models/books.dart';

List<Book> getBooksByType(Category category) {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.category == category).toList();
}

List<Book> getBooksByPurchased() {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.isPurchased == true).toList();
}

List<Book> getBooksByFree() {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.isPurchased == true).toList();
}

List<Book> getBooksByOpenPage(int page) {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.lastOpenPage >= page).toList();
}

List<Book> getAllBooks() {
  return [
    Book(
      title: 'REMINDER OF HIM COLLEEN HOOVER',
      category: Category.artAndLit,
      isbn: '9780140174922',
      price: 9.99,
      isFree: false,
      isPurchased: false,
      description:
          'A comprehensive guide to the art of writing fiction, covering aspects such as character development, plot construction, and narrative techniques.',
      rating: 4.5,
      yearRelease: 2021,
      pages: 320,
      authorName: 'David Lodge',
      imageUrl:
          'https://m.media-amazon.com/images/I/418HLIXlxCL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 50,
      totalXP: 100,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'The Lean Startup',
      category: Category.business,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description:
          'An innovative approach to building and growing startups, focusing on rapid experimentation, validated learning, and iterative product development.',
      rating: 4.8,
      pages: 336,
      yearRelease: 2020,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/51mFoFmu0EL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 240,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      category: Category.comics,
      price: 0.00,
      isFree: true,
      isPurchased: false,
      yearRelease: 2020,
      imageUrl:
          'https://m.media-amazon.com/images/I/513lEQAd06L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 198,
      title: 'The Power of Now',
      isbn: '9781577314806',
      authorName: 'Eckhart Tolle',
      description:
          'A spiritual guide to living in the present moment and finding enlightenment, offering practical advice and insights for achieving inner peace and happiness.',
      rating: 4.6,
      pages: 236,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 4',
      category: Category.health,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/61dIUbhBA3L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 5',
      category: Category.fantasy,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41pTqRlersL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 6',
      category: Category.cooking,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/51VC+Vru96L._SY344_BO1,204,203,200_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 7',
      category: Category.history,
      isbn: '987654321',
      price: 0.00,
      isFree: true,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41ZLnc34EiL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 8',
      category: Category.philosophy,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/416vxEWfI6L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 9',
      category: Category.science,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/51CLYm-FruL._SX320_BO1,204,203,200_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 9',
      category: Category.technology,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/51CLYm-FruL._SX320_BO1,204,203,200_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 10',
      category: Category.travel,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/51B7kuFwQFL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 11',
      category: Category.children,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41UG6tNeHBL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 12',
      category: Category.mystery,
      isbn: '987654321',
      price: 0.00,
      isFree: true,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41pehfGTI5L._SX311_BO1,204,203,200_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 13',
      category: Category.selfHelp,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41HvCijjVbL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 14',
      category: Category.romance,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41x4eg5KyGL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 15',
      category: Category.religion,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41zWWzbiHpL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 16',
      category: Category.romance,
      isbn: '987654321',
      price: 0.00,
      isFree: true,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/51yfA5Mo1hL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 17',
      category: Category.science,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41pTqRlersL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 18',
      category: Category.fantasy,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41hE3aJ7C0L._SX311_BO1,204,203,200_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 19',
      category: Category.fantasy,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41Y8Fw7UhQL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 20',
      category: Category.artAndLit,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41ORbvdT5ZL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 21',
      category: Category.business,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/4120mVtteHL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 22',
      category: Category.history,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41a2cF5TwUL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 23',
      category: Category.philosophy,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41tseIR-CSL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 24',
      category: Category.religion,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/51qtraYnQOL._SX311_BO1,204,203,200_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
    Book(
      title: 'Book 25',
      category: Category.selfHelp,
      isbn: '987654321',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Author 2',
      imageUrl:
          'https://m.media-amazon.com/images/I/41+QqNWz2qL._SY344_BO1,204,203,200_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
            pdfPath: 'assets/ISDP2012.pdf', // Specify PDF path for the book

    ),
  ];
}
// List<Book> getAllBooks() {
//   return [
//     Book(
//       title: 'REMINDER OF HIM COLLEEN HOOVER',
//       category: Category.artAndLit,
//       isbn: '9780140174922',
//       price: 9.99,
//       isFree: false,
//       isPurchased: false,
//       description:
//           'A comprehensive guide to the art of writing fiction, covering aspects such as character development, plot construction, and narrative techniques.',
//       rating: 4.5,
//       yearRelease: 2021,
//       pages: 320,
//       authorName: 'David Lodge',
//       imageUrl:
//           'https://m.media-amazon.com/images/I/418HLIXlxCL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
//       lastOpenPage: 50,
//       totalXP: 100,
//       pdfPath: 'assets/reminder_of_him_colleen_hoover.pdf', // Add PDF path
//     ),
//     Book(
//       title: 'The Lean Startup',
//       category: Category.business,
//       isbn: '9780307887894',
//       price: 12.99,
//       isFree: false,
//       isPurchased: false,
//       description:
//           'An innovative approach to building and growing startups, focusing on rapid experimentation, validated learning, and iterative product development.',
//       rating: 4.8,
//       pages: 336,
//       yearRelease: 2020,
//       authorName: 'Author 2',
//       imageUrl:
//           'https://m.media-amazon.com/images/I/51mFoFmu0EL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
//       lastOpenPage: 0,
//       totalXP: 240,
//       pdfPath: 'assets/the_lean_startup.pdf', // Add PDF path
//     ),
//     // Add more books with PDF paths as needed
//   ];
// }