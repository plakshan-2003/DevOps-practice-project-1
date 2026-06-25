const express = require('express');
const app = express();
//process.env.PORT -> get production environment  working port
const port = process.env.PORT || 3000;

// helth cheack endpoint for kubernetes and monitoring
app.get('/health',(req,res) =>{
    res.status(200).send('UP')
});

//user join with main URL and display welcome message
app.get('/',(req,res)=>{
    res.send('wellcome to my first devops project')
})

// start the server and listen on port 3000
app.listen(port,()=>{
    console.log('server is running on port ${port}')
})
