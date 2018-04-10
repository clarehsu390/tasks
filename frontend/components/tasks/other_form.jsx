import React from 'react';

export default class OtherForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            due_at: Date.now(),
            title: "",
            category_id: 5,
            addition_info: {
                description: ""
            }
        };

        this.handleSubmit = this.handleSubmit.bind(this);
        this.update = this.update.bind(this);
        this.updateAdditionalInfo = this.updateAdditionalInfo.bind(this);
    }

    handleSubmit(e) {
        e.preventDefault();
        this.setState({addition_info: JSON.stringify(this.state.addition_info)}, () => {

            this.props.newTask(this.state);
        });
    }

   update(property) {
       return e => this.setState({[property]: e.currentTarget.value});
   }

   updateAdditionalInfo(property) {
       return e => this.setState({
           addition_info: Object.assign({}, this.state.addition_info, { [property]: e.currentTarget.value})
       });
   }

    render() {
        return (
            <div>
                <h1>Other</h1>
                <form onSubmit={this.handleSubmit}>
                    <label>Title: 
                        <input value={this.state.title} onChange={this.update('title')}/>
                        </label>

                    <label>Description: 
                        <input value={this.state.addition_info.description} onChange={this.updateAdditionalInfo('description')}/>
                    </label>

                    <input type="submit"/>
                    </form>
                </div>
        );
    }
}