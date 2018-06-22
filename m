Return-Path: <442-103-8455@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ACEEE00CEA; Fri, 22 Jun 2018 11:53:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FROM_STARTS_WITH_NUMS,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.7 FROM_STARTS_WITH_NUMS From: starts with several
	numbers
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [64.59.136.138 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Jun 2018 11:53:36 PDT
Received: from smtp-out-so.shaw.ca (smtp-out-so.shaw.ca [64.59.136.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F374E00C5B
	for <poky@yoctoproject.org>; Fri, 22 Jun 2018 11:53:36 -0700 (PDT)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id WRAgfquDf5wO5WRAhfEENR; Fri, 22 Jun 2018 12:52:35 -0600
X-Authority-Analysis: v=2.3 cv=SJtsqtnH c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=7mUfYlMuFuIA:10
	a=UwNFMS6tId3V4lxhCdcA:9 a=QEXdDO2ut3YA:10
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <442-103-8455@kylheku.com>) id 1fWRAg-0003Bt-0Q
	for poky@yoctoproject.org; Fri, 22 Jun 2018 11:52:34 -0700
To: poky@yoctoproject.org
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Date: Fri, 22 Jun 2018 11:52:33 -0700
From: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>
Message-ID: <dc32d45cc47d63d2921c9b8860ab5157@mail.kylheku.com>
X-Sender: 442-103-8455@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfC8kGjY6Zax31R3VzSqfS8O+MKUvUE9xbWzc4iL0C4Xc0VLXWIZOjTBAOxt+Qd4Y3o8Wpjx3sn8ODAj38daobxrYKQtITvFre10tuRXqRMM1KUa+Yy6T
	wW1voLoNpfwObPzKCHl40LyH76hP5HKhtuJaxWYj7CmFIxTM3FHSFVj7RO/qd7Yej4eq3N/B0ukesQ==
Subject: Yocto-2-2: native executables and libs pull symbols from wrong glibc.
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
X-List-Received-Date: Fri, 22 Jun 2018 18:53:36 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all,

I've discovered, in a Yocto-2.2-based system, that native executables=20
and libraries are pulling in symbols from the build machine's own glibc.

Then when those programs and libs are executed, they use the "uninative"=20
glibc that Yocto pulls from the tarball (because their built-in -rpath=20
tells them to, and that -rpath is dynamically edited to point to the=20
uninative stuff).

This mismatch is wrong and fails the build when those executables or=20
libs have pulled in symbols from the build machine glibc that have newer=20
versions than what is available in the older uninative glibc.

It seems to be case that when these programs are being linked by the=20
recipe steps pulled in from native.bbclass, the linker is using the=20
wrong libc.so image; it's not using the libc.so that is in=20
sysroot-uninative that will be used at run-time.

Concretely, this leads to a failure when you build on a glibc-2.27 based=20
system, like Ubuntu 18.04.

glibc-2.27 has advanced a number of symbols to the GLIBC_2.27 version=20
node.  One of those symbols is the glob function.

glob is used in libpopt.so, libopkg.so and some other programs.

In my world, I have patched the handful of programs and libs which are=20
involved in the build failure by adding this to them:

   __asm__(".symver glob,glob@GLIBC_2.2.5");

With that, I was able to build the world.  (It could be that many more=20
programs are affected; but not in any way that contributes to a build=20
problem in my world.)

In the case of libpopt.so, what fails is the "debugedit" utility from=20
rpm-native. This utility is used by the do_package recipe of glibc, and=20
so that recipe fails.

The .symver directive is an ugly workaround; this needs to be somehow=20
fixed in the build system.

Cheers ...


