## DESAFIO API REST

### Getting Started 🚀
`npm install`
`npm run start`


### Documentation 📚

### Register 
/register

| Method | description |path | body |
|--|--|--|--|--|
| POST | register | /register | `{idEmployee: string, registerType: enter | go_out, businessLocation: Brasil | Argentina | España}`


### Search
/account
| Method | description | rol |path | body |
|--|--|--|--|--|
| GET | find user | user | /:id | |
| GET | get all users | admin | / |
| PUT | update user (unable to send plan and role fields)| user | /:id | |
| DELETE | destroy user (delete associate riders and publicRiders) | user | /:id |

### Rider
/rider
| Method | description | rol |path | body |
|--|--|--|--|--|
| GET | account riders list | user && admin | / | |
| GET | find rider id | user && admin | /:id |
| POST | create rider, field name is required | user && admin | / | `{name: string}` |
| PUT | update rider, field name is required | user && admin | /:id | `{name: string}` |
| DELETE | destroy rider and associate publicRider | user && admin | /:id | |

### Public Rider
/publicRider
| Method | description | rol |path | body |
|--|--|--|--|--|
| GET | check Public Rider | user && admin | /:identifier | |
| POST | create Public Rider | user && admin | / | `{accountId: string, riderId: string}` |
| PUT | update rider, field name is required | user && admin | /:id | `{action: publish / unpublish, accountId: string}` |
