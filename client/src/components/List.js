import React from 'react';

const List = ({items}) => (
  <div className="single-list">
    {items.map( item => {
      return (<p key={item.toString()}>{item}</p>)
    })}
  </div>
)

export default List;