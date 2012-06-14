Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50523E013A6
	for <poky@yoctoproject.org>; Thu, 14 Jun 2012 03:32:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5EAWkCJ032313;
	Thu, 14 Jun 2012 11:32:46 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32033-03; Thu, 14 Jun 2012 11:32:40 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5EAWcbw032307
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 14 Jun 2012 11:32:39 +0100
Message-ID: <1339669959.24333.54.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
Date: Thu, 14 Jun 2012 11:32:39 +0100
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: RFC: [PATCH 00/31] denzil pull request
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
X-List-Received-Date: Thu, 14 Jun 2012 10:32:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-06-12 at 13:40 -0700, Scott Garman wrote:
> Hello,
> 
> This is a pull request for the poky denzil branch, based on a set of
> commits I've been testing from my sgarman/denzil-next branch.
> 
> I'm submitting this as an RFC so the community can offer feedback as
> soon as possible. I'm planning on running this through the Yocto
> autobuilder tonight and will reply to this thread with test results.
> Assuming we get green builds, the goal is to get this pull request
> merged into poky's denzil branch fairly quickly, so please speak
> up if you have any comments or concerns with these commits.
> 
> Thanks,
> 
> Scott
> 
> 
> The following changes since commit 7552ccd06c6327b5f36ee0cceb432946f8e98d3f:
> 
>   documentation/yocto-project-qs/yocto-project-qs.xml: pre-built example fix (2012-05-31 21:22:29 +0100)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib sgarman/denzil-next-testing
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next
> 
> Dongxiao Xu (1):
>   Hob: Clear the building status if command failed
> 
> Jesse Zhang (1):
>   beecrypt: disable java
> 
> Joe Slater (1):
>   shared-mime-info: fix build race condition
> 
> Joshua Lock (1):
>   sanity.bbclass: copy the data store and finalise before running
>     checks
> 
> Kang Kai (1):
>   cooker.py: terminate the Parser processes
> 
> Laurentiu Palcu (1):
>   freetype: upgrade to 2.4.9
> 
> Liming An (2):
>   Hob: change the refresh icon speed to make it view clear
>   Hob: add original url show function with the tooltip hyperlink for
>     user
> 
> Mihai Lindner (1):
>   sudo: fixed wrong `chmod` path
> 
> Paul Eggleton (3):
>   classes/sanity: send sanity check failure as a separate event for Hob
>   hob: handle sanity check failures as a separate event
>   poky.conf: use correct version string for Ubuntu 12.04
> 
> Paul Gortmaker (1):
>   gitignore: add wildcard to match toplevel patch files
> 
> Richard Purdie (4):
>   netbase: Correctly set FILESEXTRAPATHS to include the version
>   Update version to 1.15.2 (correspdoning to Yocto 1.2 release)
>   bitbake.conf: Improve wget timeouts
>   image.bbclass: Ensure ${S} is cleaned at the start of rootfs
>     generation
> 
> Robert Yang (1):
>   rpm 5.4.0: respect to the arch when choose the alternatives
> 
> Scott Garman (1):
>   runqemu-ifup: enable arp proxying
> 
> Scott Rifenbark (4):
>   documentation/bsp-guide/bsp.xml: BSP recommendations section added
>   documentation/bsp-guide/bsp.xml: Updates to requirements section
>   documentation/bsp-guide/bsp.xml: Review comments to recommendations
>   documentation/poky.ent:  Updated variables for correct 1.2.1 build.
> 
> Shane Wang (1):
>   Hob: Adjust the progress bar and set 100% only when all is done.
> 
> Song.Li (1):
>   groff: Fix build on Fedora 17
> 
> Tom Zanussi (4):
>   yocto-kernel: use BUILDDIR to find bblayers.conf
>   yocto-bsp: clarify help with reference to meta-intel
>   gnupg: add libusb to DEPENDS
>   gnupg: disable CCID driver
> 
> Xiaofeng Yan (1):
>   ncurses: Avoid occasional builling failure when having parallel
>     processable task
> 
> Zhai Edwin (1):
>   webkit-gtk: Use glib as unicode backend to avoid browser crash

Merged to poky's denzil branch, thanks.

I did get a little confused here as some of these appeared to have
already been merged but I think I've got it right...

Cheers,

Richard


