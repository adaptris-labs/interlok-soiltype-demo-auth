# interlok-soiltype-demo-auth

The https://github.com/quotidian-ennui/interlok-soiltype-demo but with added authentication based on a database table.

* use Postman (or similar); passing in Basic authentication with `demouser:password` (the urls are the same)
* No Authorization header returns a 403
* Bad username + password returns a 403

__Might take a while to start up with some errors logged; just be patient!__
