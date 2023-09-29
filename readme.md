# TrailerFlix
## Proyecto final curso backend Argentina Programa
### Desarrollado por Javier Munizaga
Es una **api rest**, la cual permite al usuario realizar consultas sobre una base de datos de contenidos audiovisuales, ya sea películas o series. Esta cuenta con 6 endpoints los cuales permiten consultar desde el catalogo completo hasta filtrar por nombre o género.

---

| Método | URL | Parámetros | Descripción | 
|--|--|--|--|
| GET | /categorias | NULL | Devuelve las categorías(Películas y Series) |
| GET | /catalogo | NULL | Devuelve todo el catálogo de producciones que hay en la bbdd |
| GET | /catalogo/:id | ID contenido | Devuelve un contenido específico al enviar su id |
| GET | /catalogo/nombre/:nombre | nombre del contenido(parcial o total) | Devuelve todos aquellos contenidos que su título coincida con la string enviada como parámetro |
| GET | /catalogo/genero/all | NULL | Devuelve un array con objetos de todos los géneros disponibles |
| GET | /catalogo/genero/:genero | género del contenido(parcial o total) | Devuelve todos aquellos contenidos que su genero coincida con la string enviada como parámetro |
| GET | /catalogo/categoria/:categoria | categoría del contenido(parcial o total) | Devuelve todos aquellos contenidos que su categoría coincida con la string enviada como parámetro |

---

**GET** */categorias*
Status 200:
```
[
  {
    "nombre": "Películas"
  },
  {
    "nombre": "Series"
  }
]
```

---

**GET** */catalogo*
Status 200:
```
[
  {
    "id": 6,
    "poster": "https://www.trailerflix.com.ar/posters/6.jpg",
    "título": "Enola Holmes",
    "categoria": "Películas",
    "genero": " Ficción, Drama, Misterio",
    "resumen": "La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.",
    "temporadas": "N/A",
    "reparto": " Millie Bobby Brown, Henry Cavill, Sam Claflin, Helena Bonham Carter, Louis Partridge, Adeel Akhtar",
    "trailer": ""
  },
  {...}
]
```

---

**GET** */catalogo/:id*
Status 200 (/catalogo/4):
```
[
  {
    "id": 4,
    "poster": "https://www.trailerflix.com.ar/posters/4.jpg",
    "título": "The Umbrella Academy",
    "categoria": "Series",
    "genero": " Ciencia Ficción, Fantasía",
    "resumen": "La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.",
    "temporadas": "1",
    "reparto": " Tom Hopper, David Castañeda, Emmy Raver-Lampman, Robert Sheehan, Aidan Gallagher, Elliot Page",
    "trailer": ""
  }
]
```
Status 400:
En caso que el parámetro no sea un número:
```
{
  "message": "El código enviado debe ser un número"
}
```
En caso de que no exista el id:
```
{
  "message": "El código enviado no corresponde a un contenido"
}
```

---

**GET** */catalogo/nombre/:nombre*
Status 200 (/catalogo/nombre/mand):
```
[
  {
    "id": 3,
    "poster": "https://www.trailerflix.com.ar/posters/3.jpg",
    "título": "The Mandalorian",
    "categoria": "Series",
    "genero": " Ciencia Ficción, Fantasía",
    "resumen": "Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.",
    "temporadas": "2",
    "reparto": " Pedro Pascal, Carl Weathers, Misty Rosas, Chris Bartlett, Rio Hackford, Giancarlo Esposito",
    "trailer": "https://www.youtube.com/embed/aOC8E8z_ifw"
  }
]
```
Status 400:
```
{
  "message": "La busqueda realizada no arrojo resultados, por favor intente con otra"
}
```

---

**GET** */catalogo/genero/all*
Status 200:
```
{
  "message": "Generos Disponibles",
  "generos": [
    {
      "nombre": "Ciencia Ficción"
    },
    {
      "nombre": "Fantasía"
    },
    {...}
]
```
---

**GET** */catalogo/genero/:genero*
Status 200 (/catalogo/genero/ficc):
```
[
  {
    "id": 6,
    "poster": "https://www.trailerflix.com.ar/posters/6.jpg",
    "título": "Enola Holmes",
    "categoria": "Películas",
    "genero": " Ficción, Drama, Misterio",
    "resumen": "La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.",
    "temporadas": "N/A",
    "reparto": " Millie Bobby Brown, Henry Cavill, Sam Claflin, Helena Bonham Carter, Louis Partridge, Adeel Akhtar",
    "trailer": ""
  },
  {
    "id": 19,
    "poster": "https://www.trailerflix.com.ar/posters/19.jpg",
    "título": "Aves de presa y la fantabulosa emancipación de una Harley Quinn",
    "categoria": "Películas",
    "genero": " Acción, Ficción, Comedia",
    "resumen": "Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.",
    "temporadas": "N/A",
    "reparto": " Margot Robbie, Ewan McGregor, Mary Elizabeth Winstead, Jurnee Smollett, Rosie Perez, Chris Messina",
    "trailer": ""
  },
  {...}
]
```
Status 400:
```
{
  "message": "La busqueda realizada no arrojo resultados, por favor intente con otra"
}
```

---

**GET** */catalogo/categoria/:categoria*
Status 200 (/catalogo/categoria/pel):
```
[
  {
    "id": 6,
    "poster": "https://www.trailerflix.com.ar/posters/6.jpg",
    "título": "Enola Holmes",
    "categoria": "Películas",
    "genero": " Ficción, Drama, Misterio",
    "resumen": "La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.",
    "temporadas": "N/A",
    "reparto": " Millie Bobby Brown, Henry Cavill, Sam Claflin, Helena Bonham Carter, Louis Partridge, Adeel Akhtar",
    "trailer": ""
  },
  {
    "id": 7,
    "poster": "https://www.trailerflix.com.ar/posters/7.jpg",
    "título": "Guasón",
    "categoria": "Películas",
    "genero": " Crimen, Suspenso, Drama",
    "resumen": "Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.",
    "temporadas": "N/A",
    "reparto": " Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Shea Whigham",
    "trailer": "https://www.youtube.com/embed/zAGVQLHvwOY"
  },
  {...}
]
```
Status 400:
```
{
  "message": "La busqueda realizada no arrojo resultados, por favor intente con otra"
}
```