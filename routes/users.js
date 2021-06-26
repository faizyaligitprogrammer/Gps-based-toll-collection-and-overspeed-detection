var express = require('express');
var router = express.Router();

const User = require('../models/userSchema');

/* GET users listing. */
router.get('/', function (req, res, next) {
  res.send('respond with a resource');
});

// router.post('/register', (req, res) => {
//   console.log("hello")
//   console.log(req.body);
//   let newUser = User({ 
//     'username': req.body.username,
//     'password': req.body.password
//   });
//   newUser.save((err, usr) => {
//     if (err) {
//       return res.status(500).json({ msg: err });
//     } else {
//       return res.status(200).json({ msg: "User saved successfully", usr: usr.username });
//     }
//   });
// });
router.post('/register_user', (req, res) => {
  console.log('hello');
  console.log(req.body);
  console.log("###", req.body.password);
  let newUser = User({ 
    'name': req.body.name,
    'regNo': req.body.regNo,
    'chassisNo': req.body.chassisNo,
    'emailId': req.body.emailId,
    'pwd': req.body.password,
    'phoneNumber': req.body.phoneNumber,

  });
  console.log(newUser);
  newUser.save((err, usr) => {
    if (err) {
      return res.status(500).json({ msg: err });
    } else {
      return res.status(200).json({ msg: "User saved successfully", usr: usr.username });
    }
  });
});

router.post('/login', (req, res) => {
  User.findOne({ emailId: req.body.emailId, pwd: req.body.password }, (err, usr) => {
    if (err) {
      return res.status(500).json({ msg: err });
    } else {
      if (usr==null) {
        return res.status(401).json({ msg: "Login Failed", });
      }
      return res.status(200).json({ msg: "Login successfull", usr: usr.name });
    }
  });
});

// router.post('/login', (req, res) => {
//   User.findOne({ username: req.body.name, password: req.body.password }, (err, usr) => {
//     if (err) {
//       return res.status(500).json({ msg: err });
//     } else {
//       return res.status(200).json({ msg: "Login successfull", usr: usr.username });
//     }
//   });
// });

module.exports = router;
