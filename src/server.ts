import { app } from './app'

app.listen(
  {
    host: '0.0.0.0',
    port: 3333,
  },
  () => {
    console.log('🚀 HTTP Server Find a Friend Running!')
  }
)
