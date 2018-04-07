import { RECEIVE_ALL_TASKS, RECEIVE_TASK } from '../actions/tasks_actions';
import merge from 'lodash/merge';

const tasksReducer = (state = [], action) => {
    console.log(action);
    switch(action.type) {
        case RECEIVE_ALL_TASKS:
            return action.tasks;
        case RECEIVE_TASK:
            let task = action.task;
           return merge(state, task);
        default:
            return state;
    }
};

export default tasksReducer;