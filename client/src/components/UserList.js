import React from 'react'
import styled from 'styled-components'
import List from './List'

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
class UserList extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      users: []
    }
  }

  // fetch users here
  componentDidMount() {
    this.setState({
      users: ["sean", "tyson", "brayden", "aiden"]
    })
  }

  render() {
    return (
      <FlexBox>
        <div className="UserList">
          <header className="UserList-header">
            <h1 className="UserList-title">Userlist Component</h1>
            <List items={this.state.users} />
          </header>
        </div>
      </FlexBox>
    )
  }
}

export default UserList;