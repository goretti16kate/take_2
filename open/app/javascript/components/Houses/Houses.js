import React, { useState, useEffect} from 'react'
import axios from 'axios'

const Houses = () => {
    const [houses, setHouses] = useState([])

    useEffect(() => {
        //get all of our houses from api
        //update houses in our state
        axios.get('/api/v1/houses.json')
        .then( resp => console.log(resp) )
        .catch(resp => console.log(resp))
    })
    return (
    <div>This is the Houses#index view of our app</div>
     )

}
export default Houses