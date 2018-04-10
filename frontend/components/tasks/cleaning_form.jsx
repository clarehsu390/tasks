import React from 'react';

export default class CleaningForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            due_at: Date.now(),
            title: "",
            category_id: 3,
            addition_info: {
                address: "",
                num_of_bathrooms: "",
                type: ""
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
       <div>
           <form onSubmit={this.handleSubmit}>
            <label>Title:
                </label>
            <input value={this.state.title} onChange={this.update('title')} />

            <label>Address:
                </label>
            <input value={this.state.addition_info.address} onChange={this.updateAdditionalInfo('address')} />

            <label>Number of bathrooms:
                </label>
            
            <input value={this.state.addition_info.num_of_bathrooms}
            onChange={this.updateAdditionalInfo('num_of_bathrooms')}/>

            <label>Type of Cleaning:
                </label>

                <select onChange={this.updateAdditionalInfo('type')}>
                    <option value="light">Light</option>
                    <option value="normal">Normal</option>
                    <option value="heavy">Heavy</option>
                    </select>
               </form>

               <input type="submit"/>
           </div>;
   }
}