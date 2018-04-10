import React from 'react';
import OtherForm from './other_form';
import ShoppingForm from './shopping_form';
import DonationForm from './donation_form';
import MovingForm from './moving_form';
import CleaningForm from './cleaning_form';

export default class CreateTask extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            category: ""
        };
        this.handleCategory = this.handleCategory.bind(this);
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

   handleCategory(e) {
        this.setState({category: e.target.value});
   }

   renderCategoryForm() {
    switch(this.state.category) {
        case 'shopping':
     
            return <ShoppingForm newTask={this.props.newTask}/>
        case 'donation':
    
            return <DonationForm newTask={this.props.newTask}/>
        case 'moving':
            return <MovingForm newTask={this.props.newTask}/>
        case 'cleaning':
            return <CleaningForm newTask={this.props.newTask}/>
        case 'other':
            console.log('here');
            console.log(this.state);
            return <OtherForm newTask={this.props.newTask}/>
    }
}

   render() {
      return ( 
      <div>
          <section>
              <select onChange={this.handleCategory}>
                  <option>---Please select a category---</option>
                  <option value="shopping">Shopping</option>
                  <option value="donation">Donation</option>
                  <option value="moving">Moving</option>
                  <option value="cleaning">Cleaning</option>
                  <option value="other">Other</option>
                  </select>
              </section>

              {this.renderCategoryForm()}
             
      </div>);
   }
}