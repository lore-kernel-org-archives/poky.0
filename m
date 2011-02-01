Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id 136D94C80081
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 00:26:09 -0600 (CST)
Received: by wwi17 with SMTP id 17so4353444wwi.5
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 22:26:09 -0800 (PST)
Received: by 10.227.156.76 with SMTP id v12mr7125940wbw.177.1296541568911;
	Mon, 31 Jan 2011 22:26:08 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id f27sm4922785wbf.1.2011.01.31.22.26.07
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 31 Jan 2011 22:26:08 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
Date: Tue, 1 Feb 2011 07:26:07 +0100
Message-Id: <3602F09D-78AE-47E5-A040-4CC842F7106C@dominion.thruhere.net>
References: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
To: Tom Rini <tom_rini@mentor.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] perl-native: Update for userelocatableinc and non-shared libperl
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Feb 2011 06:26:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Op 28 jan 2011, om 22:07 heeft Tom Rini het volgende geschreven:

> Rather than using a wrapper switch to using upstreams support for
> relocation.  While in here, bring in the mangling to use
> /usr/bin/env perl rather than /full/path/to in order to work
> in deep directory paths.

After this patch (but I haven't bisected it yet), =
libxml-parser-perl-native fails to build:

ERROR: Logfile of failure stored in: =
/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/libxml-parser-per=
l-native-2.36-r0/temp/log.do_populate_sysroot.10124
Log data follows:
| cp: cannot stat =
`/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/libxml-parser-pe=
rl-native-2.36-r0/image/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86=
_64-linux/usr/bin/*': No such file or directory

This is due to staging.bbclass' way of checking to see wether the dir is =
empty or not. I my case it's not empty:

koen@dominion:/OE/tentacle$ ls =
/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/libxml-parser-per=
l-native-2.36-r0/image/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_=
64-linux/usr/bin/ -la
total 12
drwxr-xr-x 3 koen koen 4096 2011-01-31 21:55 ./
drwxr-xr-x 4 koen koen 4096 2011-01-31 21:55 ../
drwxr-xr-x 3 koen koen 4096 2011-01-31 21:55 ..ntacle/

So there are 2 bugs here:

1) staging.bbclass won't copy dotfiles
2) libxml-parser-perl-native puts part of the build path in =
${D}${bindir}

regards,

Koen=

