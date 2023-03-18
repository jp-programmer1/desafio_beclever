export const QUERY_REGISTER = `SELECT idEmployee, account.name as name, account.lastname as lastname, account.gender as gender, type, date, businessLocation FROM register ` +
  `LEFT JOIN account ON account.id = register.idEmployee WHERE`;

export const TYPES = {
  ENTER: "enter",
  GO_OUT: "go_out"
}
export const BUSINESS_LOCATION = {
  BRASIL: "brasil",
  ARGENTINA: "argentina",
  ESPAÑA: "españa"
};
