Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE95E4C801DA
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 06:27:05 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65BR2g4030471;
	Tue, 5 Jul 2011 12:27:02 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30388-02; Tue,  5 Jul 2011 12:26:58 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65BQu55030465
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 5 Jul 2011 12:26:57 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4E12F363.6070708@mlbassoc.com>
References: <4E12F363.6070708@mlbassoc.com>
Date: Tue, 05 Jul 2011 12:26:26 +0100
Message-ID: <1309865186.20015.692.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: eglibc build problem
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
X-List-Received-Date: Tue, 05 Jul 2011 11:27:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-05 at 05:20 -0600, Gary Thomas wrote:
> I have a distribution which is derived from Poky.  It has been
> building great until recently, but now it fails when building
> 'eglibc' for the target with this error:
> 
> $ cat /home/local/p60_latest/tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/temp/log.do_install_locale.13725
> cp: cannot stat `/home/local/p60_latest/tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/image/usr/bin/localedef': No such file or directory
> ERROR: Function 'do_install_locale' failed (see /home/local/p60_latest/tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/temp/log.do_install_locale.13725 for further 
> information)
> 
> Looking around in the eglibc build, I can't see localedef being built:
> $ find tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/ -name "locale*"
> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/localedata
> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/locale
> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/intl/localealias.os.d
> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/intl/localealias.o.d
> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/intl/localealias.os
> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/intl/localealias.o
> 
> However, if I build for the BeagleBoard using the same Poky tree,
> it does work and I see:
> $ find tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/ -name "locale*"
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/localedata
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localename.os
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localename.o
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localeconv.os
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localeconv.o
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localedef.o.d
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localename.o.d
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localeconv.os.d
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localedef
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/locale.o
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/locale-spec.o.d
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localedef.o
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localename.os.d
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/locale.o.d
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localeconv.o.d
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/locale
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/locale-spec.o
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/intl/localealias.os.d
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/intl/localealias.o.d
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/intl/localealias.os
> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/intl/localealias.o
> 
> Any ideas what would keep the localedef stuff from being built for my
> board whereas it is built for a standard board?
> 
> As I said, this has been working great up until some time recently.
> I can't see any hint in the commit logs of what might have changed
> to break it.  ... that will teach me to take a 2 week holiday!

I'm going to guess that your distro overrides DISTRO_FEATURES and you
are missing some of the new libc settings...

Cheers,

Richard


