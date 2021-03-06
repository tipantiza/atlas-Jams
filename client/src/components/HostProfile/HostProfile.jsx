import React from 'react';
import useStyles from './styles/styles';
import { makeStyles } from '@material-ui/core/styles';
import HostInfoBox from './hostInfoBox';
import Spaces from './hostSpaces';
import EventsCardList from '../EventsCards/EventCardList';
import { Box, Typography} from '@material-ui/core';
import Button from '@material-ui/core/Button';
import axios from "axios";
import { useState, useEffect} from 'react';
import { useParams } from 'react-router-dom';
import {Link} from 'react-router-dom'
import '../../App.css'




const HostProfile = (props) => {
  window.sessionStorage.navTheme = 'BLACK'
  const [hostProfile, setHostProfile] = useState({
    hostInfo: {},
    hostSpaces: [],
    events:[]
  });
  
  let { id } = useParams();

  useEffect(() => {
    window.scrollTo(0, 0)
    axios.get(`/users/${id}`)
      .then(res => {
        setHostProfile(prev => {return {...prev, hostInfo: {...res.data}}})
       
        axios.get(`/host/${id}/events`)
        .then(res => {
          const reverse = res.data.reverse()
          setHostProfile(prev=> { return {...prev, events: [...reverse]}})

          axios.get(`/spaces/user/${id}`)
          .then(res => {
            setHostProfile(prev => {return {...prev, hostSpaces: [...res.data]}})
            console.log("here!!!",res.data);
          })
        })
      })
    }, [])

    
const useStyles = makeStyles({
  mainPic: {
    backgroundImage:  `url("${hostProfile.hostInfo.profile_pic}")`,
    height: "50%",
    backgroundPosition: "center",
    backgroundSize: "cover"
  },
  contactInfo: {
    display: "flex",
    justifyContent: "center",
    marginBottom: "15px",
    height: "25px"
  },
  descriptionBox: {
    height: "150px",
    overflow: "auto"  
  },
  h1: {
    display: "flex",
    justifyContent: "center",
    font: "initial",
    fontSize: "xxx-large"
  },
  events: {
    justifyContent: "center",
    flexFlow: "row wrap",
    display: "flex",
    justifyContent: "center"
    
  },
  eventBox:{
    width: "60vw",
    overflow: "auto",
    display: "flex",
    alignItems: "center",
    font: "initial"
  },

  buttonEvent: {
    display: "flex",
    flexDirection: "column",
    alignItems: "center"
  },
  addButton: {
    backgroundColor: "chocolate",
    color: "white",
    marginTop: "10px"
  }
});

  const classes = useStyles();


  const userType = sessionStorage.user_type
  const user_id = sessionStorage.id
 

  
  return(
    <div >
      <div style={{display:"flex",margin: "90px 75px 0 75px",  justifyContent: "space-between"}}>
      <div style={{height: "70vh"}}>
        <div className={classes.mainPic}></div>
        <HostInfoBox hostInfo={hostProfile.hostInfo}/>
      </div>
        <div className={classes.buttonEvent} style={{marginLeft:"20px"}}>
        <p style={{font:"initial", fontSize: "xx-large", margin: "2px"}}>Events</p>
          <Box className={classes.eventBox}>
            <Typography className={classes.events}>
              <EventsCardList events={hostProfile.events}  sideScroll={true}/>
            </Typography>

          </Box>
          <div  className={classes.buttonEvent}>
         { userType === "host" && user_id === id && <Link to={`/create/event`} style={{ textDecoration: 'none', color:"black" }}>
         <Button className={classes.addButton} variant="contained" >
           Add Event!
         </Button>
         </Link>}
          </div>
        </div>
      </div>
      
        <div>
          <Spaces spaces={hostProfile.hostSpaces} />
        </div>

    </div>
  )
};

export default HostProfile;

