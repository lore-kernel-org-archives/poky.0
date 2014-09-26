Return-Path: <cristian.iorga@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4E80E007A2; Fri, 26 Sep 2014 00:21:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A89BE00769
	for <poky@yoctoproject.org>; Fri, 26 Sep 2014 00:21:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Sep 2014 00:21:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,603,1406617200"; 
	d="scan'208,217";a="605692559"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 26 Sep 2014 00:21:35 -0700
Received: from irsmsx110.ger.corp.intel.com (163.33.3.25) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Fri, 26 Sep 2014 08:21:34 +0100
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.193]) by
	IRSMSX110.ger.corp.intel.com ([169.254.15.199]) with mapi id
	14.03.0195.001; Fri, 26 Sep 2014 08:21:34 +0100
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Flavio Suligoi <f.suligoi@asem.it>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] Daisy 1.6.1 - matchbox-keyboard doesn't "pop up"
	automatically any more
Thread-Index: Ac/ZVQiv2bGB7sG6Rtqj6D+7gorRnAABSzVg
Date: Fri, 26 Sep 2014 07:21:33 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB2F32FF4D@IRSMSX106.ger.corp.intel.com>
References: <3A8890C59B0943428C1CECF15A6881A70113E579@ASAS013.asem.intra>
In-Reply-To: <3A8890C59B0943428C1CECF15A6881A70113E579@ASAS013.asem.intra>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: Daisy 1.6.1 - matchbox-keyboard doesn't "pop up" automatically any more
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 26 Sep 2014 07:21:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_969F26A8BAB325438E7EB80D3C3134FB2F32FF4DIRSMSX106gercor_"

--_000_969F26A8BAB325438E7EB80D3C3134FB2F32FF4DIRSMSX106gercor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Flavio,

Can you please fill in a bug report on this one, stating the test case?
bugzilla.yoctoproject.org

Regards,
Cristian Iorga
Yocto Project
Intel Corporation

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Flavio Suligoi
Sent: Friday, September 26, 2014 9:42 AM
To: poky@yoctoproject.org
Subject: [poky] Daisy 1.6.1 - matchbox-keyboard doesn't "pop up" automatica=
lly any more

Hi all,

with the old Dylan 1.4 the matchbox-keyboard works perfectly and pops up au=
tomatically when I open a terminal window, or a web browser, or the notes a=
pplication, etc.

But now, with Daisy 1.6.1 I can start the matchbox-keyboard __ONLY__ if I c=
lick manually on the keyboard icon on the matchbox-panel title-bar. It is a=
 big problem in full screen applications (as a web browser in a "kiosk mode=
", for example).

Any idea to solve this issue?

Regards,

Flavio



Flavio Suligoi
Software Engineer - Firmware

ASEM S.p.A.
Via Buia, 4, 33011 Artegna (UD) Italia
Tel +39 0432 967 477
Fax +39 0432 967 467
Email: f.suligoi@asem.it<mailto:f.suligoi@asem.it>
Internet: www.asem.it<http://www.asem.it/>

Questo messaggio =E8 equiparato a corrispondenza in busta chiusa. E' vietat=
a la sua diffusione, distribuzione, riproduzione e l'uso delle informazioni=
 contenute a chi non =E8 destinatario; il responsabile =E8 soggetto a conse=
guenze legali.Se avete ricevuto questo messaggio per errore, siete pregati =
di segnalarlo immediatamente al mittente e di distruggerlo (compresi i file=
 eventualmente allegati) senza farne copia.
This e-mail is confidential. If you are not the addressee or an authorized =
recipient of this message, any distribution, copying, publication or use of=
 this information for any purpose is strictly prohibited.Please, notify the=
 sender immediately by e-mail and then delete this message.

--_000_969F26A8BAB325438E7EB80D3C3134FB2F32FF4DIRSMSX106gercor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Flavio,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Can you please fill in a =
bug report on this one, stating the test case?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">bugzilla.yoctoproject.org=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Cristian Iorga<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Yocto Project<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Intel Corporation<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497=
D"><o:p>&nbsp;</o:p></span></a></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">From:</sp=
an></b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;"> poky-bounces@yoctoproject.org [mailto:poky-bounces@yoc=
toproject.org]
<b>On Behalf Of </b>Flavio Suligoi<br>
<b>Sent:</b> Friday, September 26, 2014 9:42 AM<br>
<b>To:</b> poky@yoctoproject.org<br>
<b>Subject:</b> [poky] Daisy 1.6.1 - matchbox-keyboard doesn't &quot;pop up=
&quot; automatically any more<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:0in;margin-right:0in;mar=
gin-bottom:12.0pt;margin-left:.5in">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Hi all,<br>
<br>
with the old Dylan 1.4 the matchbox-keyboard works perfectly and pops up au=
tomatically when I open a terminal window, or a web browser, or the notes a=
pplication, etc.<br>
<br>
But now, with Daisy 1.6.1 I can start the matchbox-keyboard __ONLY__ if I c=
lick manually on the keyboard icon on the matchbox-panel title-bar. It is a=
 big problem in full screen applications (as a web browser in a &quot;kiosk=
 mode&quot;, for example).<br>
<br>
Any idea to solve this issue?<br>
<br>
Regards,<br>
<br>
Flavio<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o=
:p>&nbsp;</o:p></span></p>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
<span style=3D"color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
<span style=3D"color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:#0089CD">Flavio Suligoi</span></b><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#7F7F7=
F"><br>
</span><i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;;color:#576169">Software Engineer - Firmware</span></i><=
span style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
<span style=3D"color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0089C=
D">ASEM S.p.A.</span></b><span style=3D"font-size:10.0pt;font-family:&quot;=
Tahoma&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:#576169">Via Buia, 4, 33011 Artegna (UD) Italia<br>
Tel &#43;39 0432 967 477</span><span style=3D"color:black"><o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:#576169">Fax &#43;39 0432 967 467
</span><span style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#576169">=
Email:
<a href=3D"mailto:f.suligoi@asem.it">f.suligoi@asem.it</a> </span><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot=
;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:#576169">Internet:
</span><span style=3D"color:black"><a href=3D"http://www.asem.it/" target=
=3D"_blank"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:#576169">www.asem.it</span></a></span><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:#576169">&nbsp;<br>
<br>
</span><span style=3D"font-size:7.0pt;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:#576169">Questo messaggio =E8 equiparato a corrispond=
enza in busta chiusa. E' vietata la sua diffusione, distribuzione, riproduz=
ione e l'uso delle informazioni contenute a chi non =E8 destinatario;
 il responsabile =E8 soggetto a conseguenze legali.Se avete ricevuto questo=
 messaggio per errore, siete pregati di segnalarlo immediatamente al mitten=
te e di distruggerlo (compresi i file eventualmente allegati) senza farne c=
opia.</span><span style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
<i><span lang=3D"EN-GB" style=3D"font-size:7.0pt;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#576169">This e-mail is confidential. If y=
ou are not the addressee or an authorized recipient of this message, any di=
stribution, copying, publication or use of this information
 for any purpose is strictly prohibited.Please, notify the sender immediate=
ly by e-mail and then delete this message.</span></i><span lang=3D"EN-GB" s=
tyle=3D"color:black">
</span><span style=3D"color:black"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_969F26A8BAB325438E7EB80D3C3134FB2F32FF4DIRSMSX106gercor_--
