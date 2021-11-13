/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React, {Component, useState} from 'react';
import {Button, StyleSheet, Text, View} from 'react-native';
import ButtonCustom from './components/button/index';

const Test = () => {
  const [num, setNum] = useState(0);

  const handleUp = () => {
    setNum(prevNum => prevNum + 1);
    setNum(prevNum => prevNum + 1);
  };

  return (
    <View>
      <Text style={{color: 'white', fontSize: 20}}>{num}</Text>
      <Button onPress={handleUp} title="Press me" />
    </View>
  );
};

class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      counter: 0,
    };

    console.log('constructor');

    this.handleUp = this.handleUp.bind(this);
    this.handleDown = this.handleDown.bind(this);
  }

  componentWillMount() {
    console.log('componentWilMount');
  }

  componentDidMount() {
    // Peticiones asíncronas
    this.setState({counter: 9000});
    console.log('componentDidMount');
  }

  handleUp() {
    const {counter: ct} = this.state;
    this.setState({counter: ct + 1});
  }

  handleDown() {
    const {counter: ct} = this.state;
    this.setState({counter: ct - 1});
  }

  render() {
    const {counter} = this.state;

    console.log('render');

    return (
      <View style={styles.container}>
        <Test />
        <View style={styles.subcontainer}>
          <ButtonCustom label="-" action={this.handleDown} />
          <View style={styles.counterContainer}>
            <Text style={styles.counter}>{counter}</Text>
          </View>
          <ButtonCustom label="+" action={this.handleUp} />
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#2c3e50',
    justifyContent: 'center',
  },
  subcontainer: {
    height: 50,
    width: '100%',
    paddingHorizontal: 10,
    flexDirection: 'row',
  },
  counterContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  counter: {
    fontSize: 40,
    color: '#fff',
    fontWeight: 'bold',
  },
});

export default App;
