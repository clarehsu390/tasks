import React from 'react';

export default class CreateTask extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            title: "",
            due_at: Date.now(),
            addition_info: {
                store_name: "",
                list: ""
            }
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.update = this.update.bind(this);
        this.updateAdditionalInfo = this.updateAdditionalInfo;

    }
    
    handleSubmit(e) {
        e.preventDefault();
        this.setState({addition_info: JSON.stringify(this.state.addition_info)});
        this.props.newTask(this.state);
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
      return ( <div>
           <form onSubmit={this.handleSubmit}>
                <label>
                    Title:
                    </label>
                    <input value={this.state.title}
                    onChange={this.update('title')}/>

                <label>Store Name:
                    <input value={this.state.addition_info.store_name}
                    onChange={this.updateAdditionalInfo('store_name')}/>
                    </label>

                <label>List:
                    <input value={this.state.addition_info.list}
                    onChange={this.updateAdditionalInfo('list')}/>
                    </label>
                <input type="submit"/>
               </form>
             
      </div>);
   }
}