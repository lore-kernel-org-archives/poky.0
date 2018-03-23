Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97CC2E00B57; Fri, 23 Mar 2018 05:33:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.63 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0063.outbound.protection.outlook.com [104.47.100.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2530DE008D2
	for <poky@yoctoproject.org>; Fri, 23 Mar 2018 05:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpitc.onmicrosoft.com; 
	s=selector1-kpit-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=5NUIwM1NtmMqCB/2sjLEz4k2KuBL27JFDJTaya1gQrs=;
	b=WPx0puAE3hKIYZlFjQ42+o6U6y37KNB7knIFhIahKjwiflf/X4c0JfdUmpBYc/ZGRl+koP39DmK4gqhBW2uNUcujCsrWrQZbMTCsAgnWdlxajgUIvGq4TfWMuZuYzpzzlYE/zpG1RNjnlBgz3goqP/e/tjhcI4WXixPCh6bCfoY=
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM (10.164.150.144) by
	MAXPR01MB0330.INDPRD01.PROD.OUTLOOK.COM (10.164.150.138) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.588.14; Fri, 23 Mar 2018 12:33:32 +0000
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::7d67:279f:2184:ce97]) by
	MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::7d67:279f:2184:ce97%13]) with mapi id 15.20.0588.017;
	Fri, 23 Mar 2018 12:33:32 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: Khem Raj <raj.khem@gmail.com>, Bruce Ashfield
	<bruce.ashfield@windriver.com>
Thread-Topic: [poky] ERROR: ebtables-2.0.10-4-r4 do_compile: oe_runmake failed
Thread-Index: AQHTwbAF3OWRGUcO10+ZKxB01XiqRKPcbNkAgADbwICAAAKo5Q==
Date: Fri, 23 Mar 2018 12:33:31 +0000
Message-ID: <MAXPR01MB034851BEC87A7175C09F109791A80@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB034877262A5CCF7212066F9191A90@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
	<830fb1c1-de32-2cb9-65fd-62ae560901ae@windriver.com>,
	<CAMKF1spJezQ-Shoou=OjyC4TagOAdebu_Cm8AUasPbA5Mn7c1w@mail.gmail.com>
In-Reply-To: <CAMKF1spJezQ-Shoou=OjyC4TagOAdebu_Cm8AUasPbA5Mn7c1w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0330;
	6:hjGsh7XH58I0kqJF8RzJrkRFII9WUbxl8y2gcUh/1ARUmhg478GT+CM1eJxKfP1NSumbvT5epkGWBtsu8Bjw6g33TKFvIyOHit3Obxrla2em0uGy3oPXdyV5vVNwlkBDXUJPW/8jIIoI6PYPFLo1EfvTiyxPLnpl4gmMrs8GDecbykRmIsMuMuzGXDifVsCpEcomt9J06PW/cg5gNEYTMTzo2xyBGWZW7CG9nuBQzHEa+iH6WpV+O9qudPcw8iRpoaZp45nc9AHK9hA6Bw+4qcMcHVn4OgyhU+hSwDyZN+XGGMWfCPv9jdhT+x5MId7kyC4gmBaXrR7pSkbusjQ32f0hDkX6S41iUeDEbok59Bkte1igugas6H2ni0tfQv3l;
	5:T/bwxzZ3cMxYnJc1DIMh/FnVKRdf0Sf8fjPjXo5TBdUyikC49lzapba0MQuv9pdS0SJdLAhGA4xEKDKqX16g82eiC0cEoP3GpazqEVYCWlbVhwBDYhAQVDMglbYMX2GdODzUT+/jiuKuZlZy8lyMbXOdk0Kq8gnTCDEVlrLpQUQ=;
	24:MsOquvfA1Se3Rh3XeM0SvB2IKECZR9TpuPI12gCEWjC+o7Kw2OpFDgL7+jIZt+eixzXRKZZbVNF5JeBvhHO2fGWYL/teUCuJ5/UOvvD2SnU=;
	7:EeoDTaBaqYmEDGkTnY5oyje9OJ5aWDsSl1DyqMwj43yZr1BRc9ebpMIuc9NMpQOitcdiEs2MnDgp1nxqS7K7wwn1wTNP2neHVBiQtdDI74e+r4AvtFuv0gG9zhGdt7BLQfg8dgEVdPte4mS8HJSP0FSXhuwdmUi+MJbigJDwSf3rXH7enX82igfUzJSHp1s5H/b7eMHoIocew7iArn9l0kBnKVyXB5uwW3u4tvoXzl9soPNPHAAAmTY19ijxfLiP
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5cc64063-916f-4a5c-6435-08d590ba49eb
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4604075)(3008032)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:MAXPR01MB0330; 
x-ms-traffictypediagnostic: MAXPR01MB0330:
x-microsoft-antispam-prvs: <MAXPR01MB0330D19271AA8BBF8E942EED91A80@MAXPR01MB0330.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(85827821059158);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3002001)(93006095)(93001095)(3231221)(944501327)(52105095)(10201501046)(6055026)(6041310)(20161123564045)(20161123558120)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(6072148)(201708071742011);
	SRVR:MAXPR01MB0330; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0330; 
