Return-Path: <scott.branden@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67A53E00CEE; Wed, 23 Jan 2019 14:20:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34193E00CDF
	for <poky@yoctoproject.org>; Wed, 23 Jan 2019 14:20:01 -0800 (PST)
Received: by mail-io1-f53.google.com with SMTP id m19so3017179ioh.3
	for <poky@yoctoproject.org>; Wed, 23 Jan 2019 14:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:references:in-reply-to:mime-version:thread-index:date
	:message-id:subject:to;
	bh=GLAWTES4wVYp1gX1TsfXK162HroxmsyIY1vSMNr3lJ8=;
	b=d2/emUfWmbNqx+cYbMCd8GInrL9C4FKTm8+zKWgmLeSk+19zY44re355QhOvE157Tp
	vwzrNt741a29ndfefrbSlbwPKvgiTWJ+OHBFYTq4HviIv4Jdq9qFY5TCCzb0uDjo8+0b
	Ey/heGgbW9SMkp3B/42dzn448fNwZm5xAxKiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:references:in-reply-to:mime-version
	:thread-index:date:message-id:subject:to;
	bh=GLAWTES4wVYp1gX1TsfXK162HroxmsyIY1vSMNr3lJ8=;
	b=Y/+rp4Jqi0HeWxa3/FH4xWDe4ZAgCdMpqnl3i2ckDoEl/MR3PfL/wOg2kNFyq5GvPY
	l2uENsLvQ3s4g0ickbR+u2iR0k/qmDlqvikqp93HYqv7cy+2Opzg0SlFjh9myqn1HuyT
	GYXAEqe6IhBKoagzBOGhlikZxs4MKRDww1Tv50vPnBdcu6OHDKojJODMVdAuwetpIdq5
	ffzGuPllWBN574bVjGCqCT4ooAc2qbK50mlbA70hElfYSXtjf4ECn6EUZgffget4YC0q
	YCks6RIAa91oQ/x2LJ7Ne+tayMgssSVVH8BjPGIOYnKkPvePUKRazchhApTjyx9wTDzE
	mREw==
X-Gm-Message-State: AJcUukcDQUWMS3cSP9W/6ZPfEw9EhPzdUeP6cE2c63gL3LfVDUtQEeHf
	9ULz7a3pkTLcQCH4rQpIR9C2mjfWHXtTLwNORRLEFMdwHmn+qQ==
X-Google-Smtp-Source: ALg8bN4wILUQRF3rhvZdx6s3zcLz+0r41rhmksKwOQkxL6TZcfOUTloxJSexXiVQTgtzw6ijK0tRQ7YAadgxr85/60o=
X-Received: by 2002:a6b:d618:: with SMTP id w24mr2555983ioa.24.1548282000378; 
	Wed, 23 Jan 2019 14:20:00 -0800 (PST)
From: Scott Branden <scott.branden@broadcom.com>
References: d20f71e86983e4438cedfd4ffaf43840@mail.gmail.com
In-Reply-To: d20f71e86983e4438cedfd4ffaf43840@mail.gmail.com
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdSqD+RuYNRebES6TniKftq8O8U67wJWdHTA
Date: Wed, 23 Jan 2019 14:19:58 -0800
Message-ID: <efc826297ec1a54ca1218991fad192b3@mail.gmail.com>
To: poky@yoctoproject.org
Subject: How to use yocto with PXE boot?
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
X-List-Received-Date: Wed, 23 Jan 2019 22:20:02 -0000
Content-Type: multipart/alternative; boundary="000000000000a561060580277e0f"

--000000000000a561060580277e0f
Content-Type: text/plain; charset="UTF-8"

I wish to completely network boot a genericx86-64 image built from yocto.



So far I have been building for core-image-sato and it easily allows
booting a live image from a USB device:

https://git.yoctoproject.org/cgit.cgi/poky/plain/meta-yocto-bsp/README.hardware



Are there any instructions to follow on how to PXE (or similar) boot from a
yocto build?



I do find pxelinux.0 in
build/tmp/sysroots-components/x86_64/syslinux-native/usr/share/syslinux/pxelinux.0
after the build?



Thanks,

Scott

--000000000000a561060580277e0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dus-ascii"><meta name=3D"Generator" content=3D"Microsoft Word 15 (filtere=
d medium)"><style><!--
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72"><=
div class=3D"WordSection1"><p class=3D"MsoNormal">I wish to completely netw=
ork boot a genericx86-64 image built from yocto.</p><p class=3D"MsoNormal">=
=C2=A0</p><p class=3D"MsoNormal">So far I have been building for core-image=
-sato and it easily allows booting a live image from a USB device:</p><p cl=
ass=3D"MsoNormal"><a href=3D"https://git.yoctoproject.org/cgit.cgi/poky/pla=
in/meta-yocto-bsp/README.hardware">https://git.yoctoproject.org/cgit.cgi/po=
ky/plain/meta-yocto-bsp/README.hardware</a></p><p class=3D"MsoNormal">=C2=
=A0</p><p class=3D"MsoNormal">Are there any instructions to follow on how t=
o PXE (or similar) boot from a yocto build? =C2=A0</p><p class=3D"MsoNormal=
">=C2=A0</p><p class=3D"MsoNormal">I do find pxelinux.0 in build/tmp/sysroo=
ts-components/x86_64/syslinux-native/usr/share/syslinux/pxelinux.0 after th=
e build?</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Thanks,=
</p><p class=3D"MsoNormal">Scott</p><p class=3D"MsoNormal">=C2=A0</p><p cla=
ss=3D"MsoNormal">=C2=A0</p></div></body></html>

--000000000000a561060580277e0f--
