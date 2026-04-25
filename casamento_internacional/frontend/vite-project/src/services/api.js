import axios from "axios"

const createAPI = (baseURL) => {
    const api = axios.create({baseURL})
    api.interceptors.request.use((config)=>{
        const token = localStorage.getItem("token")
        console.log("token sendo enviado: ", token)

        if (token) {
          config.headers.Authorization = `Bearer ${token}`
        }
        return config
    })
    return api
}

export const API = {
  auth: createAPI("http://localhost:5001"),
  guest: createAPI("http://localhost:5005"),
  user: createAPI("http://localhost:5003"),
}