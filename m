Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA59C369D9
	for <webhook@archiver.kernel.org>; Wed, 30 Apr 2025 14:43:16 +0000 (UTC)
Subject: machine or vendor specific execution of a function
To: poky@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Texas, US (136.226.100.178)
X-Originating-Platform: Windows Chrome 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Apr 2025 07:43:11 -0700
Message-ID: <Qt5c.1746024191608869388.sDVP@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b1mdrk1Bu1yVv1tAiDkg"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Apr 2025 14:43:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13609

--b1mdrk1Bu1yVv1tAiDkg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've run into this construct a few times with my work in upgrading the cust=
omers older dunfell Yocto system to Scarthgap in recipes:

do_compile:append:<some specific string specifier>(){
....
}

It appears to very problematic both in functions and variable value definit=
ions. What is that string specifier? In the case I'm running into it is set=
 to "qoriq" usually. But in a few examples in the vendor's code I see it se=
t to "qoriq-ppc". Which is correct? From a high level both are correct but =
neither will give the desire approach. Since locally we are only building f=
or one platform I can just remove it and this will work for my situation.

Where is this value being set and how do I find out which one I want? There=
 is no machine called "qoriq" or "qoriq-ppc". There is a MACHINE variable (=
in my case t1024rdb-64b) but setting it to that doesn't work either.

Cheers!!

--b1mdrk1Bu1yVv1tAiDkg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I've run into this construct a few times with my work in upgrading the=
 customers older dunfell Yocto system to Scarthgap in recipes:</div>
<div>&nbsp;</div>
<div>do_compile:append:&lt;some specific string specifier&gt;(){</div>
<div>....</div>
<div>}</div>
<div>&nbsp;</div>
<div>It appears to very problematic both in functions and variable value de=
finitions. What is that string specifier? In the case I'm running into it i=
s set to "qoriq" usually. But in a few examples in the vendor's code I see =
it set to "qoriq-ppc". Which is correct? From a high level both are correct=
 but neither will give the desire approach. Since locally we are only build=
ing for one platform I can just remove it and this will work for my situati=
on.</div>
<div>&nbsp;</div>
<div>Where is this value being set and how do I find out which one I want? =
There is no machine called "qoriq" or "qoriq-ppc". There is a MACHINE varia=
ble (in my case t1024rdb-64b) but setting it to that doesn't work either.&n=
bsp;</div>
<div>&nbsp;</div>
<div>Cheers!!</div>

--b1mdrk1Bu1yVv1tAiDkg--

