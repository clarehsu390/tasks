import React from 'react';

export default class DonationForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            due_at: Date.now(),
            title: "",
            category_id: 2,
            addition_info: {
                vehicle_size: "",
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

                    <label>Address:
                        </label>
                    <input value={this.state.addition_info.address} onChange={this.updateAdditionalInfo('address')}/>

                    <label>Size of Vehicle:
                        </label>
                    <select onChange={this.updateAdditionalInfo('vehicle_size')}>
                        <option value="bicycle">Bicycle</option>
                        <option value="car">Car</option>
                        <option value="truck">Truck</option>
                        </select>

                    <input type="submit"/>
                    </form>
                </div>
        );
   }
}