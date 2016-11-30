// tags
require('./app.tag')
require('./menu.tag')
require('./home.tag')
require('./about.tag')
require('./contact.tag')

document.body.appendChild(document.createElement('app'))
riot.mount('app')

// routes
import route from 'riot-route'

route('/', () => riot.mount('main', 'home'))
route('/about', () => riot.mount('main', 'about'))
route('/contact', () => riot.mount('main', 'contact'))

route.start(true)
