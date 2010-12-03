Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 153E14C80A74
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 16:12:06 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB3MC4GZ009080;
	Fri, 3 Dec 2010 22:12:04 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08647-06; Fri,  3 Dec 2010 22:12:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB3MBspE009074
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 3 Dec 2010 22:11:58 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <201012031634.56033.paul.eggleton@linux.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
Date: Fri, 03 Dec 2010 14:11:45 -0800
Message-ID: <1291414305.14277.2746.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: sstate status
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
X-List-Received-Date: Fri, 03 Dec 2010 22:12:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Fri, 2010-12-03 at 16:34 +0000, Paul Eggleton wrote:
> I've been doing some tests with sstate, and I've managed to get to a
> stage where I can share the SSTATE_DIR between my two machines (one
> running Fedora 14 and the other Kubuntu 10.10) and almost get a
> successful build from a clean TMPDIR. My last test got to
> poky-image-minimal.do_rootfs and then failed due to some kind of
> package dependency issue:
> 
> --------- snip ---------
> | Processing rpm...
> | Processing zypper...
> | error: Failed dependencies:
> |       elfutils >= 0.148 is needed by rpm-5.1.10-r7.i586
> |       libaugeas0 >= 0.7.3 is needed by zypper-1.4.7+git0
> +9eb0e248e06c8d20ad054be2439149d9ede37531-r1.i586
> | ERROR: Task failed: ('function do_rootfs failed',
> '/home/pokystuff/tmp/work/qemux86-poky-linux/poky-image-minimal-1.0-r0/temp/log.do_rootfs.6874')
> --------- snip ---------
> 
> A "bitbake -c clean augeas elfutils" and then "bitbake
> poky-image-minimal" again went through OK (and built the
> aforementioned recipes from sstate) , so I'm not sure what went wrong
> here.
> 
> My current state of work is in the paule/sstate contrib branch, which
> is based on Kevin's tk/sstate branch. Kevin, I think the sooner we can
> move this towards master the better, then we can get some wider
> testing.
> 
> FYI Joshua has made bug #507 into a tracking bug for current sstate issues:
> http://bugzilla.pokylinux.org/show_bug.cgi?id=507

Kevin/Paul:

I notice a number of patches in your branches which shouldn't be needed
if we use the two patches at the head of: 

http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=rpurdie/tweaks2

Could you please test using those two changes, or let me know if those
changes cause problems.

Cheers,

Richard




