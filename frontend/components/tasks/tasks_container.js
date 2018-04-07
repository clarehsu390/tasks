import { connect } from 'react-redux';
import { requestAllTasks } from '../../actions/tasks_actions';
import Tasks from './tasks';

const mapStateToProps = state => ({
    tasks: state.tasks
});

const mapDispatchToProps = dispatch => ({
    requestAllTasks: () => dispatch(requestAllTasks())
});

export default connect(mapStateToProps, mapDispatchToProps)(Tasks);