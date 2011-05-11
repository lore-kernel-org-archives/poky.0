Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 11E104C80A47
	for <poky@pokylinux.org>; Wed, 11 May 2011 15:51:45 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QKGNj-0001Ec-Ns
	for poky@pokylinux.org; Wed, 11 May 2011 22:51:43 +0200
Received: from ppp079166118054.dsl.hol.gr ([79.166.118.54])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 11 May 2011 22:51:43 +0200
Received: from gmane by ppp079166118054.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 11 May 2011 22:51:43 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 11 May 2011 23:51:30 +0300
Organization: Reliable Embedded Systems
Message-ID: <iqessi$mok$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166118054.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: No rootfs for beagleboard after bernard 5.0
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 May 2011 20:51:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to build poky-image-sato-sdk branch bernard-5.0.1 for the
beagleboard. It has the following error:

ERROR: Function 'File:
'/work/rber/poky-bernard-5.0.1-arm-beagle/downloads/distcc-2.18.3.tar.bz2'
has md5 checksum 2279f50fe7b688c8d6762a3e095a302a when
0d6b80a1efc3a3d816c4f4175f63eaa2 was expected (from URL:
'http://distcc.samba.org/ftp/distcc/distcc-2.18.3.tar.bz2')' failed

... and no rootfs ...

rber@yocto-vm-1:/work/rber/poky-bernard-5.0.1-arm-beagle/tmp/deploy/images$
ls
licenses
MLO-beagleboard
MLO-beagleboard-1.42+r13+git1+6f3a26101303051e0f91b6213735b68ce804e94e-r13
modules-2.6.37.3-yocto-standard+-r16-beagleboard.tgz
u-boot-beagleboard.bin
u-boot-beagleboard-v2010.12+r1+git1+264eaa0ea967bac32214b87d60cfc86c8b22cac6-r1.bin
uImage-2.6.37+git1+212cae404e57ff9dc58c808035770d51325c3512_1+2b2ef940457f0bb40e0fb76937c921c2962364ca-r16-beagleboard-20110511114121.bin
uImage-beagleboard.bin
x-load-beagleboard-1.42+r13+git1+6f3a26101303051e0f91b6213735b68ce804e94e-r13.bin.ift
x-load-beagleboard.bin.ift

Something similar happened with the latest and greatest from git (that's
why I was trying this)

Am I missing something or is poky-image-sato-sdk for the beagleboard broken?

Regards,

Robert
...If the code and the comments disagree, both are probably wrong.

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



