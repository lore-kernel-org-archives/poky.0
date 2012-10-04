Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 757CAE00717
	for <poky@yoctoproject.org>; Thu,  4 Oct 2012 03:24:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q94AOGIb005808;
	Thu, 4 Oct 2012 11:24:16 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05653-03; Thu,  4 Oct 2012 11:24:11 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q94AO8SC005797
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Thu, 4 Oct 2012 11:24:09 +0100
Message-ID: <1349346251.18301.74.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexander@mezon.ru
Date: Thu, 04 Oct 2012 11:24:11 +0100
In-Reply-To: <1349343340.6218.4.camel@localhost>
References: <1349343340.6218.4.camel@localhost>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: building rpm distro
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
X-List-Received-Date: Thu, 04 Oct 2012 10:24:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-10-04 at 13:35 +0400, Alexander Khryukin wrote:
> Hello.
> I'm trying to build mandriva distro for arm cortex-a8 device
> I succesfully built image via "bitbake core-image-sato" and i can chroot
> into.
> Next step it's i want to build some packages on my arm board
> via rpmbuild tool
> 
> 
> rpmbuild --rebuild ed-1.6-5.src.rpm                  
> Installing ed-1.6-5.src.rpm
> Executing(%prep): /bin/sh -e /var/tmp/rpm-tmp.20532
> + umask 022
> + cd /usr/src/rpm/BUILD
> + cd /usr/src/rpm/BUILD
> + rm -rf ed-1.6
> + /bin/gzip -dc /usr/src/rpm/SOURCES/ed-1.6.tar.gz
> + /bin/tar -xf -
> + STATUS=0
> + '[' 0 -ne 0 ']'
> + cd ed-1.6
> + exit 0
> Executing(%build): /bin/sh -e /var/tmp/rpm-tmp.20532
> + umask 022
> + cd /usr/src/rpm/BUILD
> + cd ed-1.6
> + %configure2_5x --bindir=/bin --exec-prefix=/ CFLAGS=-O2 CXXFLAGS=-O2
> LDFLAGS=
> /var/tmp/rpm-tmp.20532: line 22: fg: no job control
> error: Bad exit status from /var/tmp/rpm-tmp.20532 (%build)
> 
> 
> RPM build errors:
>     Bad exit status from /var/tmp/rpm-tmp.20532 (%build)
> 
> 
> It's not happens because gcc, make, and other buid-essential packages
> not installed and poky not generates gcc.rpm package.
> 
> Might someone have any solution?

Build an image that includes gcc and other tools such as
core-image-sato-sdk?

Cheers,

Richard




