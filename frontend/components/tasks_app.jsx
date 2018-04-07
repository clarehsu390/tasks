import React from 'react';
import TasksContainer from './tasks/tasks_container';
import CreateTaskContainer from './tasks/create_task_container';

const TasksApp = () => {
    return (
        <div>
            <h1>Tasks</h1>
            <TasksContainer />
            <CreateTaskContainer/>
            </div>
    );
};

export default TasksApp;