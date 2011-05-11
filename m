Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04EF44C80FEC
	for <poky@yoctoproject.org>; Wed, 11 May 2011 14:13:51 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BJDjiJ023814;
	Wed, 11 May 2011 20:13:45 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23675-03; Wed, 11 May 2011 20:13:41 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BJDZpC023808
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 11 May 2011 20:13:36 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <BANLkTimxcWskB6AQZZ-cN3kTpegt4vK2jg@mail.gmail.com>
References: <4DCAD58D.3040501@mlbassoc.com>
	<BANLkTimxcWskB6AQZZ-cN3kTpegt4vK2jg@mail.gmail.com>
Date: Wed, 11 May 2011 20:13:30 +0100
Message-ID: <1305141210.30391.467.camel@rex>
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
X-List-Received-Date: Wed, 11 May 2011 19:13:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 14:34 -0400, Bruce Ashfield wrote:
> On Wed, May 11, 2011 at 2:29 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> > Building from master, updated earlier today.
> >
> > OE Build Configuration:
> > BB_VERSION        = "1.11.0"
> > METADATA_BRANCH   = "my_master"
> > METADATA_REVISION = "2e4518bf18d977e1249ef7e7cd384df66e7b4801"
> > TARGET_ARCH       = "arm"
> > TARGET_OS         = "linux-gnueabi"
> > MACHINE           = "qemuarm"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.0+snapshot-20110511"
> > TARGET_FPU        = "soft"
> >
> > When I runqemu on core-image-sato, it brings up the simulated
> > video screen and the Yocto splash shows.  The progress bar goes
> > to about 60% and then it just hangs there forever.
> >
> > core-image-minimal boots to a login prompt
> >
> > Ideas?  How can I figure out where it's bombing out?
> 
> When I saw this go by:
> 
> commit a2e232e2313ee267076bb8de32a1a604dbebc33b
> Author: Zhai Edwin <edwin.zhai@intel.com>
> Date:   Tue May 10 14:02:35 2011 +0800
> 
>     qemu: Upgrade qemu git to the latest 0.14 branch
> 
>     Also add missing patch to build qemu-git
> 
>     [YOCTO #1013] got fixed
> 
>     (From OE-Core rev: 9b80846152931bed018f33baaaf1ba253e756867)
> 
>     Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> 
> I wondered about compatibility. Have you tried with the older qemu ?

Note that this is the git recipe, not the released version. I've just
realised that it should have a DEFAULT_PREFERENCE = "-1" and doesn't
though. These git versions used to be great for testing upstream changes
before they hit releases but they shouldn't be the default and I suspect
this on has slipped to become default due to the PV change.

It is of course a worry if the upstream version is broken but that is a
different problem :/.

Cheers,

Richard


