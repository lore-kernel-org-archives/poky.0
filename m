Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 393B44C80479
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 12:49:11 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Apr 2011 10:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,288,1301900400"; 
	d="scan'208,217";a="686060244"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2011 10:49:05 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 29 Apr 2011 10:49:05 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Fri, 29 Apr 2011 10:49:05 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: C Michael Sundius <msundius@sundius.com>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>, "josh@linux.intel.com" <josh@linux.intel.com>
Date: Fri, 29 Apr 2011 10:49:04 -0700
Thread-Topic: building images
Thread-Index: AcwFCqeIUjF3IR70SuKFjngay7dt0wBiFq8A
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA950116D58CCA@orsmsx504.amr.corp.intel.com>
References: <BANLkTi=FVHHE0+HjkhbRKy-z173cJGghog@mail.gmail.com>
In-Reply-To: <BANLkTi=FVHHE0+HjkhbRKy-z173cJGghog@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: building images
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Apr 2011 17:49:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9AFCD584B0B67B48AE8D8585BE30BA950116D58CCAorsmsx504amrc_"

--_000_9AFCD584B0B67B48AE8D8585BE30BA950116D58CCAorsmsx504amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Michael,



See my comments below...



Thanks,

Jessica



From: C Michael Sundius [mailto:msundius@sundius.com]
Sent: Wednesday, April 27, 2011 11:41 AM
To: openembedded-devel@lists.openembedded.org; poky@yoctoproject.org; josh@=
linux.intel.com; Zhang, Jessica
Subject: building images



I'm wondering if when bitbake builds an image, that is to say if all the ne=
cessary package recipes have already been completely built, if just when cr=
eating the image, does bitbake make use of the staging/sysroot directory at=
 all? or does it only install packages and run some scripts for pre and pos=
t processing of the image?....



could we get away with simply simply providing the packages or a package fe=
ed for this step?



as I write this, I guess we'd be missing the native tools in the sysroot/i6=
86-linux/* directory. lets just say we have told bitbake that it should use=
 the native tools from the build host for *everything*.



I'm asking this because I want a way for our customers to use an SDK (that =
we provide from OE) to build an app,



Yocto project has a command line script called adt-installer probably you c=
an take a look, what it does is setup your host cross development environme=
nt.  It downloads the cross-toolchain for the target and download the corre=
sponding image rootfs and extract it out on the development host as sysroot=
 that contains the target headers and libraries.  The remote package access=
 is based on wget and it's using opkg to manipulate ipk packages since it's=
 lightweighted.  The adt-installer is running against a installation config=
 file basically tells it where (the ipk package repo) to download things an=
d where (on the development host) to setup things, the toolchain, the sysro=
ot etc.  So for the developer perspective, there's no dependency on OE.  Wh=
at you need to do is to build out all the needed ipk packages using OE/Yoct=
o and setup the ipk package repo.



and then create an image that is equivalent to one that would have been cre=
ated from within the OE environment (will all the package recipes).





My problem is that some of our customers will not adopt OE for developing a=
pplications. (I think they should, but we just can't guarantee that they wi=
ll, nor do I think we should force them).



If we provide:



1) an SDK that includes:

- all of our interfaces,

- all of our utilities and branding info

- the tool chain,

- some or all the other native utilities (or maybe just take chances that t=
he build host is not Fedora Core 3!)

2) the packages or a link to a package feed with all of our packages necess=
ary for the release



what would the minimal config and class info we'd need to create an image w=
ith bitbake?



would this be useful or would it be just as much work to get my customers t=
o build their app with an OE recipe?



anyone have any thoughts on as much?



Does anyone else have the problem that they need to create an image from th=
e result of an SDK? What do you do to solve the problem?


--_000_9AFCD584B0B67B48AE8D8585BE30BA950116D58CCAorsmsx504amrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Michael,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">See my comments below&#82=
30;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> C Michae=
l Sundius [mailto:msundius@sundius.com]
<br>
<b>Sent:</b> Wednesday, April 27, 2011 11:41 AM<br>
<b>To:</b> openembedded-devel@lists.openembedded.org; poky@yoctoproject.org=
; josh@linux.intel.com; Zhang, Jessica<br>
<b>Subject:</b> building images<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I'm wondering if when bitbake builds an image, that =
is to say if all the necessary package recipes have already been completely=
 built, if just when creating the image, does bitbake make use of the stagi=
ng/sysroot directory at all? or does
 it only install packages and run some scripts for pre and post processing =
of the image?....&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">could we get away with simply simply providing the p=
ackages or a package feed for this step?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">as I write this, I guess we'd be missing the native =
tools in the sysroot/i686-linux/* directory. lets just say we have told bit=
bake that it should use the native tools from the build host for *everythin=
g*.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I'm asking this because I want a way for our custome=
rs to use an SDK (that we provide from OE) to build an app,<span style=3D"c=
olor:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Yocto project has a comma=
nd line script called adt-installer probably you can take a look, what it d=
oes is setup your host cross development environment.&nbsp; It
 downloads the cross-toolchain for the target and download the correspondin=
g image rootfs and extract it out on the development host as sysroot that c=
ontains the target headers and libraries.&nbsp; The remote package access i=
s based on wget and it&#8217;s using opkg to
 manipulate ipk packages since it&#8217;s lightweighted.&nbsp; The adt-inst=
aller is running against a installation config file basically tells it wher=
e (the ipk package repo) to download things and where (on the development h=
ost) to setup things, the toolchain, the sysroot
 etc.&nbsp; So for the developer perspective, there&#8217;s no dependency o=
n OE.&nbsp; What you need to do is to build out all the needed ipk packages=
 using OE/Yocto and setup the ipk package repo.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal">and then create an image that is equivalent to one t=
hat would have been created from within the OE environment (will all the pa=
ckage recipes).&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">My problem is that some of our customers will not ad=
opt OE for developing applications. (I think they should, but we just can't=
 guarantee that they will, nor do I think we should force them).&nbsp;<o:p>=
</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">If we provide:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">1) an SDK that includes:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">- all of our interfaces,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">- all of our utilities and branding info<o:p></o:p><=
/p>
</div>
<div>
<p class=3D"MsoNormal">- the tool chain,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">- some or all the other native utilities (or maybe j=
ust take chances that the build host is not Fedora Core 3!)<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">2) the packages or a link to a package feed with all=
 of our packages necessary for the release<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">what would the minimal config and class info we'd ne=
ed to create an image with bitbake?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">would this be useful or would it be just as much wor=
k to get my customers to build their app with an OE recipe?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">anyone have any thoughts on as much?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Does anyone else have the problem that they need to =
create an image from the result of an SDK? What do you do to solve the prob=
lem?<o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_9AFCD584B0B67B48AE8D8585BE30BA950116D58CCAorsmsx504amrc_--
