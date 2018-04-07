import { newTask, requestAllTasks } from '../../actions/tasks_actions';
import CreateTask from './create_task';
import { connect } from 'react-redux';

const mapStateToProps = state => ({
   tasks: state.tasks
});

const mapDispatchToProps = dispatch => ({
    newTask: task => dispatch(newTask(task)),
    requestAllTasks: () => dispatch(requestAllTasks())

});

export default connect(mapStateToProps, mapDispatchToProps)(CreateTask);