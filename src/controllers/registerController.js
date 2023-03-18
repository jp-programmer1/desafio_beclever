import { BUSINESS_LOCATION, TYPES } from "./utils";

const MESSAGE_ERROR_FIELDS = "Error in the type and business location fields";
const registerController = async (connection, payload = {}, callback) => {
  const { type, businessLocation } = payload;

  try {
    if (TYPES[type.toUpperCase()] && BUSINESS_LOCATION[businessLocation.toUpperCase()]) {
      connection.query(`INSERT INTO register set ?`, payload, (err) => {
        if (err) throw err;
        else callback(payload)
      });
    } else {
      throw MESSAGE_ERROR_FIELDS;
    }
  } catch (error) {
    throw error;
  }
}


  export default registerController;