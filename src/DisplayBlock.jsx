import React from 'react';

const DisplayBlock = (props) => {
  return (
    <div className={props.customstyle}>
      {props.label} {props.value}
    </div>
  );
}

export default DisplayBlock;