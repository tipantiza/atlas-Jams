import React, { useState, useEffect } from 'react';
import { BrowserRouter as Router, Link, Route } from 'react-router-dom';
import Navbar from './components/Navbar/Navbar';
import SearchBox from './components/Navbar/searchBox';
import SignupForm from './components/Forms/SignupForm/SignupForm';
import PerformerForm from './components/Forms/PerformerForm/PerformerForm';
import HostForm from './components/Forms/HostForm/HostForm';
import EventsForm from './components/Forms/EventsForm/EventsForm';
import LoginForm from './components/Forms/LoginForm/LoginForm';
import EventsPage from './components/EventsPage/EventsPage';
import './App.css';
import axios from 'axios';
import { makeStyles } from '@material-ui/core/styles';
import EventsCardList from './components/EventsCards/EventCardList'
import HomePage from './components/HomePage/HomePage';
import { light } from '@material-ui/core/styles/createPalette';
import ProfilePage from './components/PerformerProfile/performerProfilePage'
import HostProfile from './components/HostProfile/HostProfile';
import EventForm from './components/Forms/EventsForm/EventsForm';
import AttendeeProfile from './components/attendeeProfile/attendeeProfile'

// https://blogreact.com/share-data-between-routes-in-react/
// https://reactjs.org/docs/hooks-reference.html#functional-updates
// https://www.pluralsight.com/guides/how-to-use-react-context-to-share-data-between-components

function App() {

  
  return (
    <Router>
      <main>
        <section>
          <Route path={['/', '/events']} render={() => <Navbar navTheme={'LIGHT'} />} />
          <Route path={['/signup', '/signup/performer', '/signup/host', '/login', '/performer/:id', '/host/:id', '/create/event', "/attendee/:id" ]} render={() => <Navbar navTheme={'BLACK'} />} />
        </section>
        <section>
          <Route exact={true} path='/' render={() => <HomePage />} />
          <Route path={
            `/events/:event_id`} render={() => <EventsPage />}/>
          <Route exact={true} path='/signup' component={SignupForm} />
          <Route path='/signup/performer' component={PerformerForm} />
          <Route path='/signup/host' component={HostForm} />
          {/* <EventsForm /> */}
          <Route exact={true} path='/login' component={LoginForm} />
          <Route exactl={true} path='/create/event' render={() => <EventForm />}/>
          <Route exactl={true} path='/performer/:id' render={() => <ProfilePage />}/>
          <Route exactl={true} path='/host/:id' render={() => <HostProfile />}/>
          <Route exactl={true} path='/attendee/:id' render={() => <AttendeeProfile />}/>
        </section>
      </main>
    </Router>
  );
}

export default App;
