import React from 'react'
import { Link } from 'gatsby'
import './style.scss'

class Header extends React.Component {
  render() {
    const header = this.props.data

    const headerBlock = (
      <h1>Kinshai</h1>
    )

    return headerBlock
  }
}

export default Header