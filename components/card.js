//importo de librerias externas
import React, {useEffect} from 'react'
import {StyleSheet,Text,TouchableOpacity,ScrollView,View,Pressable,Image,Dimensions} from 'react-native'
import {useNavigation} from '@react-navigation/native';

//importo acciones de redux
import {useDispatch, useSelector} from 'react-redux'
import cityActions from '../redux/actions/cityActions'

export default function Card (props) {
    const navigation = useNavigation()

    var photo = 'http://mytinerary-borraz.herokuapp.com'+props.city.photo
    //console.log(photo)
    return (
        <TouchableOpacity onPress={()=>navigation.navigate('Itineraries',{id: props.city._id})}>
            <View style={styles.absolute}>
                <Text style={styles.fredokaTitle}>{props.city.city}</Text>
            </View>
            <Image source={{uri: photo}} style={{width: '100%', height: 250}}/>
        </TouchableOpacity>
    )
}

//configuro hoja de estiloss
const styles = StyleSheet.create({
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
        fontSize: 30,
        textAlign: 'center',
        padding: 10,
        textShadowColor: 'white',
        textShadowOffset: {width: 0,height: 2},
        textShadowRadius: 1
    }
})