import React from 'react'; 

const TodoListItem = (props) => {
    return (
        <li key={props.todo.id}>
            <div>Title: {props.todo.title}</div>
            <div>Body: {props.todo.body}</div>
            <div>Done: {props.todo.done.toString()}</div>
        </li>
    );
};

export default TodoListItem; 