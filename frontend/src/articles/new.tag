<articles-new>
  <h1>記事作成</h1>
  <form onsubmit={submit}>
    <div class="form-group">
      <label>タイトル</label> <input ref="title" />
      <label>日付</label> <input type="date" ref="date" placeholder="aa"/>
    </div>
    <div class="form-group">
      <label>本文</label>
      <textarea ref="body"></textarea>
    </div>
    <input type="submit" value="送信" show={!loading} />
  </form>

  <virtual show={loading}>
    送信中 ...
  </virtual>
  <virtual if={completed}>
    送信が完了しました <a href="{article_link}">記事へ</a>
  </virtual>
  <virtual if={error}>
    <p>{error}</p>
  </virtual>

  <a href="/#/articles">戻る</a>
  submit(e) {
    e.preventDefault()
    this.loading = true
    const article = {
      title: this.refs.title.value,
      date: this.refs.date.value,
      body: this.refs.body.value
    }
    fetch('/articles.json', {
      method: 'post',
      body: JSON.stringify({article}),
      headers: new Headers({'Content-Type': 'application/json'})
    }).then( (res) => {
      if (res.ok) return res.json()
      else this.update({loading: false, error: '送信に失敗しました。'})
    }).then( (json) => {
      console.log(json)
      this.update({completed: true, loading: false, article_link: `/#/articles/${json.id}`})
    })
  }
</articles-new>
