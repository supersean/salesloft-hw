import React from 'react';

const List = ({items}) => (
  <div className="single-list">
    <table>
      <thead>
        <th>Name</th>
        <th>Email</th>
        <th>Job Title</th>
      </thead>
      <tbody>
        {items.map( item => {
          return (
            <tr key={item.id}>
              <td>{item.name}</td>
              <td>{item.email}</td>
              <td>{item.job_title}</td>
            </tr>
          )
        })}
      </tbody>
      
    </table>
  </div>
)

export default List;