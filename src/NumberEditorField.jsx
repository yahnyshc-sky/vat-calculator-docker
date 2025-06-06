import React from 'react';

const NumberEditorField = (props) => {
    return (
        <input type="number"
            id="num"
            value={props.value}
            onChange={(event) => { props.valueChanged(+event.target.value); }}
        />
    );
}

export default NumberEditorField;
