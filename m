Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5537A4C80772
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 00:59:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Feb 2011 22:59:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,224,1297065600"; 
	d="scan'208,217";a="393916408"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 24 Feb 2011 22:59:08 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 25 Feb 2011 14:58:36 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 25 Feb 2011 14:58:35 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: v sailaja <vsailub4u@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Fri, 25 Feb 2011 14:58:34 +0800
Thread-Topic: [poky] problems while building an image uasing poky
Thread-Index: AcvUuQq7gynguS2FT6ahuf6nFmgu/gAAFNCA
Message-ID: <625BA99ED14B2D499DC4E29D8138F15052FC80F00B@shsmsx502.ccr.corp.intel.com>
References: <AANLkTin31iKNweKt-KET12gm6Fw4v4FJay+p1aE-ZkV_@mail.gmail.com>
In-Reply-To: <AANLkTin31iKNweKt-KET12gm6Fw4v4FJay+p1aE-ZkV_@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: problems while building an image uasing poky
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
X-List-Received-Date: Fri, 25 Feb 2011 06:59:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_625BA99ED14B2D499DC4E29D8138F15052FC80F00Bshsmsx502ccrc_"

--_000_625BA99ED14B2D499DC4E29D8138F15052FC80F00Bshsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, SAI,

could you post further error log about do_install?

Thanks
Kevin

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of v sailaja
Sent: Friday, February 25, 2011 2:56 PM
To: poky@yoctoproject.org
Subject: [poky] problems while building an image uasing poky

Hi,


I am trying to build an image on poky platform. I didn't find some packages=
 like krb and directfb, so I copied those packages from open-embedded. but =
I am getting an error like
 package krb5-1.6.3-r6: task do_install: Failed

Can anyone help me to fix this problem.

Thanks & Regards,
SAI






--_000_625BA99ED14B2D499DC4E29D8138F15052FC80F00Bshsmsx502ccrc_
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
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META HTTP-EQUI=
V=3D"Content-Type" CONTENT=3D"text/html; charset=3Dus-ascii"><meta name=3DG=
enerator content=3D"Microsoft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F49=
7D'>Hi, SAI,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US s=
tyle=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'>=
<o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'>coul=
d you post further error log about do_install?<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Cal=
ibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri",=
"sans-serif";color:#1F497D'>Thanks<o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-=
serif";color:#1F497D'>Kevin<o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";=
color:#1F497D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border=
-left:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'border=
:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3D=
MsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Taho=
ma","sans-serif"'>From:</span></b><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Tahoma","sans-serif"'> poky-bounces@yoctoproject.org [mail=
to:poky-bounces@yoctoproject.org] <b>On Behalf Of </b>v sailaja<br><b>Sent:=
</b> Friday, February 25, 2011 2:56 PM<br><b>To:</b> poky@yoctoproject.org<=
br><b>Subject:</b> [poky] problems while building an image uasing poky<o:p>=
</o:p></span></p></div></div><p class=3DMsoNormal><span lang=3DEN-US><o:p>&=
nbsp;</o:p></span></p><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><=
span lang=3DEN-US>Hi,<br><br><br>I am trying to build an image on poky plat=
form. I didn't find some packages like<b> krb and directfb</b>, so I copied=
 those packages from open-embedded. but I am getting an <b>error</b> like&n=
bsp;&nbsp; <br>&nbsp;<b>package krb5-1.6.3-r6: task do_install: Failed</b><=
br><br>Can anyone help me to fix this problem.<br><br>Thanks &amp; Regards,=
<br>SAI<br><br><br><br><br><br><o:p></o:p></span></p></div></div></body></h=
tml>=

--_000_625BA99ED14B2D499DC4E29D8138F15052FC80F00Bshsmsx502ccrc_--
