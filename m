Return-Path: <kiran.bobbu@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B57DCE01570
	for <poky@yoctoproject.org>; Wed, 28 Aug 2013 01:23:44 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id wo10so6325615obc.41
	for <poky@yoctoproject.org>; Wed, 28 Aug 2013 01:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=72lXXlrjHmJhjHfME62vjsET1nxHfqMBvw+igqSD7q8=;
	b=UWi7FhioJt/ZRJhWjLK8W18jldM4kxZChhwvfFR7QsocBRREZDHsm/DRgrxa5lDojk
	smS7IfYxh3UbsBaaChIikMeG3QEIMEfrRHEk7LJnk+FZQifC592fJ11RnX83bH0Ul5Kg
	nT9v6z5P/TCuIS7E6NxqIXg4WFgkaSpdAvn+g4KnyowyqGYkAHGJX8NR6SNzMHxtS5u0
	9VBfHRQOlBJ2EIzUZl8CijcCqjSG0nBW9jvAX23A++TePwo1N9DvkM0Fi+D+mIp7aQ/W
	kBV/2LXQFaGtodul6Lk4ARmPOY2kbNlwAVHwsx7/xlhn67Twz5Y+V4WNRbIABp+BPPNJ
	4ReA==
MIME-Version: 1.0
X-Received: by 10.60.40.67 with SMTP id v3mr22745362oek.16.1377678223501; Wed,
	28 Aug 2013 01:23:43 -0700 (PDT)
Received: by 10.182.183.99 with HTTP; Wed, 28 Aug 2013 01:23:43 -0700 (PDT)
Date: Wed, 28 Aug 2013 13:53:43 +0530
Message-ID: <CAO7jpqeaH9S6aXxCkzsu_B99fNnJvQbvKsGZrH4KWszFuPkbOg@mail.gmail.com>
From: kiran bobbu <kiran.bobbu@gmail.com>
To: poky@yoctoproject.org
Subject: how to modify compilation flags for hardfp compilation
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
X-List-Received-Date: Wed, 28 Aug 2013 08:23:45 -0000
Content-Type: multipart/alternative; boundary=089e0149ce4c206edd04e4fdb5b6

--089e0149ce4c206edd04e4fdb5b6
Content-Type: text/plain; charset=ISO-8859-1

Hi,

By default  poky project builds with softfp compiler option.
how to modify this flag   to build poky filesystem   with compiler flag as
hardfp?

-- 

-Kiran

--089e0149ce4c206edd04e4fdb5b6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><br clear=3D"all"></div>Hi,<br><br></div>By=
 default=A0 poky project builds with softfp compiler option.<br></div>how t=
o modify this flag=A0=A0 to build poky filesystem=A0=A0 with compiler flag =
as hardfp?<br>
<br><div><div><div><div>-- <br><br>-Kiran<br>
</div></div></div></div></div>

--089e0149ce4c206edd04e4fdb5b6--
