import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';

const AppStack = createStackNavigator();

import Incidents from './pages/Incidents';
import Detail from './pages/Detail';

function Routes() {
  return (
    <NavigationContainer>
      <AppStack.navigator initialRouteName="Incidents" screenOptions={{ headerShown: false }}>
        <AppStack.screen name="Incidents" component={Incidents} />
        <AppStack.screen name="Detail" component={Detail} />
      </AppStack.navigator>
    </NavigationContainer>
  );
}

export default Routes;