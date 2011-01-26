Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 076444C811AA
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 04:01:47 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0QA3hZN026869; Wed, 26 Jan 2011 10:03:43 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Okzb39eJwziM; Wed, 26 Jan 2011 10:03:43 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0QA3Zm8026841
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 26 Jan 2011 10:03:37 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A31D0C914@shsmsx501.ccr.corp.intel.com>
References: <1295993245.27814.133.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A31D0C878@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB71E1@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB7203@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A31D0C914@shsmsx501.ccr.corp.intel.com>
Date: Wed, 26 Jan 2011 10:01:16 +0000
Message-ID: <1296036076.27814.2250.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@yoctoproject.org>
Subject: Re: Master stability update
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
X-List-Received-Date: Wed, 26 Jan 2011 10:01:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-01-26 at 11:52 +0800, Xu, Dongxiao wrote:
> Tian, Kevin wrote:
> >> From: Tian, Kevin
> >> Sent: Wednesday, January 26, 2011 10:52 AM
> >> 
> >>> From: Xu, Dongxiao
> >>> Sent: Wednesday, January 26, 2011 10:46 AM
> >>> 
> >>> Richard Purdie wrote:
> >>>> We merged the features into master. I just want to highlight the
> >>>> status of the following issues:
> >>>> 
> >>>> * pseudo problem causing failure of meta-toolchain and corruption
> >>>> of certain file permissions - fixed in master
> >>>> 
> >>>> * the -live image issues some people and the autobuilder were
> >>>> seeing - fixed in master
> >>>> 
> >>>> * the perf issue for linux-yocto-stable - fixed in master
> >>>> 
> >>>> The following are know issues with master:
> >>>> 
> >>>> * Using rm_work and switching machines to machines of the same
> >>>> "multimachine" architecture breaks.
> >>> 
> >>> After sysroot is per machine, we may need to reserve the "image"
> >>> folder
> >> even
> >>> when rm_work, since for the second machine build,
> >>> do_populate_sysroot and do_package will be re-run to populate files
> >>> into a different sysroot folder. 
> >>> 
> >>>> 
> >>>> * When switching machines of the same "multimachine" architecture
> >>>> (e.g. emenlow to atom-pc), some sstate packages are changing
> >>>> checksums when at first glance they shouldn't (e.g. perl
> >>>> do_install). A quick scan of my sstate directory:
> >>> 
> >>> I also have a look at my local build sstate directories, there are
> >>> 17 packages whose prebuilt result could not shared betweeen atom-pc
> >>> and emenlow. Some 
> >>> of them may be not a problem since there are ${MACHINE} variables
> >>> used in do_install(), some others are strange why do_install will
> >>> have two different signatures between two different machines.
> >>> 
> >>> I will spend some time investigating it.
> >>> 
> >> 
> >> Note that checksum changes may not come from do_install itself, which
> >> including the hash from other tasks that do_install depends on. To
> >> capture the latter possibility, you can simply use "bitbake -S
> >> poky-image-minimal" which only generates .siginfo for all the tasks
> >> w/o actually running them. This way you can compare the difference
> >> between emenlow and atom-pc easily to see what actually change.
> >> 
> > 
> > After a quick check, I guess this is not a problem. for example
> > perl.do_configure changes checksum due to $MACHINE in dependency
> > variables as Dongxiao said.  
> > Once perl is not reusable, at least ~10 recieps (libzypp, libtool,
> > rpm, ...) are not reusable too because perl is in their task
> > dependency chain.  
> > 
> > I didn't check all the differences yet, but overall feeling is that
> > this should be OK as Dongxiao mentioned there're several obvious
> > MACHINE related recipes. I'll leave to Dongxiao for final
> > confirmation. :-)   
> > 
> > Thanks
> > Kevin
> 
> Thanks Kevin for the suggestion which can quickly track down the issue.
> 
> Within my poky-image-sdk and meta-toolchain-sdk build, there are totally 17 recipes in core2-poky-linux folder whose prebuilt result could not be shared between two machine of one architecture. 
> 
> They are: connman, kexec-tools, libzypp, sat-solver, rpm, perl, matchbox-keyboard, matchbox-panel-2, netbase, pulseaudio, screenshot, task-poky-sdk, tslib, xf86-input-evdev, xf86-input-keyboard, xf86-input-mouse, zypper.
> 
> I used bitbake-diffsig tool to dump the sigdata, and results are:
> 
> Connman: its do_configure depends on hal's do_populate_sysroot, while hal is a recipe of machine specific.
> Pulseaudio: its do_configure depends on hal's do_populate_sysroot, while hal is a recipe of machine specific.
> 
> Kexec-tools: its do_configure depends on linux-yocto-stable's do_populate_sysroot, which is a machine specific recipe.
>
> Perl: ${MACHINE} in do_configure.
> Rpm: its do_configure depends on perl's do_populate_sysroot.
> Sat-solver: its do_configure depends on rpm's do_populate_sysroot.
> Libzypp: its do_configure depends on sat-solver's do_populate_sysroot.
> Zypper: its do_configure depends on libzypp's do_populate_sysroot
> 
> Matchbox-panel-2: its do_configure contains "${MACHINE_FEATURES}"
> Matchbox-keyboard: its do_configure depends on matchbox-panel-2's do_populate_sysroot.
> Screenshot: its do_configure depends on matchbox-panel-2's do_populate_sysroot
> Task-poky-sdk: depends on matchbox-panel-2
> 
> Netbase: ${MACHINE} in do_install.
> Tslib: ${MACHINE} in do_install.
> 
> Xf86-input-evdev, xf86-input-keyboard, and xf86-input-mouse: xorg-xserver dependency differences, which emenlow has its own xorg-xserver layer.
> 

So for each of these we need to decide if rebuilding is a valid or
invalid thing to do.

The one that jumps out at me is perl. Why does it need MACHINE in
do_configure and is it really MACHINE dependent? If you look at the
do_configure code, its a rather strange check against the "native"
machine which we don't use/support. I'd argue that machine is error
prone, problematic and replaced by our nativesdk code so I'm in favour
of removing that check.

Some of the other items above are trickier. In some cases we should
perhaps be marking them as machine specific, e.g. mb-panel-2 ? and maybe
also whitelisting some dependencies if we're sure those items don't
change if the dependency changes.

The nice thing is now that we can make something like mb-panel-2 machine
specific and not have the whole world collapse as it would have done
previously so we can start to benefit from this change! :)

Cheers,

Richard



