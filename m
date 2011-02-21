Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3064F4C80546
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 17:33:38 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1LNXbsl021909
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 23:33:37 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 21445-09 for <poky@yoctoproject.org>;
	Mon, 21 Feb 2011 23:33:33 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1LNXUEO021903
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 23:33:30 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 21 Feb 2011 23:33:27 +0000
Message-ID: <1298331207.11289.3256.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Autobuilder status
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
X-List-Received-Date: Mon, 21 Feb 2011 23:33:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

There appear to be three issues on the autobuilder at present which we
need to get fixed quickly.

1) "zypper search avahi" is causing a segfault on some architectures
with a double free being detected by libc. This seems to be the cause of
all the runtime sanity test failures.

2) The tar issues are fixed but there is an underlying problem with
error propagation as it appears bitbake was ignoring the sstate
extraction failure rather than accounting for it in its build task list.
If extraction fails, that task should not be making the "skip" list but
it looks like it does. That bug needs fixing too.

3) There are a number of dpkg-deb failures on permissions. This looks to
be pseudo related. Creation of the sstate package and extraction of it
should be happening under pseudo and the error suggests this is not
happening.

I think PaulE is looking at 2), 3) is new and unassigned and I'm not
sure who is looking at 1) but I'd like to confirm someone is.


I'm also aware of some other niggling problems:

a) do_rootfs depends on the populate_sysroot tasks for all the RDEPENDS.
This appears to be to pull in any tools required for the postinstalls
and dates to changes I made in 2007. This needs revisiting as its crazy
to populate all the sysroots when just the rpms are needed for image
generation.

Simply put, a "bitbake poky-image-xxx -c rootfs" should just install the
package_write_rpm tasks it needs and the populate_sysroot for any tools
needed. No package data or target populate_sysroot tasks should run.

b) "all" architecture packages seem to be getting reinstalled a lot by
sstate. Recent changes to the autobuilder should make it clearer when
this is happening but we should find out why.


I'll aim to file bugs on these tomorrow but just wanted to write things
down whilst there were fresh in my mind. I suspect there may be a bug
open for 1) above but I'd still appreciate a status update on it.

Cheers,

Richard



