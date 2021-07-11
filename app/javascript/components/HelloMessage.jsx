import React from "react"
import PropTypes from "prop-types"
class HelloMessage extends React.Component {
  render () {
    return (
      <React.Fragment>
        Hello {this.props.name}!
      </React.Fragment>
    );
  }
}

HelloMessage.propTypes = {
  name: PropTypes.string
};
export default HelloMessage
