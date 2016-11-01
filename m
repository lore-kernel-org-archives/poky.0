Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C67CBE00CC4; Tue,  1 Nov 2016 07:32:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.174 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BFBFE00C9A
	for <poky@yoctoproject.org>; Tue,  1 Nov 2016 07:32:04 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id b35so58135510uaa.3
	for <poky@yoctoproject.org>; Tue, 01 Nov 2016 07:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=T1h1He4KN4MU0LvhhG6UYwWlRCyWdv4QysErXDUc0ao=;
	b=xSFt6ouR1wECnGlI2zMXmxDM8bE4MCp2rMc/S+hmxxaTexjAYel7OqfqKbwZdBvwea
	6OWhFdImnYioaNJ4xGjaUVIeZnwZeyq7FsflTNp74mCIa/mhp9HIP4Yziuj48I3N4rUC
	m3GJP5Hqx4yzGLwK9s/U2NDMT4zXa3WWTDVDJGcJ82CX+YY59mB9TTpj7y17EtC4p9pZ
	2BWSFKxbtsZQyZ4UfI1wnQkRq1x220lxk+1KePu8e6YzosY6DuEbxlwJ8MXJbjWTu/pj
	weKT61xH4U/bCRCUIA661ulFeWjRk9d6yDEGhyRz2udlCHB6MKumh3WCbL5hXN+RJeAU
	M4Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=T1h1He4KN4MU0LvhhG6UYwWlRCyWdv4QysErXDUc0ao=;
	b=MKRbLVZWX+Nnsqdk6Akg1ZOvi/nxHHUi9NGqiWJUjfau3P4uZOIUeMl+g22oP7YXlq
	KIVhMdme92w0jbsTSIY2i7X+aShBQDST2RRxXvxqckQJMC0r/KqvO+eD5+bwh+x/d9vM
	8F2ndb4AsnZ6FSwYlbzdrz9oFwqMPvXbtIgWxDSS/Pfuags8KxQ2a8zJffkcMBRQOcIJ
	NhSufRjNroScw8QNI/nEhRM8zWXakBUA/7YeqDfanOQf5tE/zdQJfdrLwnnmMA6yx5EI
	c0XtGEMl1x+ktmF/Fx1LUCThZNCBLDChdhaMmjCvqtZbHydHueMJFoFRoOHC0stuX9ew
	HC3A==
X-Gm-Message-State: ABUngvclJDkM7lmrsmDXe7bP4ikF3lqJpwpIbZRUtRn9zswypTmlehWj1damKX3t6uBbtXwK3jFrgj5/6gTOCg==
X-Received: by 10.176.82.200 with SMTP id w8mr26964333uaw.62.1478010722797;
	Tue, 01 Nov 2016 07:32:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.146.208 with HTTP; Tue, 1 Nov 2016 07:32:01 -0700 (PDT)
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Tue, 1 Nov 2016 16:32:01 +0200
Message-ID: <CADnUhn2dnK5aK7YGB42uH7ao6DzHWy6QmNHRtmh_BMW38B3DsA@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: svn fetcher crashes
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
X-List-Received-Date: Tue, 01 Nov 2016 14:32:07 -0000
Content-Type: multipart/alternative; boundary=94eb2c18ff001b5a9b05403e30c1

--94eb2c18ff001b5a9b05403e30c1
Content-Type: text/plain; charset=UTF-8

Hello!

I tried to upgrade poky from fido to krogoth. Recipes that used to work
before are now crashing. I get long listing of warnings telling "Exception
during build_dependencies for S". At the end will come:
svn: /CPR3/sysroots/x86_64-linux/usr/bin/../lib/./././libssl.so.1.0.0:
version `OPENSSL_1.0.0' not found (required by
/CPR3/sysroots/x86_64-linux/usr/bin/../lib/././libserf-1.so.1)
svn: /CPR3/sysroots/x86_64-linux/usr/bin/../lib/./././libcrypto.so.1.0.0:
version `OPENSSL_1.0.0' not found (required by
/CPR3/sysroots/x86_64-linux/usr/bin/../lib/././libserf-1.so.1)

Location these error messages are referring has following libssl modules:
libssl3.so
libssl.a
libssl.so
libssl.so.1.0.0
ssl

Any help really appreciated!!

Thanks,
Matti

--94eb2c18ff001b5a9b05403e30c1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello!<br><br></div>I tried to up=
grade poky from fido to krogoth. Recipes that used to work before are now c=
rashing. I get long listing of warnings telling &quot;Exception during buil=
d_dependencies for S&quot;. At the end will come:<br>svn: /CPR3/sysroots/x8=
6_64-linux/usr/bin/../lib/./././libssl.so.1.0.0: version `OPENSSL_1.0.0&#39=
; not found (required by /CPR3/sysroots/x86_64-linux/usr/bin/../lib/././lib=
serf-1.so.1)<br>svn: /CPR3/sysroots/x86_64-linux/usr/bin/../lib/./././libcr=
ypto.so.1.0.0: version `OPENSSL_1.0.0&#39; not found (required by /CPR3/sys=
roots/x86_64-linux/usr/bin/../lib/././libserf-1.so.1)<br><br></div>Location=
 these error messages are referring has following libssl modules:<br>libssl=
3.so<br>libssl.a<br>libssl.so<br>libssl.so.1.0.0<br>ssl<br><br></div>Any he=
lp really appreciated!!<br><br></div>Thanks,<br></div>Matti<br><div><div><d=
iv><div><div><div><br><br></div></div></div></div></div></div></div>

--94eb2c18ff001b5a9b05403e30c1--
