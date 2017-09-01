OrgaNick's Guide API

OrgaNick's guide is an app for organic vegetable growers where they can see the common pests that affect their crops and the organic treatments available to eliminate those pests.

The deployed app can be found here: https://3point14guy.github.io/OrgaNick-s-Guide-Client/

The github repository for the front end is here: https://github.com/3point14guy/OrgaNick-s-Guide-Client

This API is deployed through Heroku at: https://boiling-dawn-26598.herokuapp.com

This is the repo for the OrgaNick's Guide API.  This API contains tables for vegetables and pests and two join tables, one for the relationship between users and the vegetables they have in the list (gardens) and another table for which pests prefer which vegetables (dinner-and-diners). In the near future, tables will be added for treatments and for which treatments work on which pests (pest-weaknesses).  This API was built with Ruby on Rails.






### Vegeatables

| Verb   | URI Pattern            | Controller#Action  |
|--------|------------------------|--------------------|
| GET    | `/vegetables`          | `vegetables#index` |
| POST   | `/vegetables`          |`vegetables#create` |
| GET    | `/vegetables/:id`      |`vegetables#show`   |
| PATCH  | `/vegetables/:id`      |`vegetables#update` |
| DELETE | `/vegetables/:id`      |`vegetables#destroy`|

Only POST and DELETE are used for this resource to allow users to add and remove vegetable's from their Gardens list.

#### POST /vegetables

Request:

```sh
curl https://boiling-dawn-26598.herokuapp.com/vegetables \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    --data '{
      "vegetable": {
        "name": "'"${NAME}"'",
        "image": "'"${IMAGE}"'",
        "comment": "'"${COMMENT}"'"
      }
    }'
```

```sh
NAME=Broccoli IMAGE=ttp://i.imgur.com/Eckc0rt.jpg COMMENTS="Enter comments here." scripts/veggies/vegetable-create.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "vegetable": {
    "id": 1,
    "name": "broccoli",
    "image": "i.imgur.com/Eckc0rt.jpg"
    "commnet": "Enter comments here."
  }
}
```

#### DELETE /Vegetables

Request:

```sh
https://boiling-dawn-26598.herokuapp.com/vegetables/${ID} \
  --include \
  --request DELETE \
    }
  }'
```

```sh
ID=8 scripts/veggies/vegetables-delete.sh
```

Response:

```md
HTTP/1.1 204 No Content
```


### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

#### GET /users

Request:

```sh
curl http://localhost:4741/users \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "bob@ava.com"
    },
    {
      "id": 1,
      "email": "ava@bob.com"
    }
  ]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:4741/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/user.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 2,
    "email": "bob@ava.com"
  }
}
```

```
