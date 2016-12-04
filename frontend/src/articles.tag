<articles>
  <h1>記事一覧</h1>
  <ul>
    <li each={articles}>{date} <a href="/#/articles/{id}"><strong>{title}</strong></a></li>
  </ul>

  fetch('/articles.json').then( (res) => res.json() ).then( (json) => {
    this.update({articles: json})
  })
</articles>
