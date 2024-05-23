import express from "express";
import router from "./routes/pago.routes.js";

const app = express()

app.use(express.json())

app.use("/pago", router)

app.listen(3000, () =>{
    console.log("Conectado en el puerto 3000")
})