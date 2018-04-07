import * as TasksUtil from '../util/tasks_util';

export const RECEIVE_ALL_TASKS = 'RECEIVE_ALL_TASKS';
export const RECEIVE_TASK = 'RECEIVE_TASK';

export const requestAllTasks = () => dispatch => {
    return TasksUtil.fetchAllTasks().then(
        tasks => dispatch(receiveAllTasks(tasks))
    );
};

export const newTask = task => dispatch => {
    return TasksUtil.createTask(task).then(
        task => dispatch(receiveTask(task))
    );
};

export const receiveAllTasks = (tasks) => ({
    type: RECEIVE_ALL_TASKS,
    tasks
});

export const receiveTask = task => ({
    type: RECEIVE_TASK,
    task
});