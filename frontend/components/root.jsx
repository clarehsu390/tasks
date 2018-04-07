import { Provider } from 'react-redux';
import TasksApp from './tasks_app';
import React from 'react';

const Root = ({store}) => {
    return (
        <Provider store={store}>
            <TasksApp />
        </Provider>
    );
};

export default Root;