Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D87F4C806DA
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 11:05:20 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GG5D7E004901;
	Wed, 16 Mar 2011 16:05:13 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04840-01; Wed, 16 Mar 2011 16:05:09 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GG58Es004892
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 16 Mar 2011 16:05:08 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D80DEC6.7000601@linux.intel.com>
References: <4D7E88AC.5060809@linux.intel.com>
	<4D7E8D6B.1020209@linux.intel.com> <1300182015.2537.6.camel@scimitar>
	<4D80DEC6.7000601@linux.intel.com>
Date: Wed, 16 Mar 2011 16:04:57 +0000
Message-ID: <1300291497.30423.1887.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: DISTRO 'poky' not found
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
X-List-Received-Date: Wed, 16 Mar 2011 16:05:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-03-16 at 09:01 -0700, Darren Hart wrote:
> 
> On 03/15/2011 02:40 AM, Joshua Lock wrote:
> > On Mon, 2011-03-14 at 14:49 -0700, Darren Hart wrote:
> >>
> >> On 03/14/2011 02:29 PM, Darren Hart wrote:
> >>> I've run into this error several times during development of various things. It will be in a build tree that I have been working with for a while, then when I come back to it, I get the following. Any idea what triggers this? I suspect something in my workflow, but I can't imagine what it would be. I'd really like to not have to delete my build tree.
> >>>
> >>> $ cd poky.git
> >>> $ source poky-init-build-env build-qemux86/
> >>>
> >>> ### Shell environment set up for Poky builds. ###
> >>>
> >>> You can now run 'bitbake<target>'
> >>>
> >>> Common targets are:
> >>>       poky-image-minimal
> >>>       poky-image-sato
> >>>       meta-toolchain
> >>>       meta-toolchain-sdk
> >>>
> >>> You can also run generated qemu images with a command like 'poky-qemu qemux86'
> >>>
> >>> $ bitbake linux-yocto
> >>> ERROR:  Poky's config sanity checker detected a potential misconfiguration.
> >>>       Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
> >>>       Following is the list of potential problems / advisories:
> >>>
> >>>       Please set TARGET_OS directly, or choose a MACHINE or DISTRO that does so.
> >>> DISTRO 'poky' not found. Please set a valid DISTRO in your local.conf
> >>
> >>
> >> Thanks to Beth and Mark who pointed me in the right direction. This
> >> appears to be a problem with master, if I cherry-pick my changes on top
> >> of the bernard branch, the build continues as expected.
> >>
> >
> > Ah, our layers.conf.sample doesn't include the new meta-yocto layer. So
> > I'm guessing this is a clean build dir?
> 
> I believe I've seen it on both - but probably only when switching 
> branches back and forth between master and bernard.

There should be a fix in master for this now though?

Cheers,

Richard



