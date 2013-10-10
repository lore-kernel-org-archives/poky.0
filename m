Return-Path: <mdavis@planetaryresources.com>
Received: from smtp75.iad3a.emailsrvr.com (smtp75.iad3a.emailsrvr.com
	[173.203.187.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62C7DE01652
	for <poky@yoctoproject.org>; Thu, 10 Oct 2013 15:06:53 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp2.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	E59DB3019D
	for <poky@yoctoproject.org>; Thu, 10 Oct 2013 18:06:52 -0400 (EDT)
X-Virus-Scanned: OK
Received: from smtp192.mex02.mlsrvr.com (smtp192.mex02.mlsrvr.com
	[204.232.137.43])
	by smtp2.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTPS id
	D4A4730188
	for <poky@yoctoproject.org>; Thu, 10 Oct 2013 18:06:52 -0400 (EDT)
Received: from IAD2MBX05.mex02.mlsrvr.com ([172.23.11.33]) by
	IAD2HUB02.mex02.mlsrvr.com ([172.23.10.66]) with mapi; Thu, 10 Oct 2013
	18:06:52 -0400
From: Michael Davis <mdavis@planetaryresources.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 10 Oct 2013 18:06:52 -0400
Thread-Topic: Add single user
Thread-Index: Ac7GA8ZinVFmb61ISUWPZDDEdSKlMw==
Message-ID: <7BDD69127112414F90CF3FED4711BF150D15A47EB5@IAD2MBX05.mex02.mlsrvr.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Add single user
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
X-List-Received-Date: Thu, 10 Oct 2013 22:06:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7BDD69127112414F90CF3FED4711BF150D15A47EB5IAD2MBX05mex0_"

--_000_7BDD69127112414F90CF3FED4711BF150D15A47EB5IAD2MBX05mex0_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am attempting to add a single user to my poky build.  I am trying to foll=
ow the useradd-example.bb layout but I cannot get bitbake to like it.  My b=
b file looks like so:

SUMMARY =3D "Add a user"
DESCRIPTION =3D "This recipe will add a new user"

PR =3D "r0"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COREBASE}/LICENSE;md5=3D3f40d7994397109285ec=
7b81fdeb3b58"

S =3D "${WORKDIR}"

inherit useradd

USERADD_PACKAGES =3D "${PN}"

USERADD_PARAM_${PN} =3D "--disabled-password hal"


do_install () {

           chown -R hal ${D}${datadir}/hal
}

FILES_${PN} =3D "${datadir}/hal/*"

I have the useradd package specified as a dependency for a package group wh=
ich I am installing for my image.  When I bake, it attempts do_rootfs but f=
ails and spits out a huge log after which it simple states that it couldn't=
 satisfy dependencies for my package group and and points the the useradd p=
ackage.  Is there any obvious reason why such a simple recipe like this wou=
ld not work?  Thanks

-Mike

--_000_7BDD69127112414F90CF3FED4711BF150D15A47EB5IAD2MBX05mex0_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>I am attempting =
to add a single user to my poky build.&nbsp; I am trying to follow the user=
add-example.bb layout but I cannot get bitbake to like it.&nbsp; My bb file=
 looks like so:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>SUMMARY =3D &quot;Add a user&quot;<o:p></o:p></p><p class=
=3DMsoNormal>DESCRIPTION =3D &quot;This recipe will add a new user&quot;<o:=
p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>=
PR =3D &quot;r0&quot;<o:p></o:p></p><p class=3DMsoNormal>LICENSE =3D &quot;=
MIT&quot;<o:p></o:p></p><p class=3DMsoNormal>LIC_FILES_CHKSUM =3D &quot;fil=
e://${COREBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58&quot;<o:p></=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>S =
=3D &quot;${WORKDIR}&quot;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</=
o:p></p><p class=3DMsoNormal>inherit useradd<o:p></o:p></p><p class=3DMsoNo=
rmal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>USERADD_PACKAGES =3D &quot;$=
{PN}&quot;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>USERADD_PARAM_${PN} =3D &quot;--disabled-password hal&quot;<o:=
p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>=
<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>do_install () {<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chown -R hal ${D}${datadir}/h=
al<o:p></o:p></p><p class=3DMsoNormal> }<o:p></o:p></p><p class=3DMsoNormal=
><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>FILES_${PN} =3D &quot;${datadir}=
/hal/*&quot;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoNormal>I have the useradd package specified as a dependency for a p=
ackage group which I am installing for my image.&nbsp; When I bake, it atte=
mpts do_rootfs but fails and spits out a huge log after which it simple sta=
tes that it couldn&#8217;t satisfy dependencies for my package group and an=
d points the the useradd package.&nbsp; Is there any obvious reason why suc=
h a simple recipe like this would not work?&nbsp; Thanks<o:p></o:p></p><p c=
lass=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>-Mike<o:p></o:p>=
</p></div></body></html>=

--_000_7BDD69127112414F90CF3FED4711BF150D15A47EB5IAD2MBX05mex0_--
