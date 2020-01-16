import React from 'react'
import axios from 'axios'
import List from './List'


class Duplicates extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      duplicates: [],
      errors: []
    }
  }
  
  componentDidMount() {

  }

  getDuplicates() {
    axios.get('/api/duplicates')
      .then(res => {
        const duplicates = res.data.duplicates;
        const errors = res.data.errors;
        this.setState({
          duplicates, 
          errors
        })
      })
  }

  render() {
    return (
      <div className="Duplicates">
        <header className="Duplicates-header">
          <h1 className="Duplicates-title">Duplicates</h1>
        </header>
        <button onClick={() => this.getDuplicates()}>Get Duplicates</button>
        <List
          list_id="duplicates"
          items={this.state.duplicates.map((x,i) => [i, x.base, x.duplicates.join(", ")])}
          headers={["Base", "Duplicates"]}
          />
          <div className="Duplicates-errors">
            {this.state.errors}
          </div>
      </div>
    )
  }
}

export default Duplicates