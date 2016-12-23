// tags
require('./app.tag')
require('./menu.tag')
require('./home.tag')
require('./about.tag')
require('./contact.tag')
require('./articles/index.tag')
require('./articles/new.tag')
require('./articles/show.tag')

document.body.appendChild(document.createElement('app'))
riot.mount('app')

// routes
import route from 'riot-route'

route('/', () => riot.mount('main', 'home'))
route('/about', () => riot.mount('main', 'about'))
route('/contact', () => riot.mount('main', 'contact'))

route('/articles', () => riot.mount('main', 'articles-index'))
route('/articles/new', () => riot.mount('main', 'articles-new'))
route('/articles/*', (id) => riot.mount('main', 'articles-show', {id}))

route.start(true)
