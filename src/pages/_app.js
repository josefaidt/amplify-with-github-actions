import { Amplify } from 'aws-amplify'
import config from '../aws-exports'

Amplify.configure(config)

export default function MyApp({ Component, pageProps }) {
  return <Component {...pageProps} />
}
