Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9C69E00757; Fri, 16 Jan 2015 01:09:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8299EE004D6
	for <poky@yoctoproject.org>; Fri, 16 Jan 2015 01:09:46 -0800 (PST)
Received: by mail-wi0-f182.google.com with SMTP id n3so745553wiv.3
	for <poky@yoctoproject.org>; Fri, 16 Jan 2015 01:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=m3IqPb9qvIwm3+K1kHKIBFzLaDDpxMbom4ku+lU80ls=;
	b=xnm0//0abL5b3aJtUq0oWdieur4jEAE6o7kWBYsS4Vo/EPH7wwsK322sL08qh0bkF0
	B6nX59y1Oco+dw1ryw1BOHSDF5wCsrOhmtUaGdfxu96nikwkLYsCpPH8aNlEzNRiNFbl
	uuYW94fqFzLqhPJ+0WkdlvphfEuc7mQdYCHyZ1ay07pFUmYSuy1/gsjw1CjO/CeAv6BG
	y5fZsYcqtVnDFSr/B5ulRsSqHQpiQ1OQgxHL/V3J7n3831VAb/rCuDKaFjl4jeWX0HAM
	tdv+Nf1V04Pv1ot3g0/iXqlMnnolckmFoXHoUC3cvUB6VsnKqJkc4QHXsiGsmZVWWA9L
	1tEA==
MIME-Version: 1.0
X-Received: by 10.180.218.39 with SMTP id pd7mr4133393wic.21.1421399385539;
	Fri, 16 Jan 2015 01:09:45 -0800 (PST)
Received: by 10.27.148.136 with HTTP; Fri, 16 Jan 2015 01:09:45 -0800 (PST)
Date: Fri, 16 Jan 2015 11:09:45 +0200
Message-ID: <CADnUhn0qnExJ7NsUtD6+M7p14u3prcVU8UL5g_BthaBcfwFbNg@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: poky@yoctoproject.org
Subject: apache2-native_2.4.6.bb build crash
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
X-List-Received-Date: Fri, 16 Jan 2015 09:09:55 -0000
Content-Type: multipart/alternative; boundary=001a1134cd58758dab050cc155ed

--001a1134cd58758dab050cc155ed
Content-Type: text/plain; charset=UTF-8

Hi!

I try to build core-image-minimal for poky/dizzy. Run crashes when excuting
apache2-native_2.4.6.bb. Error message tells that:

| checking for pcre-config...
/TMPDIR/sysroots/x86_64-linux/usr/bin/pcre-config
| configure: error: Did not find pcre-config script at
/TMPDIR/sysroots/x86_64-linux/usr/bin/pcre-config
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/TMPDIR/work/x86_64-linux/apache2-native/2.4.6-r0/temp/log.do_configure.16985)

Cheers,
Matti

--001a1134cd58758dab050cc155ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi!<br><br></div>I try to build core-image-=
minimal for poky/dizzy. Run crashes when excuting <a href=3D"http://apache2=
-native_2.4.6.bb">apache2-native_2.4.6.bb</a>. Error message tells that:<br=
><br>| checking for pcre-config... /TMPDIR/sysroots/x86_64-linux/usr/bin/pc=
re-config<br>| configure: error: Did not find pcre-config script at /TMPDIR=
/sysroots/x86_64-linux/usr/bin/pcre-config<br>| WARNING: exit code 1 from a=
 shell command.<br>| ERROR: Function failed: do_configure (log file is loca=
ted at /TMPDIR/work/x86_64-linux/apache2-native/2.4.6-r0/temp/log.do_config=
ure.16985)<br><br></div>Cheers,<br></div>Matti<br><div><div><br><br></div><=
/div></div>

--001a1134cd58758dab050cc155ed--
