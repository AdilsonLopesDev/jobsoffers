import React from 'react';
// import { StatusBar } from 'react-native';
import '~/config/ReactotronConfig';

import { ApolloProvider } from '@apollo/react-hooks';
import ApolloClient from 'apollo-client';
// import { NavigationContainer } from '@react-navigation/native';
import { InMemoryCache } from 'apollo-cache-inmemory';
import { HttpLink } from 'apollo-link-http';
// Setup the network "links"
// import { WebSocketLink } from 'apollo-link-ws';
// import { split } from 'apollo-link';
// import { getMainDefinition } from 'apollo-utilities';
// import { SubscriptionClient } from 'subscriptions-transport-ws';

import { NavigationContainer } from '@react-navigation/native';

import Routes from '~/routes/index';
import { AuthProvider } from '~/contexts/auth';
import { DEFAULT_URI } from './services/helpers';

const GRAPHQL_ENDPOINT = DEFAULT_URI;
// http://
// const links = new WebSocketLink(wsLink);
const link = new HttpLink({
  uri: GRAPHQL_ENDPOINT,
});

const cache = new InMemoryCache();

const client = new ApolloClient({
  cache,
  link,
});

const App = () => {
  // console.log(theme);
  return (
    <ApolloProvider client={client}>
      <NavigationContainer initialRouteName="Auth">
        <AuthProvider>
          <Routes />
        </AuthProvider>
      </NavigationContainer>
    </ApolloProvider>
  );
};

export default App;
