//importo de librerias externas
import React, {useEffect, useState} from 'react'
import {StyleSheet,TextInput,ScrollView,View,ImageBackground,Dimensions} from 'react-native'
import {FredokaOne_400Regular} from '@expo-google-fonts/dev'
import {Licorice_400Regular} from '@expo-google-fonts/dev'
import AppLoading from 'expo-app-loading'
import {useFonts} from 'expo-font'

//importo componentes locales
import Cards from '../components/cards'

//importo acciones de redux
import {useDispatch, useSelector} from 'react-redux'
import cityActions from '../redux/actions/cityActions'

var {height} = Dimensions.get('window')

export default function Cities(props) {
    
    const [input,setInput] = useState("")

    const dispatch = useDispatch()
    useEffect(() => {
        dispatch(cityActions.getCities())
    },[])
    const citiesFromRedux = useSelector(store => store.cityReducer.cities)
    //console.log(citiesFromRedux)

    //const navigation = useNavigation()
    let [fonts] = useFonts({FredokaOne_400Regular,Licorice_400Regular})
    if (!fonts) {return <AppLoading />}

    return (
        <View style={styles.home}>
            <ImageBackground source={require('../assets/photos/background.jpg')} resizeMode="cover" style={styles.backGhome}>
                <View style={styles.backGhome}>
                    <TextInput onChangeText={text => setInput(text)} placeholder="find a city!" style={[styles.input,styles.fredoka]} />
                    <ScrollView style={styles.body}>
                        <Cards input={input} cities={citiesFromRedux} navigation={props.navigation} />
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
    },
    input: {
        width: '100%',
        flexDirection: 'column',
        textAlign: 'center',
        marginTop: 10,
        marginBottom: 10
    },
    fredoka: {
        fontFamily: 'FredokaOne_400Regular',
        textAlign: 'center'
    },
})