Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 859E84C81006
	for <poky@yoctoproject.org>; Wed, 11 May 2011 14:18:21 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BJIBE6023853;
	Wed, 11 May 2011 20:18:11 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23675-04; Wed, 11 May 2011 20:18:07 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BJI4XE023847
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 11 May 2011 20:18:05 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4DCAD7CF.6000807@mlbassoc.com>
References: <4DCAD58D.3040501@mlbassoc.com>
	<BANLkTimxcWskB6AQZZ-cN3kTpegt4vK2jg@mail.gmail.com>
	<4DCAD7CF.6000807@mlbassoc.com>
Date: Wed, 11 May 2011 20:17:59 +0100
Message-ID: <1305141479.30391.471.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: qemuarm hangs
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
X-List-Received-Date: Wed, 11 May 2011 19:18:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 12:39 -0600, Gary Thomas wrote:
> On 05/11/2011 12:34 PM, Bruce Ashfield wrote:
> > On Wed, May 11, 2011 at 2:29 PM, Gary Thomas<gary@mlbassoc.com>  wrote:
> >> Building from master, updated earlier today.
> >>
> >> OE Build Configuration:
> >> BB_VERSION        = "1.11.0"
> >> METADATA_BRANCH   = "my_master"
> >> METADATA_REVISION = "2e4518bf18d977e1249ef7e7cd384df66e7b4801"
> >> TARGET_ARCH       = "arm"
> >> TARGET_OS         = "linux-gnueabi"
> >> MACHINE           = "qemuarm"
> >> DISTRO            = "poky"
> >> DISTRO_VERSION    = "1.0+snapshot-20110511"
> >> TARGET_FPU        = "soft"
> >>
> >> When I runqemu on core-image-sato, it brings up the simulated
> >> video screen and the Yocto splash shows.  The progress bar goes
> >> to about 60% and then it just hangs there forever.
> >>
> >> core-image-minimal boots to a login prompt
> >>
> >> Ideas?  How can I figure out where it's bombing out?
> >
> > When I saw this go by:
> >
> > commit a2e232e2313ee267076bb8de32a1a604dbebc33b
> > Author: Zhai Edwin<edwin.zhai@intel.com>
> > Date:   Tue May 10 14:02:35 2011 +0800
> >
> >      qemu: Upgrade qemu git to the latest 0.14 branch
> >
> >      Also add missing patch to build qemu-git
> >
> >      [YOCTO #1013] got fixed
> >
> >      (From OE-Core rev: 9b80846152931bed018f33baaaf1ba253e756867)
> >
> >      Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
> >      Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
> >
> > I wondered about compatibility. Have you tried with the older qemu ?
> 
> I believe so.  I ran the same test a few days ago and it worked fine.
> I'm trying qemux86 now with this latest tree.  After that, I could
> try reverting the change you mention.
> 
> Any clues how to get "under the covers" when booting a qemu image?
> Once it brings up the video/splash screen, I'm in the dark as to
> what's going on.

Several ways:

a) You can redirect the console as Bruce mentions

b) there is an option you can add to the kernel commandline to disable
psplash (psplash=false)

c) you can switch the console as you normally would under Linux which
triggers psplash to terminate (Something like Crtl+Alt+F2 then Ctrl+Alt
+F1 again but I can't remember the exact combination off the top of my
head)

Cheers,

Richard




