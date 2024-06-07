import mongoose, { mongo } from "mongoose";

// async function conectaNaDatabase() {
//   mongoose.connect(process.env.DB_CONNECTION_STRING);
//   return mongoose.connection;
// };

async function conectaNaDatabase() {
  mongoose.connect(
    "mongodb+srv://admin:admin123@cluster0.9vvyzry.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
  );
  return mongoose.connection;
}
export default conectaNaDatabase;
