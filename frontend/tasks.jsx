import React from 'react'; 
import ReactDOM from 'react-dom';
// import configureStore from './store/store';

console.log('hello');
document.addEventListener('DOMContentLoaded', () => {
    // const store = configureStore();
    const root = document.getElementById('root');
    console.log(root);
    ReactDOM.render(<h1>welcome to tasks</h1>, root);
});