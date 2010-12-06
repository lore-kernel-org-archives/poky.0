Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 743514C80A74
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 19:04:31 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB614RQA032493;
	Mon, 6 Dec 2010 01:04:27 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32393-02; Mon,  6 Dec 2010 01:04:23 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB614JGJ032487
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 6 Dec 2010 01:04:19 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D475430EC@shsmsx502.ccr.corp.intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
	<AANLkTinYx+43yRYFu=BYQPVJHox6CmBgOMFF199z3BC=@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D475430EC@shsmsx502.ccr.corp.intel.com>
Date: Mon, 06 Dec 2010 01:04:17 +0000
Message-ID: <1291597457.14277.2931.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Mon, 06 Dec 2010 01:04:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-12-05 at 17:32 +0800, Tian, Kevin wrote:
> >From: Chris Larson
> >Sent: Monday, November 29, 2010 11:25 PM
> >On Mon, Nov 29, 2010 at 5:25 AM, Richard Purdie <rpurdie@linux.intel.com> wrote:
> >> Interestingly though, if I add this to curl*.bb:
> >>
> >> FOO = "A"
> >> FOO_append = "B"
> >> FOO_append_virtclass-native = "C"
> >>
> >> and then "bitbake curl-native -e | grep FOO" (he recipe has a
> >> BBCLASSEXTEND native) what should I see?
> >>
> >> I see FOO = "AB" which is not what I thought it would do...
> >
> >Hmm, this isn't what I'd expect either.  It's certainly not what was
> >originally intended -- _append_<foo> and _prepend_<foo> were always
> >supposed to act like normal _append/_prepend, just conditional ones.

This is what I'd have expected too.

> I guess it's related to below lines (from finalize()):
> 
>                     # maybe the OVERRIDE was not yet added so keep the append
>                     if (o and o in overrides) or not o:
>                         self.delVarFlag(append, "_append")
>                     if o and not o in overrides:
>                         continue

Correct, it is these lines that are the problem.

> FOO_append = "B" is parsed into ("B", NONE)
> FOO_append_virtclass-native = "C" is parsed into ("C", virtclass-native)
> 
> If ("C", virtclass-native) is enumerated first, the result is desired: "C" is appended
> to FOO with ("B", NONE) simply removed.
> 
> If ("B", NONE) is enumerated first, then the rest appendixes are removed too which
> is not desired.

This is exactly the problem.

> The net effect is that the 1st appendix always takes effect over the rest unless it
> has an override which hasn't been found yet.

Right. I had a play with the code and can confirm a patch as follows
fixes this problem. I've also made it warn when it finds code that would
effect behaviour. For Poky its throwing up a warning about EXTRA_OEMAKE
but its actually fine as whilst there is an unexpanded override, there
is never any _append or _prepend to trigger this bug (the warning can
show false positives). It would be nice to see if OE is suffering from
this problem anywhere before we accept this fix into bitbake upstream.
I'll also remove this error before this goes into Poky.

http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/bitbake&id=c77410305fe736aa195ce720c8317b39da057052

> Besides this problem, there's also no consideration about override priority. It can't
> handle multiple overrides on same FOO_append.
> 
> To solve it, we still need to iterate override list from highest priority to lowest end,
> and then choose the value from the one firstly matching an override. My remote 
> machine is down now and thus unable to verify it though.

This is a good point but its not a simple one :)

FOO = "A"
FOO_append_OVERA = "B"
FOO_append_OVERB = "C"

could result in ABC or ACB depending on whether OVERA was added to
OVERRIDES late on. There isn't much we can probably do about that
though.

FOO = "A"
FOO_append_OVERA_OVERB = "B"
FOO_append_OVERB_OVERA = "C"

plain won't work at present if I read the code correctly. I'm not sure
there is an ordering constraint here though as "ABC" is the correct
answer and either an OVERRIDE is appended or it isn't and priority isn't
an issue?

Chris: Any thoughts on any of this?

Cheers,

Richard



