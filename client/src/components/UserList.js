import React from 'react'
import styled from 'styled-components'
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
class UserList extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      users: [],
      currentPage: 1
    }
  }

  // fetch users here
  componentDidMount() {
    this.getPage(1);
  }

  getPage(page) {
    axios.get('/api/users', { params: {"page": page}})
      .then(res => {
        const users = res.data.users;
        const errors = res.data.errors;
        this.setState({users, currentPage: page, errors});
      });
  };

  render() {
    return (
      <FlexBox>
        <div className="UserList">
          <header className="UserList-header">
            <h1 className="UserList-title">Userlist Component</h1>
            <div>
              <p>currentPage: {this.state.currentPage}</p>
              <button onClick={() => this.getPage(this.state.currentPage == 1 ? 1 : this.state.currentPage - 1)}>Previous</button>
              <button onClick={() => this.getPage(this.state.currentPage + 1)}>Next</button>
            </div>
            <List 
              list_id="people" 
              items={this.state.users.map(x => [x.id, x.name, x.email, x.job_title])}
              headers={["Name", "Email", "Job Title"]}
             />
             <div className='userlist-errors'>
               {this.state.errors}
             </div>
          </header>
        </div>
      </FlexBox>
    )
  }
}

export default UserList;