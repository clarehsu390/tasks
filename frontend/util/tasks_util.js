export const fetchAllTasks = () => (
    $.ajax({
        method: 'GET',
        url: '/tasks',
        datatype: 'json'
    })
);