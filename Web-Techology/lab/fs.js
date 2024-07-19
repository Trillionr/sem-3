
// const fs = require('fs');

//make file

// fs.writeFile('FirstA.txt','hello trillionr',(error)=>{
//     if(error){
//         console.log(error);
//     }
//     else{
//         console.log("file created");
//     }
// })

// readfile

// fs.readFile('FirstA.txt','utf-8',(error,data)=>{
//     if(error){
//         console.log('no such file');
//     }
//     else{
//         console.log(data);
//     }
// })


//rename file 

// fs.rename('FirstA.txt','FirstB.txt',(error,data)=>{
//     if(error){
//         console.log(error);
//         }
//         else{
//             console.log(data);
//             }
// })

//insert data file 

// fs.appendFile('FirstB.txt','future of',(error,data)=>{
//     if(error){
//         console.log(error);
//         }
//         else{
//             console.log(data);
//             }
// })

//delete file 

// fs.unlink('FirstB.txt',(error,data)=>{
//     if(error){
//         console.log(error);
//         }
//         else{
//             console.log(data);
//             }
// })

const http = require('http');
const server = http.createServer(
    (req, res) => {
        const URL = req.url;
        if (URL == '/home') {
            res.write('home page');
            console.log('inside home page');
            res.end();
        }
        
        else if (URL == '/feedback') {
            res.write('feedback page');
            console.log('inside feedback page');
            res.end();
        }

        else if (URL == '/contanct') {
            res.write('contanct page');
            console.log('inside contanct page');
            res.end();
        }
        else if (URL == '/about') {
            res.write('about page');
            console.log('inside about page');
            res.end();
        }
    })
server.listen(3000, () => {
    console.log('server is running');
});
