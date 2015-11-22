# Initialize Parse with the app keys corresponding to your app
Parse.initialize("ZhDcMhatEXmAEGm25ohAcJrCgJkxm6egqx66CtKF", "PWyz6ei3Q5xD2ubS7ecBZnD05j8gsYEVqVnbSl9C");


# Initialize Parse with the app keys corresponding to your app
Parse.initialize("YOUR_APP_ID", "YOUR_JS_KEY");

# a nice trendy gradient background
bg = new BackgroundLayer
bg.style =
	backgroundImage: 'linear-gradient(135deg, #4EFFE1 0%, #6D51CC 100%)'

# make somewhere for us to put errors when they happen
status = new Layer width: 750, height: 200, y: 200, backgroundColor: "transparent"
status.style =
	textAlign: 'center'
	fontSize: '42px'
	lineHeight: '100px'
	color: '#D6FF20'
	
# inputs will share the same style, so might as well not write it twice
inputStyle = 
	textAlign: 'center'
	fontFamily: "'Helvetica Neue', sans-serif"
	lineHeight: '120px'
	fontSize: '42px'
	fontWeight: '300'
	color: "#fff"	
# making our email input
emailInput = new Layer width: 750, height: 120, x: 0, y: 450, backgroundColor: 'rgba(255,255,255,.25)'
emailInput.style = inputStyle

# I prefer to use contentEditable instead of a regular <input>
# because that way you don't have to fight with browser styling.
# FYI: ._element is how we access the root element for a framer layer
emailInput._element.setAttribute('contentEditable', 'true')
emailInput._element.innerHTML = "email address"
emailInput.ignoreEvents = false

# Same as above but this time for passwords
passwordInput = new Layer width: 750, height: 120, x: 0, y: emailInput.maxY + 50, backgroundColor: 'rgba(255,255,255,.25)'
passwordInput.style = inputStyle

passwordInput.ignoreEvents = false
passwordInput._element.innerHTML = "password"
passwordInput._element.setAttribute('contentEditable', 'true')

# and here's some interesting CSS I found...
# this makes a content editable div work more like a
# password input by obfuscating the text with bullets
passwordInput.style =
	'-webkit-text-security': 'disc'
	'-webkit-user-select': 'text'


# and we'll just add a simple sign up and login button to tie some actions to
submit = new Layer width: 300, height: 120, y: passwordInput.maxY + 100, backgroundColor: "rgba(255,255,255,.25)"
submit.html = "Submit"
submit.style =
	textAlign: 'center'
	fontFamily: "'Helvetica Neue', sans-serif"
	lineHeight: '120px'
	fontSize: '42px'
	fontWeight: '600'
	borderRadius: "10px"
	color: "#fff"	
submit.centerX()

submit.on Events.Click, ->
	doSubmit()

login = new Layer width: 300, height: 120, y: submit.maxY + 40, backgroundColor: "rgba(255,255,255,.25)"
login.html = "Log In"
login.style =
	textAlign: 'center'
	fontFamily: "'Helvetica Neue', sans-serif"
	lineHeight: '120px'
	fontSize: '42px'
	fontWeight: '600'
	borderRadius: "10px"
	color: "#fff"	
login.centerX()

login.on Events.Click, ->
	doLogin()
	
doSubmit = ->
	print "submit!"
	
doLogin = ->
	print "login!"	
view rawLogin_Init.coffee