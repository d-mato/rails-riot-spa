<article>
  <virtual if={article}>
    <h1>記事</h1>
    <h2>{article.title}</h2>
    <i>{article.date}</i>
    <p>{article.body}</p>
  </virtual>
  <a href="/#/articles">戻る</a>

  fetch(`/articles/${this.opts.id}.json`).then( (res) => res.json() ).then( (json) => {
    this.update({article: json})
  })
</article>
