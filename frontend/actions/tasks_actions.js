import * as TasksUtil from '../util/tasks_util';

export const RECEIVE_ALL_TASKS = 'RECEIVE_ALL_TASKS';
export const CREATE_TASK = 'CREATE_TASK';

export const requestAllTasks = () => dispatch => {
    return TasksUtil.fetchAllTasks().then(
        tasks => dispatch(receiveAllTasks(tasks))
    );
};

export const newTask = task => dispatch => {
    return TasksUtil.createTask(task).then(
        task => dispatch(createTask(task))
    );
};

export const receiveAllTasks = (tasks) => ({
    type: RECEIVE_ALL_TASKS,
    tasks
});

export const createTask = task => ({
    type: CREATE_TASK,
    task
});