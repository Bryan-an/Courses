import React from 'react';
import {Dimensions, StyleSheet, View} from 'react-native';
import {PanGestureHandler} from 'react-native-gesture-handler';

const {width} = Dimensions.get('window');
const SLIDER_WIDTH = width - 100;
const SLIDER_HEIGHT = 50;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#a9cbee',
  },
});

export default () => {
  return (
    <View style={styles.container}>
      <View>
        <PanGestureHandler />
      </View>
    </View>
  );
};
