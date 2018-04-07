import React from 'react';

export default class Tasks extends React.Component {
    constructor(props) {
        super(props);
        this.allTasks = this.allTasks.bind(this);
    }
    componentDidMount() {
        this.props.requestAllTasks();
    }
    allTasks() {
        return this.props.tasks.map((task,i) => {
            return <li key={i}>{task.title}</li>;
        });
    }

    render() {
        return (
            <div>
                <ul>
                    <li>
                        Tasks here
                        </li>
                    {this.allTasks()}
                    </ul>
                </div>
        );
    }
}