import * as TasksUtil from '../util/tasks_util';

export const RECEIVE_ALL_TASKS = 'RECEIVE_ALL_TASKS';

export const requestAllTasks = () => dispatch => {
    return TasksUtil.fetchAllTasks().then(
        tasks => dispatch(receiveAllTasks(tasks))
    );
};

export const receiveAllTasks = (tasks) => ({
    type: RECEIVE_ALL_TASKS,
    tasks
});