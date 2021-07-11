import * as React from "react"

class HelloMessage extends React.Component<Props> {
  render () {
    return (
      <React.Fragment>
        Hello {this.props.name}!
      </React.Fragment>
    );
  }
}

interface Props {
  name: string
}

export default HelloMessage
