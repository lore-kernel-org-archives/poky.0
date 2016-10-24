Return-Path: <osborn.steven@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E506AE00B63; Mon, 24 Oct 2016 16:39:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (osborn.steven[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6CA0E00AD2
	for <poky@yoctoproject.org>; Mon, 24 Oct 2016 16:39:24 -0700 (PDT)
Received: by mail-qt0-f177.google.com with SMTP id 23so5032234qtp.5
	for <poky@yoctoproject.org>; Mon, 24 Oct 2016 16:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=Ctj7rhQV5XzNyBgobnlBT0FJmhFMOs52qP8/YnSX79k=;
	b=WKo6fzkxahyKSf0FU4GVa6A/acQFo7TOFIdZCIIkPanqWM22FEyhso5Oa5hezC6daA
	nAYnJ+GPqi6U8sbar/yJtef6mvYsyhbzOancmVgQA8LcInqOGkvX+QYUbdiVUpLRourv
	3EWtaUgdAEdXO+NHbhxQxTacIJ6aHvyS9zTwf3b8Grd4QyU/djA05KvA7O4vX2j5hhsd
	nmBQ2L1uWwALK9InL70VZPn5Ws1j4pLjZO+NUN+1ly+pxtd2bRT3Xd0mYwsshe6haKXv
	ZwcJ7wvzZPivQrXf1elDT1CVwkIvyQoeJdy2qNsDqz6JNi/kyhMof9NzYM+vdxz8vodW
	SeMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Ctj7rhQV5XzNyBgobnlBT0FJmhFMOs52qP8/YnSX79k=;
	b=EMkRN4byWqwwXMsBUrEXfDlwC8exkA2Ywi/R78wCl/XEXu5GI0goQyqz+wMgZUa5uV
	Iyv7AuOEuNVuBMhDOgM2rxUlp2LI7f1VYTxe/oCPvSws21xM9KdzFx/H2qqif2vaSToD
	WlPuH3PjuZubjELxQZoIfqeQCQNaV7hQdpIxPzgOg14qwZs5jn6XoSL6vAhVpbNdQFLd
	f+Jt++58i0m7Rop662IzOGxIXdtOH7DaaSOawBYJY0aswOjs2Mnr6Z47FecwQgNstqzq
	/S1WLdxgQezPIQf9kP7qI+A6U8dVlgwZWFgbfDbytqPpWK32mZdrXKjn5MZwGjzScu6U
	n9LQ==
X-Gm-Message-State: ABUngvc56S05qQEXF/m7Mk835G55A/SA97RVeD0FuKhdk2C1xKd30loHsA2DecxMYzeFHgCSayu4dPh5Qy4HoQ==
X-Received: by 10.237.36.93 with SMTP id s29mr17215140qtc.134.1477352363524;
	Mon, 24 Oct 2016 16:39:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.46.84 with HTTP; Mon, 24 Oct 2016 16:39:23 -0700 (PDT)
From: Steven Osborn <osborn.steven@gmail.com>
Date: Mon, 24 Oct 2016 16:39:23 -0700
Message-ID: <CAA0Zw-yG86gejw2TT0Ly8AJ5MMcFV-NP7Q6S=BkbtyjeVqQ_hQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Poky issues
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
X-List-Received-Date: Mon, 24 Oct 2016 23:39:28 -0000
Content-Type: multipart/alternative; boundary=001a1141281ed60991053fa4e6b9

--001a1141281ed60991053fa4e6b9
Content-Type: text/plain; charset=UTF-8

I'm trying to get a beaglebone build going and running into this issue.
I've tried on Ubuntu 16.04 and 14.04LTS with no luck, any pointers would be
really appreciated.  I'm pretty new to Yocto & bitbake.

https://gist.github.com/lolsborn/b431513dbf8819850f26fb78c7753201

--
Steven Osborn
http://lolsborn.com

--001a1141281ed60991053fa4e6b9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m trying to get a beaglebone build going and ru=
nning into this issue.=C2=A0 I&#39;ve tried on Ubuntu 16.04 and 14.04LTS wi=
th no luck, any pointers would be really appreciated.=C2=A0 I&#39;m pretty =
new to Yocto &amp; bitbake.</div><div><br></div><a href=3D"https://gist.git=
hub.com/lolsborn/b431513dbf8819850f26fb78c7753201">https://gist.github.com/=
lolsborn/b431513dbf8819850f26fb78c7753201</a><div><br clear=3D"all"><div><d=
iv class=3D"gmail_signature">--<br>Steven Osborn<br><a href=3D"http://lolsb=
orn.com" target=3D"_blank">http://lolsborn.com</a></div></div>
</div></div>

--001a1141281ed60991053fa4e6b9--
