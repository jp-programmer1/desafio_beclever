import { QUERY_REGISTER } from "./utils";

const searchController = (connection, payload, callback) => {
  const { dateFrom, dateTo, descriptionFilter, businessLocation } = payload;
  let query = QUERY_REGISTER;
  let and = false;

  if (businessLocation) {
    query += ` businessLocation='${businessLocation}'`;
    and = true;
  }

  if (descriptionFilter) {
    if (descriptionFilter.name) query += `${and ? 'and' : ""} name='${descriptionFilter.name}'`;
    if (descriptionFilter.lastname) query += `${and ? 'and' : ""} lastname='${descriptionFilter.lastname}'`;
  }

  if (dateFrom, dateTo) query += `${and ? 'and' : ""} date BETWEEN '${dateFrom}' and '${dateTo}'`;

  connection.query(query, (error, results) => {
    if (error) throw error;
    callback(results);
  });
}

export default searchController