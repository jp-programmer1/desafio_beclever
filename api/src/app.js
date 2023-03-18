import express from 'express';
import cors from 'cors';
import { connection } from './db/connection';
import registerController from './controllers/registerController';
import searchController from './controllers/searchController';
import averageController from './controllers/averageController';

const app = express();

app.use(cors());
app.options('*', cors());

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

connection.connect((error) => {
  if (error) throw error;
  console.log("connected to database success");
});


app.post('/register', (req, res) => {
  const payload = req.body;
  registerController(
    connection,
    payload,
    (result) => {
      res.json(result);
    });
});

app.get('/search', (req, res) => {
  const payload = req.body;
  searchController(
    connection,
    payload,
    (result) => {
      res.json(result);
    }
  )
});

app.get('/average', (req, res) => {
  const payload = req.body;
  averageController(
    connection,
    payload,
    (result) => {
      res.json(result)
    }
  )
}), 

app.listen(process.env.PORT, (err) => {
  if (err) return console.error(err);
  console.log(`run server, listening PORT: `, process.env.PORT);
})