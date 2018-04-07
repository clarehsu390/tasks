export const fetchAllTasks = () => (
    $.ajax({
        method: 'GET',
        url: '/tasks'
    })
);

export const createTask = (task) => (
    $.ajax({
        method: 'POST',
        url: '/tasks',
        data: { task }
    })
);