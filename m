Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A476E01224
	for <poky@yoctoproject.org>; Wed, 28 Sep 2011 06:16:01 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8SDM9bF006234; Wed, 28 Sep 2011 14:22:10 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 4WHgrtLEn7zc; Wed, 28 Sep 2011 14:22:09 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8SDM17A006176
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 28 Sep 2011 14:22:05 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 28 Sep 2011 14:15:36 +0100
In-Reply-To: <4E830605.2070504@mlbassoc.com>
References: <4E808201.8080103@mlbassoc.com>
	<4E82985F.9080009@linux.intel.com> <4E830605.2070504@mlbassoc.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1317215746.26109.250.camel@ted>
Mime-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: How to build a kernel using menuconfig
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
X-List-Received-Date: Wed, 28 Sep 2011 13:16:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-09-28 at 05:33 -0600, Gary Thomas wrote:
> On 2011-09-27 21:45, Darren Hart wrote:
> >
> >
> > On 09/26/2011 06:45 AM, Gary Thomas wrote:
> >> I'm working with a recent Poky checkout:
> >>     meta-yocto        = "master:7a0cbe6b0e5185aebabedc515b427994bc2a15dc"
> >>
> >> I used to be able to do this:
> >>     % bitbake<some-image>
> >> This step builds everything, including the kernel
> >>     % bitbake virtual/kernel -c menuconfig
> >> Adjust some settings
> >>     % bitbake virtual/kernel -c compile -f
> >>     % bitbake virtual/kernel
> >> Rebuild my image with the new kernel included
> >>     % bitbake<some-image>
> >>
> >> In the past, this would let me adjust some kernel settings, e.g. add a new
> >> module, then rebuild it and later add this to an image.  Sadly, when I run
> >> through these steps with the current master, the new kernel gets compiled
> >> (because I used -f), but not packaged.
> >>
> >> The only thing I've done differently, save updating master, is my build
> >> today includes
> >>     INHERIT += "rm_work"
> >>
> >> Am I missing something?
> >>
> >> How can I build the kernel and make these in-tree adjustments like I used to?
> >> I do this to figure out what kernel settings to set/save for my final packaging.
> >
> >
> > Yeah, this is standard kernel devel workflow. I typically use the kernel
> > recipe name directly, but otherwise my process is the same. What happens
> > now when you run "bitbake virtual/kernel" after the compile -f ?
> >
> 
> As indicated above, nothing.  If I remove rm_work from my configuration
> and then rebuild the kernel, it works as expected.

It sounds like there is a bad interaction between rm_work and this set
of steps. I can kind of see why, rm_work promotes the stamp files to
setscene ones (so the same as if a sstate build was made). Nothing in
the above steps would actually remove the setscene stamps so bitbake
sees them and assumes everything is still valid.

If you did a bitbake -c package -f virtual/kernel then I suspect it
would actually sort itself out. Off the top of my head I can't see a way
to fix this in any straightforward way :/.

Cheers,

Richard



