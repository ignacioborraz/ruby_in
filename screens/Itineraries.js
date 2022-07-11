//importo de librerias externas
import React, {useEffect, useState} from 'react'
import {StyleSheet,Text,ScrollView,View,Image,ImageBackground,Dimensions} from 'react-native'
import {FredokaOne_400Regular} from '@expo-google-fonts/dev'
import {Licorice_400Regular} from '@expo-google-fonts/dev'
import AppLoading from 'expo-app-loading'
import {useFonts} from 'expo-font'

//importo componentes locales
import CardsItinerary from '../components/cardsItinerary'

//importo acciones de redux
import {useDispatch, useSelector} from 'react-redux'
import cityActions from '../redux/actions/cityActions'
import tineraryActions from '../redux/actions/tineraryActions'

var {height} = Dimensions.get('window')

export default function Itineraries(props) {

    const{id} = props.route.params
    const dispatch = useDispatch()

    useEffect(() => {
        dispatch(cityActions.oneCity(id))
    },[])
    const oneCityFromRedux = useSelector(store => store.cityReducer.oneCity)
    //console.log(oneCityFromRedux)

    useEffect(() => {
        dispatch(tineraryActions.findFromCity(id))
    },[])
    const tinFromRedux = useSelector(store => store.tineraryReducer.filterTin)
    //console.log(tinFromRedux)

    let [fonts] = useFonts({FredokaOne_400Regular,Licorice_400Regular})
    if (!fonts) {return <AppLoading />}

    var photo = 'http://mytinerary-borraz.herokuapp.com'+oneCityFromRedux.photo

    return (
        <View style={styles.home}>
            <ImageBackground source={require('../assets/photos/background.jpg')} resizeMode="cover" style={styles.backGhome}>
                <View style={styles.backGhome}>
                    <ScrollView style={styles.body}>
                        <View style={styles.absolute}>
                            <Text style={styles.fredokaTitle}>{oneCityFromRedux.city}</Text>
                            <Text style={styles.fredokaSubtitle}>{oneCityFromRedux.country} - {oneCityFromRedux.continent}</Text>
                        </View>
                        <Image source={{uri: photo}} style={{width: '100%', height: 250}}/>
                        {tinFromRedux.length > 0 ?
                            <CardsItinerary tinDat={tinFromRedux} /> :
                            <View style={styles.fredoka}>
                                <Text style={styles.fredoka}>no <Text style={styles.licorice}> Tineraries </Text> yet!</Text>
                            </View>
                        }
                    </ScrollView>
                </View>
            </ImageBackground>
        </View>
    )
}

//configuro hoja de estilos
const styles = StyleSheet.create({
    home: {
        flex: 1,
        flexDirection: 'column',
        width: "100%",
        backgroundColor: 'rgba(196, 165, 126, 0.4)'
    },
    backGhome: {
        width: '100%',
        height: height,
        margin: 0,
        padding: 0,
        textAlign: 'center',
        alignItems: 'center',
        justifyContent: 'flex-start',
        backgroundColor: 'rgba(196, 165, 126, 0.4)'
    },
    body: {
        flex: 1,
        width: '100%',
        flexDirection: 'column',
        textAlign: 'center',
        marginTop: 10,
        marginBottom: 10
    },
    absolute: {
        zIndex: 10,
        position: "absolute",
        width: '100%',
        height: 250,
        alignItems: 'center',
        justifyContent: 'center',
        backgroundColor: 'rgba(196, 165, 126, 0.4)'
    },
    fredokaTitle: {
        fontFamily: 'FredokaOne_400Regular',
        fontSize: 40,
        textAlign: 'center',
        textShadowColor: 'white',
        textShadowOffset: {width: 0,height: 2},
        textShadowRadius: 1
    },
    fredokaSubtitle: {
        fontFamily: 'FredokaOne_400Regular',
        fontSize: 20,
        paddingTop: 10,
        textAlign: 'center',
        textShadowColor: 'white',
        textShadowOffset: {width: 0,height: 2},
        textShadowRadius: 1
    },
    fredoka: {
        fontFamily: 'FredokaOne_400Regular',
        textAlign: 'center'
    },
    licorice: {
        fontSize: 60,
        fontFamily: 'Licorice_400Regular',
        textShadowColor: 'white',
        textShadowOffset: {width: 0,height: 2},
        textShadowRadius: 1,
    },
})