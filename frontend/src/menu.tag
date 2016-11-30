<menu>
  <ul>
    <li each={items}><a href="/#{path}">{title}</a></li>
  </ul>

  this.items = [
    {path: '/', title: 'ホーム'},
    {path: '/about', title: '概要'},
    {path: '/contact', title: 'お問い合わせ'}
  ]
</menu>
