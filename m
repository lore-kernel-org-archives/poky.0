Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86908E011B6
	for <poky@yoctoproject.org>; Fri, 12 Aug 2011 06:08:34 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7CD8aL0012039;
	Fri, 12 Aug 2011 14:08:36 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11961-01; Fri, 12 Aug 2011 14:08:32 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7CD8SjH012033
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 12 Aug 2011 14:08:29 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4E44792F.5000402@windriver.com>
References: <cover.1313090099.git.bruce.ashfield@windriver.com>
	<606861a92864cb728203fdf5db286d684d2537eb.1313090099.git.bruce.ashfield@windriver.com>
	<1313106445.14274.478.camel@rex>  <4E44792F.5000402@windriver.com>
Date: Fri, 12 Aug 2011 14:07:49 +0100
Message-ID: <1313154469.14274.489.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, Liming Wang <liming.wang@windriver.com>,
	saul.wold@intel.com
Subject: Re: [PATCH 1/1] meta-yocto: remove apm from beagleboard MACHINE_FEATURES
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
X-List-Received-Date: Fri, 12 Aug 2011 13:08:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-08-11 at 20:51 -0400, Bruce Ashfield wrote:
> On 11-08-11 7:47 PM, Richard Purdie wrote:
> > On Thu, 2011-08-11 at 15:16 -0400, Bruce Ashfield wrote:
> >> Fixes [YOCTO: #916]
> >>
> >> apm is not something that we require in our yocto reference beagleboard
> >> BSP. It currently is listed in the MACHINE_FEATURES for the board, which
> >> leads to the runtime message:
> >>
> >>    Starting advanced power management daemon: No APM support in kernel
> >>
> >> Since "/proc/apm" is not present. The board config we are targeting does
> >> not have the hardware to back this, so adding the emulation support
> >> wouldn't yield useful data. We'll leave this extended functionality for
> >> other more appropriate beagleboard configs.
> >
> > On arm it used to be the case that this was the only way to expose user
> > interface to suspend/resume the machine. Its not so much about their
> > being hardware present for it as the whole kernel side was emulation of
> > the user space notification part.
> >
> > Has something changed in recent kernels in this area?
> 
> I won't claim to be an expert here .. but I haven't used apmd
> on many machines in quite a while. Assuming suspend_ops is
> implemented, it is typically just something ike this:
> 
>   echo mem > /sys/power/state
> 
>     or
> 
>   echo standby > /sys/power/state
> 
> With a wakeup via the rtc, or whatever the board offers. I'm
> cc'ing Liming on this, since he's been poking at the board recently
> and may have more hands on information to share.
> 
> If we ARE removing this capability, then we'll take the other option
> that we had for this case and enable the emulation.

I have a suspicion that certain parts of the sato code do
assume /dev/apm_bios device emulation is present to get userspace
notification of suspend/resume events which the above doesn't provide
last I checked.

Likely this isn't an issue and I think that code in sato (matchbox panel
app iirc) is toggled by the MACHINE_FEATURES but its certainly worth
keeping in mind...

Cheers,

Richard




