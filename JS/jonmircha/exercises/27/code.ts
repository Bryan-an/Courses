/* 27) Programa una clase llamada Pelicula.

La clase recibirá un objeto al momento de instanciarse con los siguentes datos: id de la película en IMDB, titulo, director, año de estreno, país o países de origen, géneros y calificación en IMBD.
  - Todos los datos del objeto son obligatorios.
  - Valida que el id IMDB tenga 9 caracteres, los primeros 2 sean letras y los 
     7 restantes números.
  - Valida que el título no rebase los 100 caracteres.
  - Valida que el director no rebase los 50 caracteres.
  - Valida que el año de estreno sea un número entero de 4 dígitos.
  - Valida que el país o paises sea introducidos en forma de arreglo.
  - Valida que los géneros sean introducidos en forma de arreglo.
  - Valida que los géneros introducidos esten dentro de los géneros 
     aceptados*.
  - Crea un método estático que devuelva los géneros aceptados*.
  - Valida que la calificación sea un número entre 0 y 10 pudiendo ser 
    decimal de una posición.
  - Crea un método que devuelva toda la ficha técnica de la película.
  - Apartir de un arreglo con la información de 3 películas genera 3 
    instancias de la clase de forma automatizada e imprime la ficha técnica 
    de cada película.

* Géneros Aceptados: Action, Adult, Adventure, Animation, Biography, Comedy, Crime, Documentary ,Drama, Family, Fantasy, Film Noir, Game-Show, History, Horror, Musical, Music, Mystery, News, Reality-TV, Romance, Sci-Fi, Short, Sport, Talk-Show, Thriller, War, Western. */

type Genre =
  | "Action"
  | "Adult"
  | "Adventure"
  | "Animation"
  | "Biography"
  | "Comedy"
  | "Crime"
  | "Documentary "
  | "Drama"
  | "Family"
  | "Fantasy"
  | "Film Noir"
  | "Game-Show"
  | "History"
  | "Horror"
  | "Musical"
  | "Music"
  | "Mystery"
  | "News"
  | "Reality-TV"
  | "Romance"
  | "Sci-Fi"
  | "Short"
  | "Sport"
  | "Talk-Show"
  | "Thriller"
  | "War"
  | "Western";

interface MovieData {
  id: string;
  title: string;
  director: string;
  year: number;
  countries: string[];
  genres: Genre[];
  rating: number;
}

class Movie {
  data: MovieData;

  constructor(data: MovieData) {
    this.validateData(data);
    this.data = data;
  }

  validateData({ id, title, director, year, rating }: MovieData) {
    this.validateId(id);
    this.validateTitle(title);
    this.valideteDirector(director);
    this.validateYear(year);
    this.validateRating(rating);
  }

  validateId(id: string): void {
    if (!/^[a-z]{2}\d{7}$/i.test(id)) {
      throw new Error("Invalid id");
    }
  }

  validateTitle(title: string): void {
    if (title.length > 100) {
      throw new Error("Invalid title");
    }
  }

  valideteDirector(director: string): void {
    if (director.length > 50) {
      throw new Error("Invalid director");
    }
  }

  validateYear(year: number): void {
    if (!Number.isInteger(year) || year.toString().length !== 4) {
      throw new Error("Invalid year");
    }
  }

  static getAcceptedGenres(): string[] {
    return [
      "Action",
      "Adult",
      "Adventure",
      "Animation",
      "Biography",
      "Comedy",
      "Crime",
      "Documentary ",
      "Drama",
      "Family",
      "Fantasy",
      "Film Noir",
      "Game-Show",
      "History",
      "Horror",
      "Musical",
      "Music",
      "Mystery",
      "News",
      "Reality-TV",
      "Romance",
      "Sci-Fi",
      "Short",
      "Sport",
      "Talk-Show",
      "Thriller",
      "War",
      "Western",
    ];
  }

  validateRating(rating: number): void {
    if (
      !(
        rating >= 0 &&
        rating <= 10 &&
        (Number.isInteger(rating)
          ? true
          : rating.toString().split(".")[1].length == 1)
      )
    ) {
      throw new Error("Invalid rating");
    }
  }

  getDataSheet(): MovieData {
    return this.data;
  }
}

const moviesData: MovieData[] = [
  {
    id: "fd1234567",
    title: "title 1",
    director: "director 1",
    year: 2003,
    countries: ["contry1", "contry2", "country3"],
    genres: ["Action", "Comedy", "Adult"],
    rating: 4,
  },
  {
    id: "fd1234567",
    title: "title 2",
    director: "director 2",
    year: 2003,
    countries: ["contry1", "contry2", "country3"],
    genres: ["Action", "Comedy", "Adult"],
    rating: 10,
  },
  {
    id: "fd1234567",
    title: "title 3",
    director: "director 3",
    year: 2020,
    countries: ["contry1", "contry2", "country3"],
    genres: ["Action", "Comedy", "Adult"],
    rating: 7,
  },
];

moviesData.forEach((data) => {
  const movie = new Movie(data);
  console.log(movie.getDataSheet());
});
