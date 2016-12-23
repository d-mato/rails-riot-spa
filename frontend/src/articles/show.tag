<articles-show>
  <virtual if={article}>
    <h1>記事</h1>
    <h2>{article.title}</h2>
    <i>{article.date}</i>
    <p>{article.body}</p>
  </virtual>

  <virtual if={error}>
    <p>{error}</p>
  </virtual>
  <a href="/#/articles">戻る</a>
  <button onclick={delete}>削除</button>

  fetch(`/articles/${this.opts.id}.json`).then( (res) => {
    if (res.ok) return res.json()
    else this.update({error: '記事が見つかりませんでした。'})
  }).then( (json) => {
    this.update({article: json})
  })

  delete(e) {
    if (!confirm('本当に削除しますか？')) return false
    fetch(`/articles/${this.opts.id}.json`, { method: 'delete' }).then( (res) => {
      if (res.ok) location.href = '/#/articles'
    })
  }
</articles-show>
