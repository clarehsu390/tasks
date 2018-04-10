import React from 'react';

export default class MovingForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            due_at: Date.now(),
            title: "",
            category_id: 4,
            addition_info: {
                number_of_people: null,
                address: ""
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
               <form onSubmit={this.handleSubmit}>

                <label>Title:
                    </label>
                <input value={this.state.title} onChange={this.update('title')}/>

                <label>Number of people needed:
                    </label>
                <input value={this.state.addition_info.number_of_people} onChange={this.updateAdditionalInfo('num_of_people')}/>

                <label>Address:
                    </label>

                <input value={this.state.addition_info.address} onChange={this.updateAdditionalInfo('address')}/>
                   </form>
               </div>
       );
   }
}
