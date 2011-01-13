Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D3904C81021
	for <poky@pokylinux.org>; Wed, 12 Jan 2011 18:23:06 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Jan 2011 16:23:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,315,1291622400"; 
	d="scan'208,217";a="592398775"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 12 Jan 2011 16:23:04 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 13 Jan 2011 08:22:30 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 13 Jan 2011 08:22:29 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 13 Jan 2011 08:22:28 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "poky@pokylinux.org" <poky@pokylinux.org>
Date: Thu, 13 Jan 2011 08:22:27 +0800
Thread-Topic: LTP status for Yocto 1.0/M2
Thread-Index: AcuySyOhEIm5WJhFQ2OIqV4AuZQbZQALJXsgABAK1IA=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D7895E1AE@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D7895E10C@shsmsx502.ccr.corp.intel.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA134F@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA134F@orsmsx501.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: LTP status for Yocto 1.0/M2
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
X-List-Received-Date: Thu, 13 Jan 2011 00:23:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_625BA99ED14B2D499DC4E29D8138F1504D7895E1AEshsmsx502ccrc_"

--_000_625BA99ED14B2D499DC4E29D8138F1504D7895E1AEshsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Dave,

Yes, LSB contains cron. I talked to Jiajun about choice of the profile. SDK=
 profile simplifies QA's test effort since it runs on both Qemu and real ha=
rdware, while LSB profile is not suitable for most real hardware. Also LSB =
profile lacks of some toolchain and development packages which is not good =
for openposix test. That's why SDK profile is used now though LSB contains =
more complete packages.

There're several cron related failures. One of them also exists on native, =
with the rest specific to Yocto. On LSB profile I expect cron should work, =
however it looks like some files are missing. I'm still looking into them.

You can see from the table that I firstly focus on two categories:

a)    Failures also existing on native (so-called 'LTP')

b)    Failures disappearing with LSB profile (so-called 'NAB': Not-A-Bug)
For the rest failures which fail both on SDK and LSB profile, I'll fill bug=
zilla after some preliminary analysis to make sure it's a real problem inst=
ead of the environmental issue. Now I haven't fill any bug for them yet.

Thanks
Kevin


From: Stewart, David C
Sent: Thursday, January 13, 2011 12:38 AM
To: Tian, Kevin; yocto@yoctoproject.org; poky@pokylinux.org
Subject: RE: LTP status for Yocto 1.0/M2

Kevin - this is quite valuable analysis into the test failures - thank you!

The one which surprises me is the cron failure. But sure enough, the Sato i=
mage I have running on my desk doesn't have cron anything installed.  So I'=
m wondering, which build profile do we test against?  LSB?

Also, do we have bugzillas for the failures?

Dave

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Tian, Kevin
Sent: Wednesday, January 12, 2011 3:24 AM
To: yocto@yoctoproject.org; poky@pokylinux.org
Subject: [poky] LTP status for Yocto 1.0/M2

Hi, all,

I'd like to give a quick update about current LTP status. For detail, pleas=
e check out:
       https://wiki.yoctoproject.org/wiki/LTP_result

Generally LTP is for desktop compliance and not strictly apply to Yocto whe=
n customized for specific purpose.

So the main purpose of this task is:

a)    Track ongoing trend to avoid regression

b)    Understand existing failures and category whether they simply come fr=
om customization

The stretch goal is:

c)    Reduce the failures as much as possible

Now I'd like to say that:

a)    is done by abstracting data from our QA results

b)    is largely done and most failures falling into that category have bee=
n recorded

c)    is on-going

the summary as below:



The majority of the failures are common to all the targets, and thus I now =
focus on qemux86 for major analysis. The "similarity" row above shows how m=
uch common failures exist on other targets compared to qemux86. Because cur=
rent round of QA test uses a "quiet" option when doing LTP test, lots of de=
bug information are lost. So the similarity is simply done by compare the n=
ame of the failed cases, instead of checking its actual error output. I'll =
confirm them later manually, but current ratio still makes lots of sense.

