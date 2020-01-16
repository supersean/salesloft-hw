import React from 'react';

export default class List extends React.Component {

  constructor(props) {
    super(props)
  }

  createRow(headers, rows) {
    let table_rows = []
    let table_headers = []

    let header_children = []
    for (let i = 0; i < headers.length; i++) {
      header_children.push(<th key={i}>{headers[i]}</th>)
    }
    table_headers.push(<tr>{header_children}</tr>)

    for (let i = 0; i < rows.length; i++) {
      let children = []
      for (let j = 0; j < headers.length; j++) {
        children.push(<td>{rows[i][j+1]}</td>)
      }
      table_rows.push(<tr key={rows[i][0]}>{children}</tr>)
    }
    let table = []
    table.push(<thead>{table_headers}</thead>)
    table.push(<tbody>{table_rows}</tbody>)
    return table
  }

  render() {
    return(
      <table>
        {this.createRow(this.props.headers, this.props.items)}
      </table>
    )
  }

}