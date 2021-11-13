/* eslint-disable react/prop-types */
import React, {Component} from 'react';
import {Text, TouchableOpacity, StyleSheet} from 'react-native';
import PropTypes from 'prop-types';

// const ButtonCustom = ({label, action}) => {
//   return (
//     <TouchableOpacity style={styles.btn} onPress={action}>
//       <Text style={styles.btnText}>{label}</Text>
//     </TouchableOpacity>
//   );
// };

class ButtonCustom extends Component {
  constructor(props) {
    super(props);

    console.log('chlid constructor');
  }

  componentWillMount() {
    console.log('chlid componentWillMount');
  }

  componentDidMount() {
    console.log('chlid componentDidMount');
  }

  componentWillReceiveProps() {
    console.log('child componentWillReceiveProps');
  }

  render() {
    const {label, action} = this.props;
    console.log('child render');

    return (
      <TouchableOpacity style={styles.btn} onPress={action}>
        <Text style={styles.btnText}>{label}</Text>
      </TouchableOpacity>
    );
  }
}

ButtonCustom.defaultProps = {
  label: 'Button',
  action: () => alert('This is an action button'),
};

ButtonCustom.propTypes = {
  label: PropTypes.string.isRequired,
  action: PropTypes.func,
};

const styles = StyleSheet.create({
  btn: {
    width: 50,
    height: 50,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#ecf0f1',
  },

  btnText: {
    fontSize: 25,
    color: '#7f8c8d',
    fontWeight: 'bold',
  },
});

export default ButtonCustom;
