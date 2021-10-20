# TRACKING-IT-BACKEND API

This is the  backend API built for [Track it app](https://github.com/Stephanie041996/Track_it_Frontend).


### Built with
- Ruby
- Ruby on Rails

## Getting Started Locally

- Clone the repo `https://github.com/Stephanie041996/Track-it-backend.git`
- cd into the project
- Run `bundle install` to install dependencies
- In the terminal run `rails server` open up the live server
- Append one of the endpoints to `http://localhost:3000/` in order to get/post data

## API endpoints

- To get all available measurements `/measurements`
- To get data for one particular measurement `/measurements/1`
- To post new measurement data `measurements/` 
    be sure to use POST request and provide payload in this format `{
	"measurement": {
		"id": 5
	},
	"measure": {
		"data": 69.96
	}`

## Author
**Stephanie Sakuhuni**

- GitHub: [@stephanie041996](https://github.com/Stephanie041996)
- LinkedIn: [Stephanie Sakuhuni](www.linkedin.com/in/stephanie-michelle-sakuhuni) 

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