x-forefront-prvs: 0620CADDF3
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(979002)(396003)(39380400002)(39860400002)(346002)(376002)(366004)(189003)(199004)(76176011)(5660300001)(25786009)(2900100001)(59450400001)(478600001)(6606003)(7696005)(606006)(33656002)(6246003)(99286004)(55236004)(11346002)(4326008)(6506007)(53546011)(72206003)(14454004)(316002)(966005)(39060400002)(97736004)(53936002)(6436002)(81166006)(8676002)(236005)(9686003)(55016002)(8936002)(105586002)(102836004)(19627405001)(81156014)(7736002)(6116002)(3846002)(26005)(5250100002)(68736007)(6306002)(229853002)(3660700001)(106356001)(86362001)(74316002)(110136005)(446003)(2906002)(54896002)(3280700002)(66066001)(186003)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0330;
	H:MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: RMoywTNIQxwEObzyBMl0cSC1dP+FDMpMa8RAEYt7IIBPllpJMo0+EWJ4CHAp8Hk2Ik5VHyMPfcJ0tf4iXMvSGm9VL7mpaRnXihRhbitPeS9wITXeCMahPdc2pHxqySngZdCOfLT/EWxuduFArN7eDZnUMZ4K4I7Q6KDMOcJJDwYOE5t5JKrR8Ff7wk5vD9sTLQqXfxh34WxNmXDZCvB2bnLyYDcJCIRoqdLdC5EGrgtnYmfLjOias8G1ZW5/oB6fU0J+6bnhYHTCqssB7OnFO75P3CRee9xBXc6g4Gyt53dM6yvxMLQJZUgcc3OuT7FRxPSlA4/rWlmQ+dRQtPX3Bw==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cc64063-916f-4a5c-6435-08d590ba49eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2018 12:33:31.9710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0330
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: ERROR: ebtables-2.0.10-4-r4 do_compile: oe_runmake failed
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
X-List-Received-Date: Fri, 23 Mar 2018 12:33:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB034851BEC87A7175C09F109791A80MAXPR01MB0348INDP_"

--_000_MAXPR01MB034851BEC87A7175C09F109791A80MAXPR01MB0348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bruce and Raj,


Successfully able to build image after pulling latest poky changes from mas=
ter branch without applying patch.


Thanks for your valuable inputs.




Regards,

Aditya Tayade

________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Friday, March 23, 2018 10:45:41 AM
To: Bruce Ashfield
Cc: Aditya Tayade; poky@yoctoproject.org
Subject: Re: [poky] ERROR: ebtables-2.0.10-4-r4 do_compile: oe_runmake fail=
ed

On Thu, Mar 22, 2018 at 9:09 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 03/22/2018 03:43 AM, Aditya Tayade wrote:
>>
>> Hi,
>>
>>
>> After adding meta-networking sub-layer in the yocto 2.5 project getting
>> some redeclaration errors while building the image.
>>
>> Could you please help with finding out the root cause.
>
>
> There have been several fixes to this in the master branches. The kernel'=
s
> v4.15 headers moved some of the include contents around and that
> introduced build issues for ebtables.
>
> That regression was subsequently fixes in a v4.15-stable, and I
> updated the libc-headers to pick it up.
>
> Khem also sent a patch to meta-oe for ebtables to fix it without
> even needing the headers update.
>

yeah and they are still not applied unfortunately so please grab them
from patchwork until they get applied to meta-networking

https://patchwork.openembedded.org/patch/149374/
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MAXPR01MB034851BEC87A7175C09F109791A80MAXPR01MB0348INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p style=3D"margin-top:0; margin-bottom:0">Hi Bruce and Raj,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Successfully able to build image=
 after pulling latest poky changes from master branch without applying patc=
h.<br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Thanks for your valuable inputs.=
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0; margin-bottom:0">Aditya Tayade<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=
=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Khem Raj &lt;raj.khe=
m@gmail.com&gt;<br>
<b>Sent:</b> Friday, March 23, 2018 10:45:41 AM<br>
<b>To:</b> Bruce Ashfield<br>
<b>Cc:</b> Aditya Tayade; poky@yoctoproject.org<br>
<b>Subject:</b> Re: [poky] ERROR: ebtables-2.0.10-4-r4 do_compile: oe_runma=
ke failed</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On Thu, Mar 22, 2018 at 9:09 AM, Bruce Ashfield<br=
>
&lt;bruce.ashfield@windriver.com&gt; wrote:<br>
&gt; On 03/22/2018 03:43 AM, Aditya Tayade wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; After adding meta-networking sub-layer in the yocto 2.5 project ge=
tting<br>
&gt;&gt; some redeclaration errors while building the image.<br>
&gt;&gt;<br>
&gt;&gt; Could you please help with finding out the root cause.<br>
&gt;<br>
&gt;<br>
&gt; There have been several fixes to this in the master branches. The kern=
el's<br>
&gt; v4.15 headers moved some of the include contents around and that<br>
&gt; introduced build issues for ebtables.<br>
&gt;<br>
&gt; That regression was subsequently fixes in a v4.15-stable, and I<br>
&gt; updated the libc-headers to pick it up.<br>
&gt;<br>
&gt; Khem also sent a patch to meta-oe for ebtables to fix it without<br>
&gt; even needing the headers update.<br>
&gt;<br>
<br>
yeah and they are still not applied unfortunately so please grab them<br>
from patchwork until they get applied to meta-networking<br>
<br>
<a href=3D"https://patchwork.openembedded.org/patch/149374/" id=3D"LPlnk219=
605" previewremoved=3D"true">https://patchwork.openembedded.org/patch/14937=
4/</a><br>
</div>
</span></font></div>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_MAXPR01MB034851BEC87A7175C09F109791A80MAXPR01MB0348INDP_--
