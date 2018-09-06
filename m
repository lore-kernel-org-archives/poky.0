Return-Path: <adam.oleksy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73FBBE0090A; Thu,  6 Sep 2018 07:06:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.oleksy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw1-f46.google.com (mail-yw1-f46.google.com
	[209.85.161.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38B8FE0093B
	for <poky@yoctoproject.org>; Thu,  6 Sep 2018 07:06:49 -0700 (PDT)
Received: by mail-yw1-f46.google.com with SMTP id y134-v6so4106037ywg.1
	for <poky@yoctoproject.org>; Thu, 06 Sep 2018 07:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4YoVk4hklY2oNHcMhRLS6ZpF6eRaAnInl9mi6bU2Fcs=;
	b=YZtbKTPrhq924PtvfvD/4NPVg1Kcu3JRmnVXwA3WvKyzcMLRleHqLv2lM2wUO2otdD
	rfhBlBl589jdKDZ7PVEHXBRJdQThNPjL0LZr+kGWBCnjw8coekkkJmCfeLBkUAmvNKyJ
	uc8KlY3t5LefDKzMf9gmy6RjhMcntFhRYmOXncjRlYIwFyeXfd9Dfk9IbK/PqRomczAd
	cPO/WVcQvx4IltPcSZZQDoYGWzqDWDuYlPpnZPKaEP0H3/+bl1MBieawZmx5hCukC3YO
	KbEjNA0n+Mp+PrsszYDETSDN1dmTUO8O5NpoRkLYRJKVETuXuN7t0RnKJxyqlZIwCzSp
	7M5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4YoVk4hklY2oNHcMhRLS6ZpF6eRaAnInl9mi6bU2Fcs=;
	b=hsV4w7wfh3OBxSyXjljGY0kNdONX4gMiaQvTOqRj3GSX6JC0ZaAAxg6p63HY8ffM1n
	Tf06G5Xz+3NvuN7IhRAYyMk0s2Tqb4H1sG2ZmWpK+dlXlddP69rldH+nSJpvC8c4nA3r
	zgADIYEzvFEOCgEy2yssafeAcWG9qiIDAq+F2Aef8Q3WeRcJyCSkWYwFpD5HP0MKGhLt
	pcW4lHUwlLVP6SVPXSLgk7pc3mENkccIEWWkHY0p4Ktv6YtWgtpi2dar8HD2OlVk9BFh
	KRT08xo594y5u0A+H5VLSUCGCrYFq5d8KjFMnyXK3TIOsJIjJ+FNYh1PkuzNp310JBTw
	XoQQ==
X-Gm-Message-State: APzg51AHf2eKNW8djDy93yFGIbwjE2tMufE/h3F97JdG3SUHkrV0sUUK
	yZ57x+SNm4AdSzr9mMz/4QRO6YWHx95nFwOfNEbKaAdO
X-Google-Smtp-Source: ANB0VdaqlZ+KzLhhAYscA8M+XgmJ4D0JLsCZsXie+6ZypIie38fqkGVWoKZP3Ib4aH9TqKmEdi2tx033/qfVPk0dj9I=
X-Received: by 2002:a81:e405:: with SMTP id
	r5-v6mr1515480ywl.118.1536242808175; 
	Thu, 06 Sep 2018 07:06:48 -0700 (PDT)
MIME-Version: 1.0
From: Adam Oleksy <adam.oleksy@gmail.com>
Date: Thu, 6 Sep 2018 16:06:37 +0200
Message-ID: <CADBxsQUBACveJTvd6vabScyJZZShS7r2PZzmRz4oiuu8OVitqw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Handling CC/CXX and CFLAGS/CXXFLAGS environment variable
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
X-List-Received-Date: Thu, 06 Sep 2018 14:06:50 -0000
Content-Type: multipart/alternative; boundary="000000000000dec6050575346624"

--000000000000dec6050575346624
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm user of the SDK built with yocto with populate_sdk task for image.
I've found that some of the IDEs and CMake has a problem with environment
setup script (e.g. environment-setup-aarch64-poky-linux), which is produced
by toolchain-scripts.bbclass.

The problem is that, the CC and CXX variables contains arguments for the
compiler (march, mtune and sysroot). It causes problems when CMake or IDE
(e.g. CLion) works under such configured environment (look at this bug
report
https://youtrack.jetbrains.com/issue/CPP-11250#focus=streamItem-27-2564925-0-0
for CLion, and this merge request
https://gitlab.kitware.com/cmake/cmake/merge_requests/2352/diffs for
CMake). Authors of these tools are of the opinion that CC/CXX variables
should points only to the compiler program, but not contain any arguments.
It agrees with the definition of these variables, which can be found at
http://www.gnu.org/software/make/manual/make.html#Implicit-Variables.

Could you consider changing the  toolchain-scripts.bbclass that any
argument for the compiler goes to CFLAGS/CXXFLAGS? Is there any rationale
to not change the current status quo?

-- 
Pozdrawiam,
Adam Oleksy

--000000000000dec6050575346624
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi,<div>I&#39;m user of the SDK=
 built with yocto with populate_sdk task for image.</div><div>I&#39;ve foun=
d that some of the IDEs and CMake has a problem with environment setup scri=
pt (e.g.=C2=A0environment-setup-aarch64-poky-linux), which is produced by=
=C2=A0toolchain-scripts.bbclass.</div><div><br></div><div>The problem is th=
at, the CC and CXX variables contains arguments for the compiler (march, mt=
une and sysroot). It causes problems when CMake or IDE (e.g. CLion) works u=
nder such configured environment (look at this bug report=C2=A0<a href=3D"h=
ttps://youtrack.jetbrains.com/issue/CPP-11250#focus=3DstreamItem-27-2564925=
-0-0">https://youtrack.jetbrains.com/issue/CPP-11250#focus=3DstreamItem-27-=
2564925-0-0</a> for CLion, and this merge request=C2=A0<a href=3D"https://g=
itlab.kitware.com/cmake/cmake/merge_requests/2352/diffs">https://gitlab.kit=
ware.com/cmake/cmake/merge_requests/2352/diffs</a> for CMake).=C2=A0Authors=
 of these tools are of the opinion that CC/CXX variables should points only=
 to the compiler program, but not contain any arguments. It agrees with the=
 definition of these variables, which can be found at=C2=A0<a href=3D"http:=
//www.gnu.org/software/make/manual/make.html#Implicit-Variables">http://www=
.gnu.org/software/make/manual/make.html#Implicit-Variables</a>.</div><div><=
br></div><div>Could you consider changing the=C2=A0

toolchain-scripts.bbclass=C2=A0that any argument for the compiler goes to C=
FLAGS/CXXFLAGS? Is there any rationale to not change the current status quo=
?<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_si=
gnature">Pozdrawiam,<br>Adam Oleksy</div></div></div></div></div></div></di=
v></div></div>

--000000000000dec6050575346624--