Beagleboard and routerstation may require recollecting data. On beagleboard=
, the low similarity is caused by missing an option when doing LTP test. On=
 routerstation, it looks that kernel config options for IPC (sem, shm, msq,=
 ...) are problematic and the disk space is also not enough.

You can click the target name like "qemux86" to get detail progress for eac=
h target. For example, for qemux86:
https://wiki.yoctoproject.org/wiki/Qemux86-ltp



For other targets, there's a similarity line to show the difference with qe=
mux86. Take qemux86-64 for example:
       https://wiki.yoctoproject.org/wiki/Qemux86_64-ltp



Let me know if you have any comments.

Thanks
Kevin

--_000_625BA99ED14B2D499DC4E29D8138F1504D7895E1AEshsmsx502ccrc_
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
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	font-size:8.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-indent:21.0pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Calibri","sans-serif";}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:792674491;
	mso-list-type:hybrid;
	mso-list-template-ids:1656890290 -745473330 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:39.0pt;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1
	{mso-list-id:1152792725;
	mso-list-type:hybrid;
	mso-list-template-ids:95298080 -346780060 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:39.0pt;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2
	{mso-list-id:1752389549;
	mso-list-type:hybrid;
	mso-list-template-ids:1765814618 -1809530 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:39.0pt;
	text-indent:-18.0pt;}
@list l2:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1030" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue vli=
nk=3Dpurple style=3D'text-justify-trim:punctuation'><div class=3DWordSectio=
n1><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-fa=
mily:"Verdana","sans-serif";color:#1F497D'>Hi, Dave,<o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family=
:"Verdana","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verda=
na","sans-serif";color:#1F497D'>Yes, LSB contains cron. I talked to Jiajun =
about choice of the profile. SDK profile simplifies QA&#8217;s test effort =
since it runs on both Qemu and real hardware, while LSB profile is not suit=
able for most real hardware. Also LSB profile lacks of some toolchain and d=
evelopment packages which is not good for openposix test. That&#8217;s why =
SDK profile is used now though LSB contains more complete packages.<o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.=
0pt;font-family:"Verdana","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;fon=
t-family:"Verdana","sans-serif";color:#1F497D'>There&#8217;re several cron =
related failures. One of them also exists on native, with the rest specific=
 to Yocto. On LSB profile I expect cron should work, however it looks like =
some files are missing. I&#8217;m still looking into them.<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-=
family:"Verdana","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:=
"Verdana","sans-serif";color:#1F497D'>You can see from the table that I fir=
stly focus on two categories:<o:p></o:p></span></p><p class=3DMsoListParagr=
aph style=3D'margin-left:39.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo5=
'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:9.0pt;font-fam=
ily:"Verdana","sans-serif";color:#1F497D'><span style=3D'mso-list:Ignore'>a=
)<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></s=
pan></span><![endif]><span lang=3DEN-US style=3D'font-size:9.0pt;font-famil=
y:"Verdana","sans-serif";color:#1F497D'>Failures also existing on native (s=
o-called &#8216;LTP&#8217;)<o:p></o:p></span></p><p class=3DMsoListParagrap=
h style=3D'margin-left:39.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo5'>=
<![if !supportLists]><span lang=3DEN-US style=3D'font-size:9.0pt;font-famil=
y:"Verdana","sans-serif";color:#1F497D'><span style=3D'mso-list:Ignore'>b)<=
span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></spa=
n></span><![endif]><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:=
"Verdana","sans-serif";color:#1F497D'>Failures disappearing with LSB profil=
e (so-called &#8216;NAB&#8217;: Not-A-Bug)<o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana"=
,"sans-serif";color:#1F497D'>For the rest failures which fail both on SDK a=
nd LSB profile, I&#8217;ll fill bugzilla after some preliminary analysis to=
 make sure it&#8217;s a real problem instead of the environmental issue. No=
w I haven&#8217;t fill any bug for them yet.<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verda=
na","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","sa=
ns-serif";color:#1F497D'>Thanks<o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-seri=
f";color:#1F497D'>Kevin<o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span>=
</p><div style=3D'border:none;border-left:solid blue 1.5pt;padding:0cm 0cm =
0cm 4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;pa=
dding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal align=3Dleft style=3D'text-al=
ign:left'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Taho=
ma","sans-serif"'>From:</span></b><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Tahoma","sans-serif"'> Stewart, David C <br><b>Sent:</b> T=
hursday, January 13, 2011 12:38 AM<br><b>To:</b> Tian, Kevin; yocto@yoctopr=
oject.org; poky@pokylinux.org<br><b>Subject:</b> RE: LTP status for Yocto 1=
.0/M2<o:p></o:p></span></p></div></div><p class=3DMsoNormal align=3Dleft st=
yle=3D'text-align:left'><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;color:#1F497D=
'>Kevin - this is quite valuable analysis into the test failures - thank yo=
u!<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'fo=
nt-size:11.0pt;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US style=3D'font-size:11.0pt;color:#1F497D'>The one whi=
ch surprises me is the cron failure. But sure enough, the Sato image I have=
 running on my desk doesn't have cron anything installed.&nbsp; So I'm wond=
ering, which build profile do we test against?&nbsp; LSB?<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;color=
:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:11.0pt;color:#1F497D'>Also, do we have bugzillas for =
the failures?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;color:#1F497D'>=
Dave<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
font-size:11.0pt;color:#1F497D'><o:p>&nbsp;</o:p></span></p><div style=3D'b=
order:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><di=
v style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm=
 0cm'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>F=
rom:</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ta=
homa","sans-serif"'> poky-bounces@yoctoproject.org [mailto:poky-bounces@yoc=
toproject.org] <b>On Behalf Of </b>Tian, Kevin<br><b>Sent:</b> Wednesday, J=
anuary 12, 2011 3:24 AM<br><b>To:</b> yocto@yoctoproject.org; poky@pokylinu=
x.org<br><b>Subject:</b> [poky] LTP status for Yocto 1.0/M2<o:p></o:p></spa=
n></p></div></div><p class=3DMsoNormal align=3Dleft style=3D'text-align:lef=
t'><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'=
>Hi, all,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US styl=
e=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;=
font-family:"Verdana","sans-serif"'>I&#8217;d like to give a quick update a=
bout current LTP status. For detail, please check out:<o:p></o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-fami=
ly:"Verdana","sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"=
https://wiki.yoctoproject.org/wiki/LTP_result">https://wiki.yoctoproject.or=
g/wiki/LTP_result</a><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><o:p>=
&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'fon=
t-size:9.0pt;font-family:"Verdana","sans-serif"'>Generally LTP is for deskt=
op compliance and not strictly apply to Yocto when customized for specific =
purpose. <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US styl=
e=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;=
font-family:"Verdana","sans-serif"'>So the main purpose of this task is:<o:=
p></o:p></span></p><p class=3DMsoListParagraph style=3D'margin-left:39.0pt;=
text-indent:-18.0pt;mso-list:l2 level1 lfo2'><![if !supportLists]><span lan=
g=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><spa=
n style=3D'mso-list:Ignore'>a)<span style=3D'font:7.0pt "Times New Roman"'>=
&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=
=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'>Track ongoing trend=
 to avoid regression<o:p></o:p></span></p><p class=3DMsoListParagraph style=
