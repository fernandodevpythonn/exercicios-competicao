import { useEffect, useState } from "react"
import { API } from "../services/api"
import "./Guests.css"

export default function Guests(){
    const [guests,setGuests] = useState([])
    const [loading, setLoading] = useState(true)
    const token = localStorage.getItem("token")
    useEffect(()=>{
        if (!token){
            window.location.replace("/")
            return
        }
        async function loadGuests(){
            try{
                const res = await API.guest.get("/guests",{
                    headers: {
                        Authorization: `Bearer ${token}`,
                    },
                })

                setGuests(res.data)
            } catch (err){
                console.log("erro:", err.response?.data)
                window.location.replace("/")
            }finally {
                setLoading(false)
            }
        }
        loadGuests()
    },[])

    function logout(){
        localStorage.removeItem("token")
        window.location.replace("/")
    }
    return (
        <div className="guests-container">
            <h1 className="guests-title">Lista de convidados</h1>
            <title>sistema de convidados</title>
            {loading && <p className="guests-loading">carregando...</p>}
            {!loading && guests.length === 0 && (
                <p className="guests-empty">nenhum convidado encontrado</p>
            )}
            <div className="guests-list">
                {guests.map((g)=>(
                    <div key={g.id_convidado} className="guest-card">
                      <div className="guest-name">{g.nome}</div>
                      <p className="guest-text">email: {g.email}</p>
                      <p className="guest-text">cpf: {g.cpf}</p>
                    </div>
                ))}
            </div>
            <div className="logout-container">
              <button className="logout-button" onClick={logout}>
                Sair
              </button>
            </div>
        </div>
    )
}