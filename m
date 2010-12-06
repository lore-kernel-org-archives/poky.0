Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA3C44C80039
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 19:30:11 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB61U6Rp032755;
	Mon, 6 Dec 2010 01:30:06 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32142-10; Mon,  6 Dec 2010 01:30:01 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB61Tw2Q032738
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 6 Dec 2010 01:29:58 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Chris Larson <clarson@kergoth.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D475430F5@shsmsx502.ccr.corp.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<1291414305.14277.2746.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D475430F5@shsmsx502.ccr.corp.intel.com>
Date: Mon, 06 Dec 2010 01:29:56 +0000
Message-ID: <1291598996.14277.2946.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: sstate status
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
X-List-Received-Date: Mon, 06 Dec 2010 01:30:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-12-05 at 19:10 +0800, Tian, Kevin wrote:
> Sure. However my remote machine in office is down unexpectedly. I'll verify it later
> when going to office next week.
> 
> BTW, on my branch there're also some bug fixes out of environmental variables issue,
> which could you take a look whether they're correct?
> 
> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=tk/sstate&id=7a6fc816766ea925591a0cf6ae17383a953ae061, siggen.py: set 'runtaskdeps' correctly

I've merged this one, thanks.

> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=tk/sstate&id=0a4c46dc2c122ef5c1057380e79b75e302583b4a, siggen.py: fix python error when comparing sstate generated from different srcpath

I understand the need for this but I don't like the implementation :)

We can't use OEROOT here as its not a standard variable and is
deprecated. I was initially thinking POKYBASE but that isn't right
either in bitbake. Hmm.

Chris, any suggestions? I'm actually struggling a bit to come up with a
variable that represents a "head" of the metadata :/. Perhaps filename
would be enough in this case?

I'd also suggest we remove this path when we save the siginfo file, not
when we load it and do the comparison.

> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=tk/sstate&id=7d6dd0b5717b565f478c88d53cf5e53e139f1141, siggen.py: fix the wrong usage on BB_TASKHASH_WHITELIST

Why the initial:

if self.twl and not self.twl.search(dataCache.pkg_fn[fn]):

?

I suspect it should just be:

dep_fn = re.search("(?P<fn>.*)\..*", dep).group('fn')
if self.twl.search(dataCache.pkg_fn[dep_fn]):
    #bb.note("Skipping %s" % dep)
    continue

?

For native/cross tasks, I still expect then to have dependencies and be
rebuilt if something changes, I just don't expect target packages to
change when native/cross ones do.

Cheers,

Richard


