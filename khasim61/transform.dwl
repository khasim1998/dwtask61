%dw 2.0
import * from dw::core::Strings
/*
Here I removed the special characters and printing remaining data for that I have importing substring function from dw::core::Strings
*/
output application/json
---
{
    zipCode: substringBefore(payload.zipCode,'-') as Number,
    pincode: substringAfter(payload.pincode,'-') as Number,
    name: payload.name replace /[^a-zA-Z]/ with ''
}