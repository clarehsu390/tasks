import React from 'react'; 
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import { fetchAllTasks } from './util/tasks_util';
import { requestAllTasks, receiveAllTasks } from './actions/tasks_actions';
document.addEventListener('DOMContentLoaded', () => {
    const store = configureStore();
    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store}/>, root);
    window.requestAllTasks = requestAllTasks;
    window.receiveAllTask = receiveAllTasks;
    window.fetchAllTasks = fetchAllTasks;
    window.dispatch = store.dispatch;
    window.store = store;
});
