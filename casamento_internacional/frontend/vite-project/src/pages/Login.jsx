import { useState } from "react"
import { API } from "../services/api"

import "./Login.css"

export default function Login({onlogin}){
    const [email, setEmail] = useState("")
    const [password, setPassword] = useState("")

    async function handleLogin(e){
      e.preventDefault()
      try{
        const res = await API.auth.post("/login",{
            email,
            senha:password,
        })
        const token = res.data.token || res.data.acess_token
        localStorage.setItem("token", token)
        onlogin(token)
      } catch (err) {
        console.log(err.response?.data)
        alert("erro no login")
      }
        
    }
    return (
        <div className="login-container">
            <form onSubmit={handleLogin} className="login-form">
                <h1 className="login-title">Login</h1>
                <title>Sistema de convidados</title>
                <input
                    className="login-input"
                    placeholder="email"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                />

                <input
                    className="login-input"
                    placeholder="senha"
                    type="password"
                    value={password}
                    onChange={(e)=>setPassword(e.target.value)}
                />
                <button className="login-button" type="submit">
                    Entrar
                </button>
            </form>
        </div>
    )

}
