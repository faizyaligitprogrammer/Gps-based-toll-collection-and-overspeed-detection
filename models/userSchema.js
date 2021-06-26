var mongoose = require("mongoose");

var UserSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true,
    },
    regNo: {
        type: String,
        required: true
    },
    chassisNo: {
        type: String,
        required: true
    },
    emailId: {
        type: String,
        required: true
    },
    pwd: {
        type: String,
        required: true
    },
    phoneNumber: {
        type: String,
        required: true
    },
});

module.exports = mongoose.model("tbl_user", UserSchema);

// var UserSchema = new mongoose.Schema({
//     username: {
//         type: String,
//         unique: true,
//         required: true,
//     },
//     password: {
//         type: String,
//         required: true
//     },
// });

// module.exports = mongoose.model("tbl_users", UserSchema);