Return-Path: <alexander@mezon.ru>
Received: from mail.mezon.ru (mail.mezon.ru [188.127.253.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C8FDE013D9
	for <poky@yoctoproject.org>; Thu,  4 Oct 2012 03:27:09 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mail.mezon.ru (Postfix) with ESMTP id 0910D1CD778
	for <poky@yoctoproject.org>; Thu,  4 Oct 2012 14:27:08 +0400 (MSK)
X-Virus-Scanned: amavisd-new at mezon.ru
Received: from mail.mezon.ru ([127.0.0.1])
	by localhost (stream2.mezon.ru [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x2Br-nr1x7bs for <poky@yoctoproject.org>;
	Thu,  4 Oct 2012 14:27:07 +0400 (MSK)
Received: from gate-obit.mezon.ru (gate-obit.mezon.ru [37.77.135.198])
	by mail.mezon.ru (Postfix) with ESMTP id 65D771CD714
	for <poky@yoctoproject.org>; Thu,  4 Oct 2012 14:27:07 +0400 (MSK)
Received: from [192.168.0.206] (fdkit.mezon.lan [192.168.0.206])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by gate-obit.mezon.ru (Postfix) with ESMTP id 51506D70027
	for <poky@yoctoproject.org>; Thu,  4 Oct 2012 14:27:07 +0400 (MSK)
Message-ID: <1349346365.6218.6.camel@localhost>
From: Alexander Khryukin <alexander@mezon.ru>
Cc: poky@yoctoproject.org
Date: Thu, 04 Oct 2012 14:26:05 +0400
In-Reply-To: <1349346251.18301.74.camel@ted>
References: <1349343340.6218.4.camel@localhost> <1349346251.18301.74.camel@ted>
Organization: mezon.ru
X-Mailer: Evolution 3.2.3 
Mime-Version: 1.0
Subject: Re: building rpm distro
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: alexander@mezon.ru
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Oct 2012 10:27:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

В Чт., 04/10/2012 в 11:24 +0100, Richard Purdie пишет:
> On Thu, 2012-10-04 at 13:35 +0400, Alexander Khryukin wrote:
> > Hello.
> > I'm trying to build mandriva distro for arm cortex-a8 device
> > I succesfully built image via "bitbake core-image-sato" and i can chroot
> > into.
> > Next step it's i want to build some packages on my arm board
> > via rpmbuild tool
> > 
> > 
> > rpmbuild --rebuild ed-1.6-5.src.rpm                  
> > Installing ed-1.6-5.src.rpm
> > Executing(%prep): /bin/sh -e /var/tmp/rpm-tmp.20532
> > + umask 022
> > + cd /usr/src/rpm/BUILD
> > + cd /usr/src/rpm/BUILD
> > + rm -rf ed-1.6
> > + /bin/gzip -dc /usr/src/rpm/SOURCES/ed-1.6.tar.gz
> > + /bin/tar -xf -
> > + STATUS=0
> > + '[' 0 -ne 0 ']'
> > + cd ed-1.6
> > + exit 0
> > Executing(%build): /bin/sh -e /var/tmp/rpm-tmp.20532
> > + umask 022
> > + cd /usr/src/rpm/BUILD
> > + cd ed-1.6
> > + %configure2_5x --bindir=/bin --exec-prefix=/ CFLAGS=-O2 CXXFLAGS=-O2
> > LDFLAGS=
> > /var/tmp/rpm-tmp.20532: line 22: fg: no job control
> > error: Bad exit status from /var/tmp/rpm-tmp.20532 (%build)
> > 
> > 
> > RPM build errors:
> >     Bad exit status from /var/tmp/rpm-tmp.20532 (%build)
> > 
> > 
> > It's not happens because gcc, make, and other buid-essential packages
> > not installed and poky not generates gcc.rpm package.
> > 
> > Might someone have any solution?
> 
> Build an image that includes gcc and other tools such as
> core-image-sato-sdk?
> 
> Cheers,
> 
> Richard
> 
> 
> 

Nope just "bitbake core-image-sato"


. oe-init-build-env 

### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-sato
    meta-toolchain
    meta-toolchain-sdk
    adt-installer
    meta-ide-support


You mean meta-toolchain-sdk ?



