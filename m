Return-Path: <Daniel.Wang@intusurg.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47324E00DB6; Tue,  5 Nov 2019 10:10:19 -0800 (PST)
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
	*      [40.107.73.138 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
	(mail-eopbgr730138.outbound.protection.outlook.com [40.107.73.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06F3BE00D00
	for <poky@yoctoproject.org>; Tue,  5 Nov 2019 10:10:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=jPOOEQqA92eTTRk1DoMUMALZFQflecmZyQ08JXj0HskBcbh2gZJj5uRHckHtt9htP1vcKt8Id096Ujs9WMbqnqGvdTEbEIZcA1wADf4ThHMxJjT8gB3njpQI/js2p3OJLubfhwNQB8rq2HHQ1LCgJrEmmrU45WqWrOh0ub4kcVJqSsiSeM15n0X4HGOph1pPJcY/gbBQPC0HX1kPYGsKe740iUj6I3I2z38etZiU2CWCiD2GHS+FR3jEfxU8UTefZmkrFfxnsoOaoLYi3ZbNOYGbbeKewW4CByDl0nkAHAxcijwFiCgNmfPkkrP+HXNcRexIqe9aXiDmTiZw+Y+FHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=MsfTBvAc8cvu+oeuu+lNpLg4I/OMddU56qUB8YAgl3k=;
	b=JD3inhexEK3H2IPbgSeZVXZraeX97T2iOrOYNvJXlyM2E4kRzmYURkrvEacl2pYInqpQfRt+lKn5Wy0xoxmge9Rer77VvyU6G7qFKIE8+2wjcmJ6a5ySOR/xhuFkyOWNSV6qVlwc7AFyVyluUb210RYknp2AtmqtaVeRoPLd9gqYpX7g8FOusgtRr0iNYgjlJyw+7rHjBq1HpVGtlBZ6mQPX+lsaF07KLTCN81Umog1TW6yEmHP7EzwkQ/XMfDu/y6aeXtl9bkXORYpDDwMzghYgNAohbx+uxYEoodHUyQzl36JoxIq1CSqny3PPHtziiLjQfRhrLd/xopQ/L28oXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intusurg.com;
	dmarc=pass action=none header.from=intusurg.com; 
	dkim=pass header.d=intusurg.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=IntusurgOps.onmicrosoft.com; s=selector2-IntusurgOps-onmicrosoft-com; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=MsfTBvAc8cvu+oeuu+lNpLg4I/OMddU56qUB8YAgl3k=;
	b=Zz3z/PDrEXqBJ4P7rwO38Adnq6fapdTfD9Nr1QVg0OtyfQyCT0ATR/+NZJ+jDuYz38rcveEaCt4y02Af0/dQ++7+4UTklwp6OhFsSA4Jk1c9rzgg/UwiRFmS6MlwZWEr3Igma1gj1ovfj9SmtEpEHV3Ul5MbJZLPajj/NHwZWog=
Received: from DM6PR01MB5657.prod.exchangelabs.com (10.255.76.74) by
	DM6PR01MB5276.prod.exchangelabs.com (20.177.220.21) with Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2408.24; Tue, 5 Nov 2019 18:10:14 +0000
Received: from DM6PR01MB5657.prod.exchangelabs.com
	([fe80::cd84:3349:8588:dcef]) by DM6PR01MB5657.prod.exchangelabs.com
	([fe80::cd84:3349:8588:dcef%6]) with mapi id 15.20.2408.024;
	Tue, 5 Nov 2019 18:10:14 +0000
From: Daniel Wang <Daniel.Wang@intusurg.com>
To: Matt Madison <matt@madison.systems>
Thread-Topic: [EXTERNAL] Re: [poky] FitImage cause dependency loop
Thread-Index: AQHVj1TKbSKnt1vtEUWe+18uEKBnUqd8styAgAA2sXU=
Date: Tue, 5 Nov 2019 18:10:14 +0000
Message-ID: <DM6PR01MB56570FA3D620F253A08495AD9A7E0@DM6PR01MB5657.prod.exchangelabs.com>
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
x-ms-office365-filtering-correlation-id: f90e0cf8-a465-4f26-c948-08d7621b682f
x-ms-traffictypediagnostic: DM6PR01MB5276:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <DM6PR01MB52769ECCDD3F58A523DF0A619A7E0@DM6PR01MB5276.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:551;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(396003)(39860400002)(376002)(366004)(346002)(189003)(199004)(43544003)(966005)(26005)(53546011)(6506007)(6436002)(8936002)(11346002)(76116006)(81156014)(9686003)(476003)(236005)(74316002)(7696005)(478600001)(3846002)(7736002)(316002)(446003)(6116002)(86362001)(5660300002)(606006)(486006)(91956017)(4326008)(6916009)(66446008)(76176011)(6306002)(54896002)(66066001)(81166006)(256004)(102836004)(14454004)(99286004)(186003)(64756008)(25786009)(33656002)(66556008)(14444005)(71200400001)(66946007)(71190400001)(52536014)(8676002)(66476007)(55016002)(229853002)(2906002)(6246003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR01MB5276;
	H:DM6PR01MB5657.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
	PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: intusurg.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rlku5VtAtjjI6GqfseF1J0WK9bLujLlzmFshBI6YfAnPOSMRZFUHCFYBxCxOs6im9jhq+xE0wx2rLNGVpuAvRlXejqLG5j/EQp6ZdWyCA3o8t4nw/X1+khxYRYZl0S1q/z+GCcfUmpa/Zto1P2r3qERrJptClFbUNPnuYL5vKgQ0hPRJuIhFQj/+sg1ZYUCYDm6B6KefaD32f1fID996Nkdq60MF8YTAc3kTvkjjh83sJaBXOVosu2n1Yavkdrmso49plIN/nAvDqnL119RuTu0cVK7sB8MKKuWfpZVdTvtD7be5UipSOEZV4lv4O0NhOwNuzOmrBSZiYGNEY1ZEuFfpSzp+e5bDyKN1XMagquir5dqg2l6MiVEzQ5H49oAP9yaZr5thQ/988Mn27eLq5x6c1+ohMuh08vl6bZAC4uBEBCcmKDu3A0ftohuwaB0iIr1V7hw9UeMQAdjONzVYJNpAbkUi6RGdsRkmJ89ohvY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: intusurg.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f90e0cf8-a465-4f26-c948-08d7621b682f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 18:10:14.6036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 039caf84-d3e9-4cb9-8b4a-2c2e17a80c19
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qg4TFvLJqi1h05xIMIzKTxdPFYBZD/5idpWAqjUiIHZhET1cH3tC7DkdU192aH+Ur43M1YFmBWkAToJOQbcCbCY5FYOGDFtNc3KNUUo+ybo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB5276
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
X-List-Received-Date: Tue, 05 Nov 2019 18:10:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR01MB56570FA3D620F253A08495AD9A7E0DM6PR01MB5657prod_"

--_000_DM6PR01MB56570FA3D620F253A08495AD9A7E0DM6PR01MB5657prod_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thank you Matt! I opened an issue as you suggested https://github.com/madis=
ongh/meta-tegra/issues/204. Thank you for you help. Please let me know anyt=
hing that I can help.

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

--_000_DM6PR01MB56570FA3D620F253A08495AD9A7E0DM6PR01MB5657prod_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
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
<p class=3D"MsoNormal">Thank you Matt! I opened an issue as you suggested <=
a href=3D"https://github.com/madisongh/meta-tegra/issues/204">
https://github.com/madisongh/meta-tegra/issues/204</a>. Thank you for you h=
elp. Please let me know anything that I can help.</p>
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

--_000_DM6PR01MB56570FA3D620F253A08495AD9A7E0DM6PR01MB5657prod_--
