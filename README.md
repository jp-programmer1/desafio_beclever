
##  DESAFIO API REST

  

###  Getting Started 🚀

`npm install`

`npm run start`

  
  

###  Documentation 📚
#### Field options
  * registerType: `enter | go_out`
* businessLocation: `Brasil | Argentina | España`

###  Register

/register ```POST```
```json
{
  "idEmployee": "11", 
  "registerType": "enter", 
  "businessLocation": "Brasil"
}
```

###  Search
/search ```GET```
```json
{
  "dateFrom": "2023-03-14",
  "dateTo": "2023-03-20",
  "businessLocation": "Brasil",
  "descriptionFilter": {
	"name": "Florencia",
	"lastname": "Fernandez"
  }
}
```

###  Average
/average ```GET```
```json
{
  "dateFrom": "2023-03-14",
  "dateTo": "2023-03-20"
}
```