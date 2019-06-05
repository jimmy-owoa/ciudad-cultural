import React from "react"
import PropTypes from "prop-types"
class HelloWorld extends React.Component {
  render () {
    const year = Date.now(); 
    return (
      <React.Fragment>
        Greeting: {this.props.greeting} { year }
      </React.Fragment>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
