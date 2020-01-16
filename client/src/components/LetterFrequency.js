import React from 'react'
import styled, { keyframes } from 'styled-components'
import List from './List'
import axios from 'axios'

const FlexBox = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
  flex-flow: column nowrap;
  margin-top: 30px;
`

const Box = styled.div`
  display: grid;
  box-shadow: 0 0 6px 0 rgba(58,58,58,0.24);
  width: 827px;
  height: 485px;
  border-top: 6px solid #4a90e2;
  grid-template: 30% 1fr / 1fr;
`

class LetterFrequency extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      letterFrequencies: [],
      errors: []
    }
  }

  componentDidMount() {
  }

  getLetterFrequencies() {
    axios.get('/api/letter_frequencies')
      .then(res => {
        const letterFrequencies = res.data.letterFrequencies;
        const errors = res.data.errors;
        this.setState({
          letterFrequencies: letterFrequencies,
          errors
        });
      })
  }

  render() {
    return (
      <FlexBox>
        <div className="LetterFrequncies">
          <header>
            <h1 className="LetterFrequencies-title">Letter Frequencies</h1>
          </header>
          <button onClick={() => this.getLetterFrequencies()}>Get Letter Frequencies</button>
          <List 
            list_id="letters" 
            items={this.state.letterFrequencies.map( (n, i) => [i, n[0], n[1]])}
            headers={["Char", "Count"]}
          />
          <div className="Errors">
            {this.state.errors.map((error) =>
              <li>
                {error}
              </li>
            )}
          </div>
        </div>
      </FlexBox>
    )
  }
}

export default LetterFrequency;