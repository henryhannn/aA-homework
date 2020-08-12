import React from 'react'; 

class TodoForm extends React.Component {
    constructor(props) {
        super(props); 
        this.state = {
            id: this.uniqueId(), 
            title: "", 
            body: "",
            done: false
        }; 
        this.updateBody = this.updateBody.bind(this); 
        this.updateTitle = this.updateTitle.bind(this); 
        this.handleClick = this.handleClick.bind(this); 
    }

    uniqueId() {
        return new Date().getTime();
    }

    updateBody(e) {
        this.setState({
            body: e.currentTarget.value
        }); 
    }

    updateTitle(e) {
        this.setState({
            title: e.currentTarget.value
        }); 
    }

    handleClick(e) {
        e.preventDefault(); 
        this.props.receiveTodo(this.state); 
        this.setState({
            title: this.state.title ? this.state.title : "",
            body: this.state.body ? this.state.title : "",
            id: this.uniqueId()
        }); 
    }

    render() {
        return (
            <div>
                <form>
                    <label>Title:
                        <input type="text" value={this.state.title} onChange={this.updateTitle}/>
                    </label>
                    <br/>
                    <label>Body:</label>
                    <textarea value={this.state.body} cols="30" rows="10" onChange={this.updateBody}></textarea>
                    <br/>
                    <input type="submit" value="Add a Todo" onClick={this.handleClick}/>
                </form>
            </div>
        )
    }
}


export default TodoForm; 
