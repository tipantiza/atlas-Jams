import React, { useState } from 'react';
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


const HOMEPAGE = "HOMEPAGE";
const PROFILE = "PROFILE";
const SIGNUP = "SIGNUP";
const PERFORMERFORM = "PERFORMERFORM";
const HOSTFORM = "HOSTFORM";
const LOGIN = "LOGIN";

//nav state
const LIGHT = 'LIGHT'
const DARK = 'DARK'
const BLACK = 'BLACK'

function App() {

  const [page, setPage] = useState(HOMEPAGE)
  const [navTheme, setNavTheme] = useState(LIGHT)

  const goToHome = () => {  
    setPage(HOMEPAGE);
    setNavTheme(LIGHT);
  }
  const goToProfile = () => {
    setPage(PROFILE)
    setNavTheme(LIGHT);
  }

  const goToSignUpPage = () => {
    setPage(SIGNUP);
    setNavTheme(BLACK);
  }
  const goToPerformerForm = () => {
    setPage(PERFORMERFORM);
    setNavTheme(BLACK);
  };

  const goToHostForm = () => {
    setPage(HOSTFORM);
    setNavTheme(BLACK)
  };

  const goToLogIn = () => {
    setPage(LOGIN);
    setNavTheme(BLACK);
  }
  
  return (
    <Router>
      <main>
        <section>
          <Route path={['/', '/events']} render={() => <Navbar navTheme={'LIGHT'} />} />
          <Route path={['/signup', '/signup/performer', '/signup/host', '/login']} render={() => <Navbar navTheme={'BLACK'} />} />
          {/* <Navbar 
            navTheme={navTheme}
          /> */}
        </section>
        <section>
          <Route exact={true} path='/' component={HomePage} />
            {/* <HomePage/> */}
          {/* </Route> */}
          <Route path='/events' component={EventsPage} />
          {/* {page === PROFILE && <EventsPage/>} */}
          <Route exact={true} path='/signup' component={SignupForm} />
          {/* {page === SIGNUP && <SignupForm/>} */}
          <Route path='/signup/performer' component={PerformerForm} />
          {/* {page === PERFORMERFORM && <PerformerForm />} */}
          <Route path='/signup/host' component={HostForm} />
          {/* {page === HOSTFORM && <HostForm />} */}
          {/* <EventsForm /> */}
          <Route exact={true} path='/login' component={LoginForm} />
          {/* {page === LOGIN && <LoginForm />} */}
          {/* <EventsPage /> */}
          {/* <ProfilePage/> */}
        </section>
      </main>
    </Router>
  );
}

export default App;
