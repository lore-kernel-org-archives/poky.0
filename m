Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 265DF4C8009A
	for <poky@lists.pokylinux.org>; Tue,  8 Mar 2011 19:30:07 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p291U4hi031427;
	Wed, 9 Mar 2011 01:30:04 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31382-01; Wed,  9 Mar 2011 01:30:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p291TmYo031414
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 9 Mar 2011 01:29:52 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D70CE46.7040104@mlbassoc.com>
References: <4D6675E0.2040703@mlbassoc.com> <4D6B3BA3.9050303@intel.com>
	<4D6F9018.1000605@mlbassoc.com> <4D704768.2090100@intel.com>
	<4D70CE46.7040104@mlbassoc.com>
Date: Tue, 08 Mar 2011 17:29:47 -0800
Message-ID: <1299634187.602.546.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Is sstate broken
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
X-List-Received-Date: Wed, 09 Mar 2011 01:30:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-04 at 04:34 -0700, Gary Thomas wrote:
> On 03/03/2011 06:59 PM, Zhai, Edwin wrote:
> > Gary Thomas wrote:
> >> On 02/27/2011 11:07 PM, Zhai, Edwin wrote:
> >> > Thanks for trying this.
> >> > sstate function is a little bit fragile recently. I'll look at it after fixing some other bugs.
> >>
> >> Any progress on this?
> >>
> >> Should I file this as a bug?
> >>
> >
> > We have one http://bugzilla.pokylinux.org/show_bug.cgi?id=788
> 
> Yes, that addresses the random errors (which don't seem to have any affect)
> 
> However, even without those errors, the sstate information is not being
> used at all.  In my experiment, a new tree (with the old sstate pointed
> to by SSTATE_MIRRORS) is executing a full build every time.
> 
> Did I miss something?

This should be fixed by the couple of recent changes in master, if you
could check this is working I'd appreciate it as we are getting close to
the release and I'd like this to be working.

Cheers,

Richard



