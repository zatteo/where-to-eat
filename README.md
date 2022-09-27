Passwordless restaurant reservation system.

API to try on Heroku : https://where-to-eat-mvms.herokuapp.com/

# List restaurants

Restaurants are saved in a postgres DB on Heroku.

```
curl -X GET https://where-to-eat-mvms.herokuapp.com/restaurants -H 'Content-Type: application/json'
```

```
[
  {
    "id": 1,
    "name": "Les délices du Liban",
    "cooking_type": "lebanese",
    "price": 10,
    "city": "Bordeaux",
    "longitude": 40.714,
    "latitude": -74.006,
    "created_at": "2022-09-27T10:06:17.721Z",
    "updated_at": "2022-09-27T10:06:17.721Z"
  },
  {
    "id": 2,
    "name": "Bistrot",
    "cooking_type": "french",
    "price": 20,
    "city": "Bordeaux",
    "longitude": 41.125,
    "latitude": -72.152,
    "created_at": "2022-09-27T10:06:17.727Z",
    "updated_at": "2022-09-27T10:06:17.727Z"
  },
  {
    "id": 3,
    "name": "Emperor Sushi",
    "cooking_type": "sushi",
    "price": 10,
    "city": "Paris",
    "longitude": 42.162,
    "latitude": -70.412,
    "created_at": "2022-09-27T10:06:17.731Z",
    "updated_at": "2022-09-27T10:06:17.731Z"
  }
]
```

# List restaurants with city filter

```
curl -X GET https://where-to-eat-mvms.herokuapp.com/restaurants -H 'Content-Type: application/json' -d '{"city":"Bordeaux"}'

```
```
[
  {
    "id": 1,
    "name": "Les délices du Liban",
    "cooking_type": "lebanese",
    "price": 10,
    "city": "Bordeaux",
    "longitude": 40.714,
    "latitude": -74.006,
    "created_at": "2022-09-27T10:06:17.721Z",
    "updated_at": "2022-09-27T10:06:17.721Z"
  },
  {
    "id": 2,
    "name": "Bistrot",
    "cooking_type": "french",
    "price": 20,
    "city": "Bordeaux",
    "longitude": 41.125,
    "latitude": -72.152,
    "created_at": "2022-09-27T10:06:17.727Z",
    "updated_at": "2022-09-27T10:06:17.727Z"
  }
]
```

# Book a reservation
```
curl -X POST https://where-to-eat-mvms.herokuapp.com/reservations -H 'Content-Type: application/json' -d '{"name":"Patrick", "people": 8, "date": "2022-10-10 18:00:00", "email": "hello@zatteo.com", "restaurant_id": 1}'
```
```
{
  "id": 8,
  "name": "Patrick",
  "people": 8,
  "date": "2022-10-10T18:00:00.000Z",
  "restaurant_id": 1,
  "created_at": "2022-09-27T12:59:50.254Z",
  "updated_at": "2022-09-27T12:59:50.254Z",
  "token": "ADCNRwDVzg28MESQqQ3HEp4bDmGWy1GL",
  "email": "hello@zatteo.com"
}
```

Reservations are saved in a postgres DB on Heroku.

If you entered a good email, you should receive an email with a summary of the reservation and a cancellation link. Sometimes there are issues sending the email. Just try again. It's connected to one of my OVH mail account which is not built for this.


Bon appétit :)
