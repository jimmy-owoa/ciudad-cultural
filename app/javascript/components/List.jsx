import React, { Component } from 'react'

export default class List extends Component {
	state = {
		counter: 0
	}
	add = () => {
		this.setState({
			counter: this.state.counter += 1
		})
	} 
	render() {
		const { events } = this.props
		const { counter } = this.state
		return (
			<div>
				<li>
					{ events.map(event => (<ul key={ event.id }>{ event.title }</ul>))}
				</li>
				{ counter }
				<button onClick={() => this.add()}>Clickeame</button>
			</div>
		)
	}
}