=3D'margin-left:39.0pt;text-indent:-18.0pt;mso-list:l2 level1 lfo2'><![if !=
supportLists]><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verd=
ana","sans-serif"'><span style=3D'mso-list:Ignore'>b)<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><s=
pan lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif=
"'>Understand existing failures and category whether they simply come from =
customization<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nbsp;</o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.=
0pt;font-family:"Verdana","sans-serif"'>The stretch goal is:<o:p></o:p></sp=
an></p><p class=3DMsoListParagraph style=3D'margin-left:39.0pt;text-indent:=
-18.0pt;mso-list:l2 level1 lfo2'><![if !supportLists]><span lang=3DEN-US st=
yle=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><span style=3D'm=
so-list:Ignore'>c)<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;=
&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'font-size=
:9.0pt;font-family:"Verdana","sans-serif"'>Reduce the failures as much as p=
ossible<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nbsp;</o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;f=
ont-family:"Verdana","sans-serif"'>Now I&#8217;d like to say that:<o:p></o:=
p></span></p><p class=3DMsoListParagraph style=3D'margin-left:39.0pt;text-i=
ndent:-18.0pt;mso-list:l0 level1 lfo4'><![if !supportLists]><span lang=3DEN=
-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><span styl=
e=3D'mso-list:Ignore'>a)<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;=
&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'fon=
t-size:9.0pt;font-family:"Verdana","sans-serif"'>is done by abstracting dat=
a from our QA results<o:p></o:p></span></p><p class=3DMsoListParagraph styl=
e=3D'margin-left:39.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo4'><![if =
!supportLists]><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Ver=
dana","sans-serif"'><span style=3D'mso-list:Ignore'>b)<span style=3D'font:7=
.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><=
span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-seri=
f"'>is largely done and most failures falling into that category have been =
recorded<o:p></o:p></span></p><p class=3DMsoListParagraph style=3D'margin-l=
eft:39.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo4'><![if !supportLists=
]><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-s=
erif"'><span style=3D'mso-list:Ignore'>c)<span style=3D'font:7.0pt "Times N=
ew Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DE=
N-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'>is on-goi=
ng<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'fo=
nt-size:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nbsp;</o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-fa=
mily:"Verdana","sans-serif"'>the summary as below:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"=
Verdana","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"=
'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nbsp;</o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;f=
ont-family:"Verdana","sans-serif"'>The majority of the failures are common =
to all the targets, and thus I now focus on qemux86 for major analysis. The=
 &#8220;similarity&#8221; row above shows how much common failures exist on=
 other targets compared to qemux86. Because current round of QA test uses a=
 &#8220;quiet&#8221; option when doing LTP test, lots of debug information =
