Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2109E4C80FA8
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 17:06:33 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASN6STK023937;
	Sun, 28 Nov 2010 23:06:28 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23879-01; Sun, 28 Nov 2010 23:06:24 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASN6Gqf023931
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 28 Nov 2010 23:06:18 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Tom Rini <tom_rini@mentor.com>
In-Reply-To: <4CF2D3CE.1010108@mentor.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D31419AED@shsmsx502.ccr.corp.intel.com>
	<1290004124.2518.4.camel@scimitar>  <4CE3E72E.6070904@mentor.com>
	<1290946854.27143.65.camel@rex>  <4CF2D3CE.1010108@mentor.com>
Date: Sun, 28 Nov 2010 15:06:02 -0800
Message-ID: <1290985562.14277.117.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: a new problem with sstate
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
X-List-Received-Date: Sun, 28 Nov 2010 23:06:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-11-28 at 15:12 -0700, Tom Rini wrote:
> On 11/28/2010 05:20 AM, Richard Purdie wrote:
> > On Wed, 2010-11-17 at 07:31 -0700, Tom Rini wrote:
> >> With old style packaged-staging we workaround this by doing:
> >>
> >> # We want to be certain that the scene is set for us only after it's set for
> >> # our dependencies, to avoid problems with pstage package install order.
> >> do_setscene[deptask] = "do_setscene"
> >>
> >> Can something similar be done for the sstate way of the world?
> >
> > Unfortunately not. sstate differs as the code tries to be clever about
> > the dependencies and reverse walks the dependency tree. This means that
> > if:
> >
> > A =>  B =>  C =>  D =>  E
> >
> > where "=>" means "depends on" then sstate will try and install a sstate
> > package for A, then B, then C and *stop* once it finds a match.
> >
> > This fixes one of the annoyances of packaged-staging where if you're
> > building an image and have all the ipks installed, it would still
> > install the cross toolchain.
> 
> Er, so you're saying sstate has a 3 steps back limit?  Or am I just 
> misunderstanding the example?

You're misunderstanding it :/. It could stop at any point it finds a
match, I just happened to pick three steps.

Putting it a different way, my point was that there is a "setscene" per
task but the setscene dependencies represent those of the "parent" task,
but are searched backwards compared to the normal logic. So setscene
tasks don't have dependencies in their own right, its linked to the
parent task the represent.

>   That would sound like other things are a 
> bit hard to get done with sstate?  Or should stuff like bitbake 
> virtual/kernel ; bitbake -c menuconfig virtual/kernel ; bitbake 
> virtual/kernel (roughly...) still work?

This would all work just fine...

Cheers,

Richard



