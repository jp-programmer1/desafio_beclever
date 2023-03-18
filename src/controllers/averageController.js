import { QUERY_REGISTER, TYPES } from "./utils";

const MESSAGE_ERROR = "Missing dateFrom and dateTo fields";

const averageController = (connection, payload, callback) => {
  const { dateFrom, dateTo } = payload;
  let query = QUERY_REGISTER;

  if (dateFrom && dateTo) query += ` date BETWEEN '${dateFrom}' and '${dateTo}'`;
  else throw MESSAGE_ERROR;

  connection.query(query, (error, results = []) => {
    if (error) throw error;

    const businessLocation = {
      BRASIL: {
        average: 0
      },
      ARGENTINA: {
        average: 0
      },
      ESPAÑA: {
        average: 0
      }
    };

    if (results.length > 0) {
      results.forEach(e => {
        const location = e.businessLocation.toUpperCase();
        if (businessLocation[location]) {
          businessLocation[location].average = businessLocation[location].average + 1;
        }
      })
    }

    callback(businessLocation);
  });
}

export default averageController