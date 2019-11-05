Return-Path: <Daniel.Wang@intusurg.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58B2CE00DB1; Tue,  5 Nov 2019 13:24:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.68.113 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-eopbgr680113.outbound.protection.outlook.com [40.107.68.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8929CE00D9E
	for <poky@yoctoproject.org>; Tue,  5 Nov 2019 13:24:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=nm/NLIYo+3lRy7TUs3rRs/NV35hm1mnG3VDHuRdX46LP7q4kZcBkTLGXQVkT2p8vHdneECrTCTPpgkgQDGcIoNaAZi1KR+kJCM4COZylQmJllFNF5bK1vPEdoV5+YdbHPE4/+5Goo//75a64A/vj6YWQ8/gn35ALkToKLJl5fe+bc4UTf1pUqNWML+fTOgz4AaJAUY4ks7BhnnAWvOZHGgmBEKVMtAKMmiQ3ZIjyQeRbbAxuWrfI2A2cSoHL/CvEIkOwLrYQwK+fqaoWOlRVDS1LsooHOOwtextAqhLwYNN+ul8Z5R3RyaY7/IqYpqFk6L2T0ZuEK8L0JkzTeecsRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=47yKg0bvmkZpx6JFmYtY75Nd1yLmy6EnZFqqC/Qdq+Y=;
	b=NX7KpM5WFIh3pHfmFyboELMqlY9d/oVrDLxaS7Aqmlir8xrdtZwzBHYXI5/rcYqGyuVHX5QHSXsFnlTirzjjL9z1NY11Jq0bxCKhmc2wRzi5xECQ6eT5In6fDWL6moTV6jBa6mrl3BpxTMXm94YUF2ZhXkp8jqqjnNMpmqFy1wbdf7WqXFBdH6AekQ9vNf5cL/o5sYODxWJ8hMSQMu0u3Oe1PbAxgn4ghSEwgwnULhy/wh695/4r+v99MzkD9qSnTCBXck4MeaZBsC1TBJTEhGQjPIn6dlJnTL7Sf+EI6L3Jsg1xB0CV8NvKRFWo19hopHwV6i7LgLuSFrqzbHqS5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intusurg.com;
	dmarc=pass action=none header.from=intusurg.com; 
	dkim=pass header.d=intusurg.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=IntusurgOps.onmicrosoft.com; s=selector2-IntusurgOps-onmicrosoft-com; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=47yKg0bvmkZpx6JFmYtY75Nd1yLmy6EnZFqqC/Qdq+Y=;
	b=5M3KG2qBy2IwRXJqdM85181TW3AFvITrvIN+9E+28Ayexy+KvyenteX0k75FYntAlRC+WQ5BaquQIdPT31EvBm2i2OGfRu+Qiw9PNoVqwtK+566e+PDUzeoQZFvcfeB0JAlOWs2TBi1ANPoID2eBXU7W57VGdfF8KnIxe79SO0k=
Received: from DM6PR01MB5657.prod.exchangelabs.com (10.255.76.74) by
	DM6PR01MB4633.prod.exchangelabs.com (20.177.217.24) with Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2430.20; Tue, 5 Nov 2019 21:24:14 +0000
Received: from DM6PR01MB5657.prod.exchangelabs.com
	([fe80::cd84:3349:8588:dcef]) by DM6PR01MB5657.prod.exchangelabs.com
	([fe80::cd84:3349:8588:dcef%6]) with mapi id 15.20.2408.024;
	Tue, 5 Nov 2019 21:24:14 +0000
From: Daniel Wang <Daniel.Wang@intusurg.com>
To: Matt Madison <matt@madison.systems>
Thread-Topic: [EXTERNAL] Re: [poky] FitImage cause dependency loop
Thread-Index: AQHVj1TKbSKnt1vtEUWe+18uEKBnUqd8styAgABsKV4=
Date: Tue, 5 Nov 2019 21:24:14 +0000
Message-ID: <DM6PR01MB56573CA7B868354AA466E3589A7E0@DM6PR01MB5657.prod.exchangelabs.com>
References: <DM6PR01MB5657A2CFB4DFC8F0E4AC7B1A9A600@DM6PR01MB5657.prod.exchangelabs.com>,
	<CAGgRHJoe7VAnb=ViguGpVtyiD28wFaHU1VC6-Hxh-xtZOKGcmg@mail.gmail.com>
In-Reply-To: <CAGgRHJoe7VAnb=ViguGpVtyiD28wFaHU1VC6-Hxh-xtZOKGcmg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Daniel.Wang@intusurg.com; 
x-originating-ip: [8.36.116.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4afa3ec1-7a90-402f-9adb-08d7623681c6
x-ms-traffictypediagnostic: DM6PR01MB4633:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DM6PR01MB4633C5CDC7481199BA8AAE4A9A7E0@DM6PR01MB4633.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:628;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(366004)(396003)(136003)(376002)(346002)(189003)(199004)(43544003)(66476007)(66556008)(66446008)(33656002)(91956017)(966005)(64756008)(316002)(4326008)(6246003)(6506007)(606006)(2906002)(26005)(229853002)(6116002)(66946007)(76176011)(102836004)(76116006)(53546011)(55016002)(9686003)(236005)(8676002)(6306002)(5660300002)(54896002)(52536014)(3846002)(7696005)(14454004)(6436002)(256004)(186003)(14444005)(476003)(6916009)(11346002)(446003)(486006)(71200400001)(25786009)(478600001)(7736002)(74316002)(81156014)(66066001)(81166006)(71190400001)(86362001)(8936002)(99286004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR01MB4633;
	H:DM6PR01MB5657.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
	PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: intusurg.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F9Q3dDSGzB05nY+FoH/0ZKYJ8U0cEYlXZFlUzoia+DEnHnv+hv8vkzZpBqk2p91indPy0hm/i843LUWNzCp4iehgKtKg5DuAhr53tykD8mEVqqlbxbNz3lU+12yEj8T31A7lY5TeLDYBM/YoLI64nYzAUD8AdHylB7uT+ZY6IIOlr1+ABXujsifSrSVbgD7MLeqOlWA9f204ilZUDUyy5bohhx7UCiWRPeYTvVa68nEg3nVTag9xKnMEFRCaNxM3RLxy0nsqG+ToYkydfRAZJa+t8O4Y5MUMsLee4zePZL1RZPR5CuuSh4bd2gQMCaumbFnqkZKZGgst8ZsPLnMxEo7fsqoRL7WHz1jvsPeiBfAVwDZFvFkvvkxG7DHzfbj2KxaN/QBkpDYC5MsAcvnfhVSFrcZlvx/OLILtUhdVw8+/6Op/E7PXDSETVDe/q2rP8jUTzfdMddL8jH31YXRZgOV2gYEvOye3YAmCRVoysVY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: intusurg.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4afa3ec1-7a90-402f-9adb-08d7623681c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 21:24:14.0707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 039caf84-d3e9-4cb9-8b4a-2c2e17a80c19
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FwGOpxhozRt5vzfqO9e1E3pBYSs/FDz8mdJmk4RUHNYGskZQZQiEM+lkp+6whXsdlzsboLy+266GCHV5YV/9b1OZnLz+JBpKVnyOmNs6Cbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB4633
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: FitImage cause dependency loop
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
X-List-Received-Date: Tue, 05 Nov 2019 21:24:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR01MB56573CA7B868354AA466E3589A7E0DM6PR01MB5657prod_"

--_000_DM6PR01MB56573CA7B868354AA466E3589A7E0DM6PR01MB5657prod_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I think I found the problem. u-boot-tegra>2016.07.bb calls a function =96 u=
boot_make_bootimg during do_compile. The dtb and uboot.bin concatenation ha=
ppens in do_deploy which does not call that function. Hence the format issu=
e cause cboot to load u-boot.

Now I do not know what is the best location to sign the FIT image and put e=
verything together=85

Thanks
-Daniel

________________________________
From: Matt Madison <matt@madison.systems>
Sent: Tuesday, November 5, 2019 6:53:19 AM
To: Daniel Wang <Daniel.Wang@intusurg.com>
Cc: poky@yoctoproject.org <poky@yoctoproject.org>
Subject: [EXTERNAL] Re: [poky] FitImage cause dependency loop

Daniel,

This is a problem in meta-tegra.  I've fixed it in master, but will
need to back-port that change to the warrior branch.  Open an issue at
https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_madisongh=
_meta-2Dtegra_issues&d=3DDwIFaQ&c=3DzU8zY2zCUszYt_I-pOyd_mv7l16V_LqUcVo_CQ1=
Hrvg&r=3Dp6vhUY-dW00tLZcI2hebygBMGd7V0lmO5LmKcyXGgOA&m=3DWUaYSF20syeE7svLN6=
b6qAGmxg3tbfdxT9u5pHu7Qyw&s=3D9hTBZqwlqqbatnh2kuuCJ-l9fvmkLSdtitF3boVX1WY&e=
=3D  and that will remind me
to take care of it.

Regards,
-Matt

On Wed, Oct 30, 2019 at 12:10 PM Daniel Wang <Daniel.Wang@intusurg.com> wro=
te:
>
> Hi there,
>
>
>
> I got a question hope some of you can give me an advice. I=92m using Yoct=
o Warrior and meta-tegra to build my distro. I want to enable verified boot=
 so I added the following settings.
>
>
>
> KERNEL_CLASSES ?=3D =93 kernel-fitimage =94
>
> KERNEL_IMAGETYPES_append =3D =93 fitImage=94
>
> UBOOT_SIGN_KEYDIR =3D =93${TOPDIR}/conf=94
>
> UBOOT_SIGN_KEYNAME =3D =93dev=94
>
> UBOOT_MKIMAGE_DTCOPTS =3D =93-I dts -O dtb -p 2000=94
>
> UBOOT_SIGN_ENABLE  =3D =931=94
>
>
>
> Everything works well without those setting. But as soon as I added those=
 ones Yocto reports a dependency loop (more than 10 matches). Have any of y=
ou encountered this issue before how can I fix it? Thank you so much!
>
>
>
> Thanks
>
> -Daniel
>
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_listinfo_poky&d=3DDwIFaQ&c=3DzU8zY2zCUszYt_I-pOyd_mv7l16V_LqUcVo_CQ1Hr=
vg&r=3Dp6vhUY-dW00tLZcI2hebygBMGd7V0lmO5LmKcyXGgOA&m=3DWUaYSF20syeE7svLN6b6=
qAGmxg3tbfdxT9u5pHu7Qyw&s=3DV4cB0EDBDlBrb8vJkCoL3k5AqGk8ar9TeYjFiU7CC0Y&e=
=3D

---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-------------------------------------------------------
NOTE THAT THIS EMAIL ORIGINATED FROM OUTSIDE OF INTUITIVE SURGICAL..
Be alert for fraudulent emails that spoof internal =93@intusurg.com=94 emai=
l addresses.  Report these or other security threats to: ITHelpNow@intusurg=
.com.

--_000_DM6PR01MB56573CA7B868354AA466E3589A7E0DM6PR01MB5657prod_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I think I found the problem. u-boot-tegra&gt;2016.07=
.bb calls a function =96 uboot_make_bootimg during do_compile. The dtb and =
uboot.bin concatenation happens in do_deploy which does not call that funct=
ion. Hence the format issue cause cboot
 to load u-boot.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now I do not know what is the best location to sign =
the FIT image and put everything together=85</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">-Daniel<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Matt Madison &lt;matt=
@madison.systems&gt;<br>
<b>Sent:</b> Tuesday, November 5, 2019 6:53:19 AM<br>
<b>To:</b> Daniel Wang &lt;Daniel.Wang@intusurg.com&gt;<br>
<b>Cc:</b> poky@yoctoproject.org &lt;poky@yoctoproject.org&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [poky] FitImage cause dependency loop</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Daniel,<br>
<br>
This is a problem in meta-tegra.&nbsp; I've fixed it in master, but will<br=
>
need to back-port that change to the warrior branch.&nbsp; Open an issue at=
<br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.co=
m_madisongh_meta-2Dtegra_issues&amp;d=3DDwIFaQ&amp;c=3DzU8zY2zCUszYt_I-pOyd=
_mv7l16V_LqUcVo_CQ1Hrvg&amp;r=3Dp6vhUY-dW00tLZcI2hebygBMGd7V0lmO5LmKcyXGgOA=
&amp;m=3DWUaYSF20syeE7svLN6b6qAGmxg3tbfdxT9u5pHu7Qyw&amp;s=3D9hTBZqwlqqbatn=
h2kuuCJ-l9fvmkLSdtitF3boVX1WY&amp;e=3D">https://urldefense.proofpoint.com/v=
2/url?u=3Dhttps-3A__github.com_madisongh_meta-2Dtegra_issues&amp;d=3DDwIFaQ=
&amp;c=3DzU8zY2zCUszYt_I-pOyd_mv7l16V_LqUcVo_CQ1Hrvg&amp;r=3Dp6vhUY-dW00tLZ=
cI2hebygBMGd7V0lmO5LmKcyXGgOA&amp;m=3DWUaYSF20syeE7svLN6b6qAGmxg3tbfdxT9u5p=
Hu7Qyw&amp;s=3D9hTBZqwlqqbatnh2kuuCJ-l9fvmkLSdtitF3boVX1WY&amp;e=3D</a>&nbs=
p;
 and that will remind me<br>
to take care of it.<br>
<br>
Regards,<br>
-Matt<br>
<br>
On Wed, Oct 30, 2019 at 12:10 PM Daniel Wang &lt;Daniel.Wang@intusurg.com&g=
t; wrote:<br>
&gt;<br>
&gt; Hi there,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I got a question hope some of you can give me an advice. I=92m using Y=
octo Warrior and meta-tegra to build my distro. I want to enable verified b=
oot so I added the following settings.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; KERNEL_CLASSES ?=3D =93 kernel-fitimage =94<br>
&gt;<br>
&gt; KERNEL_IMAGETYPES_append =3D =93 fitImage=94<br>
&gt;<br>
&gt; UBOOT_SIGN_KEYDIR =3D =93${TOPDIR}/conf=94<br>
&gt;<br>
&gt; UBOOT_SIGN_KEYNAME =3D =93dev=94<br>
&gt;<br>
&gt; UBOOT_MKIMAGE_DTCOPTS =3D =93-I dts -O dtb -p 2000=94<br>
&gt;<br>
&gt; UBOOT_SIGN_ENABLE&nbsp; =3D =931=94<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Everything works well without those setting. But as soon as I added th=
ose ones Yocto reports a dependency loop (more than 10 matches). Have any o=
f you encountered this issue before how can I fix it? Thank you so much!<br=
>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt; -Daniel<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; poky@yoctoproject.org<br>
&gt; <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__list=
s.yoctoproject.org_listinfo_poky&amp;d=3DDwIFaQ&amp;c=3DzU8zY2zCUszYt_I-pOy=
d_mv7l16V_LqUcVo_CQ1Hrvg&amp;r=3Dp6vhUY-dW00tLZcI2hebygBMGd7V0lmO5LmKcyXGgO=
A&amp;m=3DWUaYSF20syeE7svLN6b6qAGmxg3tbfdxT9u5pHu7Qyw&amp;s=3DV4cB0EDBDlBrb=
8vJkCoL3k5AqGk8ar9TeYjFiU7CC0Y&amp;e=3D">
https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.o=
rg_listinfo_poky&amp;d=3DDwIFaQ&amp;c=3DzU8zY2zCUszYt_I-pOyd_mv7l16V_LqUcVo=
_CQ1Hrvg&amp;r=3Dp6vhUY-dW00tLZcI2hebygBMGd7V0lmO5LmKcyXGgOA&amp;m=3DWUaYSF=
20syeE7svLN6b6qAGmxg3tbfdxT9u5pHu7Qyw&amp;s=3DV4cB0EDBDlBrb8vJkCoL3k5AqGk8a=
r9TeYjFiU7CC0Y&amp;e=3D</a>
<br>
<br>
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-------------------------------------------------------<br>
NOTE THAT THIS EMAIL ORIGINATED FROM OUTSIDE OF INTUITIVE SURGICAL..<br>
Be alert for fraudulent emails that spoof internal =93@intusurg.com=94 emai=
l addresses.&nbsp; Report these or other security threats to: ITHelpNow@int=
usurg.com.<br>
</div>
</span></font></div>
</body>
</html>

--_000_DM6PR01MB56573CA7B868354AA466E3589A7E0DM6PR01MB5657prod_--
