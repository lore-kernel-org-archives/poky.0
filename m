Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id C33714C806DA;
	Tue, 25 Jan 2011 15:35:41 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PLbaAJ003672; Tue, 25 Jan 2011 21:37:37 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id KWAATJ7sFdrq; Tue, 25 Jan 2011 21:37:36 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PLbUZJ003666
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 25 Jan 2011 21:37:32 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <02A97CA2-9AA6-48B8-B4DC-E4D9E0AD304D@dominion.thruhere.net>
References: <1295963829.14388.49564.camel@rex>
	<F4686931-067A-4564-BDD3-073B8F1BB435@dominion.thruhere.net>
	<7F187B04-9B3D-4D57-9060-D8B710B59A8A@dominion.thruhere.net>
	<02A97CA2-9AA6-48B8-B4DC-E4D9E0AD304D@dominion.thruhere.net>
Date: Tue, 25 Jan 2011 21:35:13 +0000
Message-ID: <1295991313.27814.55.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto <yocto@yoctoproject.org>, poky <poky@yoctoproject.org>
Subject: Re: Major feature changes for the next release - merging very soon
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
X-List-Received-Date: Tue, 25 Jan 2011 21:35:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-25 at 20:41 +0100, Koen Kooi wrote:
> Op 25 jan 2011, om 20:18 heeft Koen Kooi het volgende geschreven:
> > Switchting from usrp-e1xx (armv7a) to beagleboard (also armv7a) and building console-image again:
> > 
> > NOTE: package perl-5.12.2-r0: task do_package: Started
> > ERROR: Function 'perl_package_preprocess' failed (see /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/temp/log.do_package.28537 for further information)
> > ERROR: Logfile of failure stored in: /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/temp/log.do_package.28537
> > Log data follows:
> > | cp: cannot stat `/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/image/*': No such file or directory
> > | sed: can't read /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/package/usr/bin/h2xs: No such file or directory
> > | sed: can't read /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/package/usr/bin/h2ph: No such file or directory
> > | sed: can't read /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/package/usr/lib/perl/5.12.2/pod/*.pod: No such file or directory
> > | sed: can't read /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/package/usr/lib/perl/5.12.2/cacheout.pl: No such file or directory
> > | sed: can't read /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/package/usr/lib/perl/5.12.2/FileCache.pm: No such file or directory
> > | sed: can't read /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/package/usr/lib/perl/config.sh: No such file or directory
> > | sed: can't read /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/package/usr/lib/perl/5.12.2/Config.pm: No such file or directory
> > | sed: can't read /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/package/usr/lib/perl/5.12.2/Config_heavy.pl: No such file or directory
> > | sed: can't read /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/package/usr/lib/perl/5.12.2/CORE/perl.h: No such file or directory
> > | sed: can't read /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/package/usr/lib/perl/5.12.2/CORE/pp.h: No such file or directory
> > | Function 'perl_package_preprocess' failed (see /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/temp/log.do_package.28537 for further information)
> > | ERROR: Function 'perl_package_preprocess' failed (see /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/perl-5.12.2-r0/temp/log.do_package.28537 for further information)
> 
> And another one:
> 
> NOTE: package pango-1.28.3-r1.0: task do_package: Started
> ERROR: Error executing a python function in /OE/tentacle/sources/layers/meta-openembedded/recipes-graphics/pango/pango_1.28.3.bb:
> OSError: [Errno 2] No such file or directory: '/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/pango-1.28.3-r1.0/package/usr/lib/pango/1.6.0/modules'
> 
> ERROR: The stack trace of python calls that resulted in this exception/failure was:
> ERROR:   File "populate_packages", line 203, in <module>
> ERROR:
> ERROR:   File "populate_packages", line 7, in populate_packages
> ERROR:
> ERROR:   File "package.bbclass", line 16, in do_split_packages
> ERROR:
> ERROR: The code that was being executed was:
> ERROR:      0199:                       bb.data.setVar('pkg_prerm_%s' % pkg, prerm, d)
> ERROR:      0200:
> ERROR:      0201:
> ERROR:      0202:
> ERROR:  *** 0203:populate_packages(d)
> ERROR:      0204:
> ERROR: (file: 'populate_packages', lineno: 203, function: <module>)
> ERROR:      0003:       prologue = bb.data.getVar("postinst_prologue", d, 1)
> ERROR:      0004:
> ERROR:      0005:       modules_root = bb.data.expand('/usr/lib/pango/1.6.0/modules', d)
> ERROR:      0006:
> ERROR:  *** 0007:       do_split_packages(d, modules_root, '^pango-(.*)\.so$', 'pango-module-%s', 'Pango module %s', prologue + 'pango-querymodules > /etc/pango/pango.modules')
> ERROR:      0008:       import glob, stat, errno, re
> ERROR:      0009:
> ERROR:      0010:       workdir = bb.data.getVar('WORKDIR', d, True)
> ERROR:      0011:       outdir = bb.data.getVar('DEPLOY_DIR', d, True)
> ERROR: (file: 'populate_packages', lineno: 7, function: populate_packages)
> ERROR: Function 'populate_packages' failed
> ERROR: Logfile of failure stored in: /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/pango-1.28.3-r1.0/temp/log.do_package.27054
> 
> It looks like do_install needs to get rerun on those recipes.

I think these are due to the fact Koen is using rm_work (confirmed by
Koen over irc). I agree we need to work out a way to handle this, it
should help anyone trying to find a fix though.

It should be easy to reproduce on Poky master switching between emenlow
and atom-pc.

Cheers,

Richard



