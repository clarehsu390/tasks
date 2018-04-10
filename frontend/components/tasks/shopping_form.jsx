import React from 'react';

export default class ShoppingForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            title: "",
            due_at: Date.now(),
            category_id: 1,
            addition_info: {
                store_name: "",
                list: "",
                expected_expense: null
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
                    <input value={this.state.title}/>

                <label>Store Name:
                    </label>
                    <input onChange={this.updateAdditionalInfo('store_name')} value={this.state.addition_info.store_name}/>
                
                <label>List:
                    </label>
                    <input onChange={this.updateAdditionalInfo('list')} value={this.state.addition_info.list} />

                <label>Expected Expense:
                    </label>
                    <input onChange={this.updateAdditionalInfo('expected_expense')} value={this.state.addition_info.expected_expense} />
                </form>

                <input type="submit"/>
               </div>
       );
   }
}