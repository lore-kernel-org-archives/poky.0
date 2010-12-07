Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 383AD4C80039
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 09:03:05 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7F2xJ8004588;
	Tue, 7 Dec 2010 15:02:59 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04181-07; Tue,  7 Dec 2010 15:02:55 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7F2peD004582
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 7 Dec 2010 15:02:51 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D47543B26@shsmsx502.ccr.corp.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<1291414305.14277.2746.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D475430F5@shsmsx502.ccr.corp.intel.com>
	<1291598996.14277.2946.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D47543B26@shsmsx502.ccr.corp.intel.com>
Date: Tue, 07 Dec 2010 15:02:45 +0000
Message-ID: <1291734165.1554.130.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Chris Larson <clarson@kergoth.com>,
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
X-List-Received-Date: Tue, 07 Dec 2010 15:03:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-07 at 15:46 +0800, Tian, Kevin wrote: 
> >From: Richard Purdie [mailto:rpurdie@linux.intel.com]

> >http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=tk/sstate&id=0a4c46dc2c1
> >22ef5c1057380e79b75e302583b4a, siggen.py: fix python error when comparing sstate
> >generated from different srcpath
> >
> >I understand the need for this but I don't like the implementation :)
> >
> >We can't use OEROOT here as its not a standard variable and is
> >deprecated. I was initially thinking POKYBASE but that isn't right
> >either in bitbake. Hmm.
> 
> Could you elaborate why POKYBASE can't be used too? Because LAYERDIR is a
> one-time expansion action? If we're sure that POKYBASE is expanded before
> base signature generation, then it could work.

POKYBASE is poky specific and not a bitbake variable. Using it in
generic bitbake code is therefore a layer violation.

> >Chris, any suggestions? I'm actually struggling a bit to come up with a
> >variable that represents a "head" of the metadata :/. Perhaps filename
> >would be enough in this case?
> >
> >I'd also suggest we remove this path when we save the siginfo file, not
> >when we load it and do the comparison.
> 
> Yes, that's a better approach. I'll go that approach.

Thanks, I'll wait for an updated patch.

> That's my intention too. Above logic is to filter out native/cross dependencies.
> If we do that filter for native/cross tasks too, that means all dependencies 
> would be wiped out which is not what we want since they all fall into the
> match group. That's why I add the initial condition to restrict the filtering on
> on target packages. :-)

Ok, this makes sense. I merged it after adding in some comments to the
code.

I've asked Paul to pull together a branch with all the changes in for
sstate and see how we stand.


Cheers,

Richard