are lost. So the similarity is simply done by compare the name of the faile=
d cases, instead of checking its actual error output. I&#8217;ll confirm th=
em later manually, but current ratio still makes lots of sense.<o:p></o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;=
font-family:"Verdana","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana"=
,"sans-serif"'>Beagleboard and routerstation may require recollecting data.=
 On beagleboard, the low similarity is caused by missing an option when doi=
ng LTP test. On routerstation, it looks that kernel config options for IPC =
(sem, shm, msq, &#8230;) are problematic and the disk space is also not eno=
ugh.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
font-size:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nbsp;</o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-=
family:"Verdana","sans-serif"'>You can click the target name like &#8220;qe=
mux86&#8221; to get detail progress for each target. For example, for qemux=
86:<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-indent:21.0pt'>=
<span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-ser=
if"'><a href=3D"https://wiki.yoctoproject.org/wiki/Qemux86-ltp">https://wik=
i.yoctoproject.org/wiki/Qemux86-ltp</a><o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nbs=
p;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-si=
ze:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nbsp;</o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:=
"Verdana","sans-serif"'>For other targets, there&#8217;s a similarity line =
to show the difference with qemux86. Take qemux86-64 for example:<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0p=
t;font-family:"Verdana","sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
<a href=3D"https://wiki.yoctoproject.org/wiki/Qemux86_64-ltp">https://wiki.=
yoctoproject.org/wiki/Qemux86_64-ltp</a><o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","=
sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-s=
ize:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family=
:"Verdana","sans-serif"'>Let me know if you have any comments.<o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;f=
ont-family:"Verdana","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana",=
"sans-serif"'>Thanks<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'>Kevin=
<o:p></o:p></span></p></div></div></div></body></html>=

--_000_625BA99ED14B2D499DC4E29D8138F1504D7895E1AEshsmsx502ccrc_--
