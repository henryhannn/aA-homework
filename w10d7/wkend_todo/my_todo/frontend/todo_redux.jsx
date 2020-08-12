import React from 'react'; 
import ReactDOM from 'react-dom'; 
import configureStore from './store/store';
import {receiveTodos, receiveTodo} from './actions/todo_actions';
import Root from './components/root'; 
import allTodos from './reducers/selectors'; 
import { fetchTodos } from './util/todo_api_util'

document.addEventListener('DOMContentLoaded', () => {
    const store = configureStore(); 

    // testing
    window.receiveTodo = receiveTodo;
    window.receiveTodos = receiveTodos;
    window.store = store; 
    window.allTodos = allTodos; 
    window.fetchTodos = fetchTodos; 
    // testing

    const content = document.getElementById("content"); 
    ReactDOM.render(<Root store={store}/>, content); 
})