//importo de librerias externas
import React, {useEffect} from 'react'
import {StyleSheet,Text,ScrollView,View,Pressable,Image,Dimensions} from 'react-native'

//importo componentes locales
import Card from './card'

//importo acciones de redux
import {useDispatch, useSelector} from 'react-redux'
import cityActions from '../redux/actions/cityActions'

export default function Cards (props) {

    const dispatch = useDispatch()
    useEffect(() => {
        dispatch(cityActions.filterCities(props.input))
    },[props.input])
    const filterFromRedux = useSelector(store => store.cityReducer.filterCity)

    let data = props.input ? filterFromRedux : props.cities

    return (
        <>
        {data.length>0 ? 
            data.map( everyCity =>
            <View key={everyCity._id} style={{marginBottom: 10}}>
                <Card city={everyCity} navigation={props.navigation}/>
            </View>) : <>
                <Text style={styles.fredoka}>TYPE ANOTHER CITY PLEASE</Text>
                <Text style={styles.fredoka}>we didn't find that!</Text>
            </>
        }
        </>
    )
}

//configuro hoja de estilos
const styles = StyleSheet.create({
    fredoka: {
        fontFamily: 'FredokaOne_400Regular',
        textAlign: 'center'
    }
})