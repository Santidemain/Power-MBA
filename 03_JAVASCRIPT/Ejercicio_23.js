const movies = [
  { name: 'Titan A.E.', durationInMinutes: 130 },
  { name: 'Nightmare before Christmas', durationInMinutes: 225 },
  { name: 'Inception', durationInMinutes: 165 },
  { name: 'The Lord of the Rings', durationInMinutes: 967 },
  { name: 'Star Wars: A New Hope', durationInMinutes: 214 },
  { name: 'Terminator', durationInMinutes: 148 }
]

const moviesSmall = movies.filter((movie) => movie.durationInMinutes < 100)
const moviesMedium = movies.filter(
  (movie) => movie.durationInMinutes >= 100 && movie.durationInMinutes < 200
)
const moviesLarge = movies.filter((movie) => movie.durationInMinutes >= 200)

console.log('Películas pequeñas:', moviesSmall)
console.log('Películas medianas:', moviesMedium)
console.log('Películas grandes:', moviesLarge)
