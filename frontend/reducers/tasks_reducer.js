import { RECEIVE_ALL_TASKS } from '../actions/tasks_actions';

const tasksReducer = (state = [], action) => {
    console.log(action);
    switch(action.type) {
        case RECEIVE_ALL_TASKS:
            return action.tasks;
        default:
            return state;
    }
};

export default tasksReducer;