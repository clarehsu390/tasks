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
           <form>
               </form>
           </div>
   }