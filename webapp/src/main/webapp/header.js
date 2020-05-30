

function init() 
{
	document.forms[0].name1.focus();
}

function kaps(fieldname) 
{
	fieldname.value= fieldname.value.toUpperCase();
}

function clearYear() 
{
	if(document.forms[0].DOBYear.value == "Year") 
		{
			document.forms[0].DOBYear.value = "";
		}
}

function checkOther() 
{
	var city = document.forms[0].city.value;
	if(city == "Others") 
	{
		document.forms[0].othercity.style.display = "";
		document.forms[0].othercity.focus();
	} 
else 
	{
		document.forms[0].othercity.style.display = "none";
	}
  }

function isEmpty(str)
{
	if(str=="")
	{
		return true;
	}
	else 
		return false;
}

function isAlpha(str1)
{
	len=str1.length;
	for(i=0; i<len; i++)
	{
		 if( ((str1.charAt(i) >='a')&& (str1.charAt(i) <='z')) ||  ((str1.charAt(i) >='A')&& (str1.charAt(i) <='Z')) )
			{
			}
			else
			{
				return false; break;
			}	
	}
	return true;
}

function isAlphaNumeric(str1)
{
	len=str1.length;
	for(i=0; i<len; i++)
	{
		if( ((str1.charAt(i) >='a')&& (str1.charAt(i) <='z')) ||  ((str1.charAt(i) >='A')&& (str1.charAt(i) <='Z'))||((str1.charAt(i) >=0)&& (str1.charAt(i) <=9)) )
		{
		}
		else
		{
			return false; 
			break;
		}
	}
	return true;
}

function isPosInteger(num)
{
	if(!(isNaN(num)))
	{
		if(num>0)
			{
				return true;
			}
	}
	else
	{
		return false;
	}
}




// Email checking 
function emailCheck(emailStr) {
var checkTLD=1;

var knownDomsPat=/^(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum)$/;
var emailPat=/^(.+)@(.+)$/;
var specialChars="\\(\\)><@,;:\\\\\\\"\\.\\[\\]";

var validChars="\[^\\s" + specialChars + "\]";


var quotedUser="(\"[^\"]*\")";

var ipDomainPat=/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/;

var atom=validChars + '+';


var word="(" + atom + "|" + quotedUser + ")";

// The following pattern describes the structure of the user

var userPat=new RegExp("^" + word + "(\\." + word + ")*$");

/* The following pattern describes the structure of a normal symbolic
domain, as opposed to ipDomainPat, shown above. */

var domainPat=new RegExp("^" + atom + "(\\." + atom +")*$");

/* Finally, let's start trying to figure out if the supplied address is valid. */

/* Begin with the coarse pattern to simply break up user@domain into
different pieces that are easy to analyze. */

var matchArray=emailStr.match(emailPat);

if (matchArray==null) {

/* Too many/few @'s or something; basically, this address doesn't
even fit the general mould of a valid e-mail address. */

alert("Email address seems incorrect (check @ and .'s)");
return false;
}
var user=matchArray[1];
var domain=matchArray[2];

// Start by checking that only basic ASCII characters are in the strings (0-127).

for (i=0; i<user.length; i++) {
if (user.charCodeAt(i)>127) {
alert("This username contains invalid characters.");
return false;
   }
}
for (i=0; i<domain.length; i++) {
if (domain.charCodeAt(i)>127) {
alert("Ths domain name contains invalid characters.");
return false;
   }
}

// See if "user" is valid 

if (user.match(userPat)==null) {

// user is not valid

alert("The username doesn't seem to be valid.");
return false;
}

/* if the e-mail address is at an IP address (as opposed to a symbolic
host name) make sure the IP address is valid. */

var IPArray=domain.match(ipDomainPat);
if (IPArray!=null) {

// this is an IP address

for (var i=1;i<=4;i++) {
if (IPArray[i]>255) {
alert("Destination IP address is invalid!");
return false;
   }
}
return true;
}

// Domain is symbolic name.  Check if it's valid.
 
var atomPat=new RegExp("^" + atom + "$");
var domArr=domain.split(".");
var len=domArr.length;
for (i=0;i<len;i++) {
if (domArr[i].search(atomPat)==-1) {
alert("The domain name does not seem to be valid.");
return false;
   }
}

/* domain name seems valid, but now make sure that it ends in a
known top-level domain (like com, edu, gov) or a two-letter word,
representing country (uk, nl), and that there's a hostname preceding 
the domain or country. */

if (checkTLD && domArr[domArr.length-1].length!=2 && 
domArr[domArr.length-1].search(knownDomsPat)==-1) {
alert("The address must end in a well-known domain or two letter " + "country.");
return false;
}

// Make sure there's a host name preceding the domain.

if (len<2) {
alert("This address is missing a hostname!");
return false;
}

// If we've gotten this far, everything's valid!
//return true;
}
function isPosIntegercheck(num)
{
len=num.length;
if(!(isNaN(num)))
{
if((num>0) && len==6){ return true;}
}
else
{
return false;
}
}
