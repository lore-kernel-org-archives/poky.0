Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5151C4C811E2
	for <poky@lists.pokylinux.org>; Sun, 28 Nov 2010 15:20:16 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLKDaK021119;
	Sun, 28 Nov 2010 21:20:13 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20784-08; Sun, 28 Nov 2010 21:20:09 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLK1Wh021092
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 28 Nov 2010 21:20:05 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D42C67F98@shsmsx502.ccr.corp.intel.com>
References: <4CEE4347.1070700@mlbassoc.com> <4CEE4A9E.6030107@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504D42C67F98@shsmsx502.ccr.corp.intel.com>
Date: Sun, 28 Nov 2010 15:42:53 +0000
Message-ID: <1290958973.27143.310.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: bitbake listtasks broken
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
X-List-Received-Date: Sun, 28 Nov 2010 21:20:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-11-26 at 10:29 +0800, Tian, Kevin wrote:
> >From: Gary Thomas
> >Sent: Thursday, November 25, 2010 7:38 PM
> >
> >On 11/25/2010 04:06 AM, Gary Thomas wrote:
> >> Filed as bug #548
> >>
> >> This command [no longer?] produces any output:
> >> bitbake recipe -c listtasks
> >>
> >> $ bitbake qemu -c listtasks
> >> NOTE: Handling BitBake files: | (0756/0756) [100 %]
> >> Parsing of 756 .bb files complete (0 cached, 756 parsed). 913 targets, 34 skipped, 0
> >masked, 0 errors.
> >>
> >> OE Build Configuration:
> >> BB_VERSION = "1.11.0"
> >> METADATA_BRANCH = "local_master"
> >> METADATA_REVISION = "94b1fda09671b58aafb54983e4a6e499f6ffc369"
> >> TARGET_ARCH = "i586"
> >> TARGET_OS = "linux"
> >> MACHINE = "qemux86"
> >> DISTRO = "poky"
> >> DISTRO_VERSION = "0.9+snapshot-20101125"
> >> TARGET_FPU = ""
> >>
> >> NOTE: Resolving any missing task queue dependencies
> >> NOTE: Preparing runqueue
> >> NOTE: Executing runqueue
> >> NOTE: Full skip list set([])
> >> NOTE: Running task 1 of 1 (ID: 0,
> >/tmp/poky-amltd/meta/recipes-devtools/qemu/qemu_0.12.4.bb, do_listtasks)
> >> NOTE: package qemu-0.12.4-r22: task do_listtasks: Started
> >> NOTE: package qemu-0.12.4-r22: task do_listtasks: Succeeded
> >> NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be rerun and 0 failed.
> >
> >To be fair, it does do something, but the results are hidden in
> >the temp/log.do_listtasks file.  Certainly not what the documentation
> >implies...
> >
> 
> Previously python tasks were not logged, so do_listtasks get its output to the console.
> 
> Now all python and shell tasks are logged, that's why you see output in a log file now.
> 
> But I agree that it's not convenient to search WORKDIR for such information. I'm working
> a fix by use bb.msg.note instead.

Good thinking, I didn't realise it was poking sysout directly. I've a
local patch switching this to use bb.plain() which is the most
appropriate formatting in this case.

Cheers,

Richard


