Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A77A8E00BA0; Thu, 18 Feb 2016 12:01:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C16BE00B66
	for <poky@yoctoproject.org>; Thu, 18 Feb 2016 12:01:09 -0800 (PST)
Received: by mail-ob0-f171.google.com with SMTP id xk3so85627520obc.2
	for <poky@yoctoproject.org>; Thu, 18 Feb 2016 12:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:mime-version:thread-index:date:message-id:subject:to
	:content-type; bh=ZLS6dnJ+OhIM04JIuPf3S0yBXeNa07h2NkA9b0Yq7HA=;
	b=gwdK2j+u1Ip+6BctXJb9um2V6RnzmvrtqK/C3UpFu2Y6Srvu9wVkb6HmOsmm99VJrt
	XhmphfPWWIrPMArfp+etLCww4VgTBWuvKG+DIdCu2ojPpqoRO64NMq65XEF11jDpktOl
	Qwc9GaoMGXLYjIognfyQUqJ/Dq0IN2NmPCsQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:mime-version:thread-index:date:message-id
	:subject:to:content-type;
	bh=ZLS6dnJ+OhIM04JIuPf3S0yBXeNa07h2NkA9b0Yq7HA=;
	b=Uqq3Xysl4CXZnYE+2t5wGWYLlVOKaQe/yTcshYU34kySRLjHDxYJKucSA6PG7D0bwE
	yiKKekuXjOrPq6ZzP4F0ESYIxF+bh22Jd5KvjPjVFFGKJuQEY4V4PlRJYE64Lux52WUB
	QGI3JyWW34/0/QPXHkn8FqjNcLyCz0vB03xNthQp13K/a2gUtet+iELzApWSgKxoyiMV
	bHxvQqb8s2Tya8p0B0czfrE4y7r1Rk9Rh89UGa76b8+Ziurg1By8y5gjpnoURfmtaBxR
	8gxoQKu6SJJpygU6t+HloaA9wvtyiUbj0I6vzptZcQVHZd7Hp7mykCN/ZCCmYEdsosaT
	fGcg==
X-Gm-Message-State: AG10YOQn8PNCHbJ7iAm65OSDBeOkLTES90B1Q3BJkokbXmHKa/k2PIPbugd3EbRHv/GURV0JuVf186MFcDmskAHF
X-Received: by 10.182.24.8 with SMTP id q8mr7996824obf.67.1455825666601; Thu,
	18 Feb 2016 12:01:06 -0800 (PST)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdFqhp3Wc2QCm3K+Q16xqJxvHdGLbQ==
Date: Thu, 18 Feb 2016 12:01:07 -0800
Message-ID: <782f4c4196c1be19342a12a8b784662b@mail.gmail.com>
To: poky@yoctoproject.org
Subject: gcc multilib
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
X-List-Received-Date: Thu, 18 Feb 2016 20:01:25 -0000
Content-Type: multipart/alternative; boundary=001a11c24b38b72318052c10d399

--001a11c24b38b72318052c10d399
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,



We have a machine configured for hard floating point. This builds a hard fp
version of libgcc. We also have some bootloaders and other code that
require libgcc but use soft fp. I would prefer to keep the bootloaders
using soft fp. Is there a way to configure libgcc to produce both hard and
soft fp versions of libraries? There are multilib examples for 32 and 64
versions of libs but it=E2=80=99s not clear to me how to specify other comp=
iler
options to produce multiple versions of the libraries.



Thanks,

Jon

--001a11c24b38b72318052c10d399
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dus-ascii"><meta name=3D"Generator" content=3D"Microsoft Word 14 (filtere=
d medium)"><style><!--
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
--></style></head><body lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div =
class=3D"WordSection1"><p class=3D"MsoNormal">Hi,</p><p class=3D"MsoNormal"=
>=C2=A0</p><p class=3D"MsoNormal">We have a machine configured for hard flo=
ating point. This builds a hard fp version of libgcc. We also have some boo=
tloaders and other code that require libgcc but use soft fp. I would prefer=
 to keep the bootloaders using soft fp. Is there a way to configure libgcc =
to produce both hard and soft fp versions of libraries? There are multilib =
examples for 32 and 64 versions of libs but it=E2=80=99s not clear to me ho=
w to specify other compiler options to produce multiple versions of the lib=
raries.</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Thanks,<=
/p><p class=3D"MsoNormal">Jon</p></div></body></html>

--001a11c24b38b72318052c10d399--
