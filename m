Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 897C24C80050
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 06:37:52 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7CbnoK002833;
	Tue, 7 Dec 2010 12:37:49 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02099-06; Tue,  7 Dec 2010 12:37:45 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7CbfbJ002826
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 7 Dec 2010 12:37:42 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D47543B3B@shsmsx502.ccr.corp.intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
	<AANLkTinYx+43yRYFu=BYQPVJHox6CmBgOMFF199z3BC=@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D475430EC@shsmsx502.ccr.corp.intel.com>
	<1291597457.14277.2931.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D47543B3B@shsmsx502.ccr.corp.intel.com>
Date: Tue, 07 Dec 2010 12:37:35 +0000
Message-ID: <1291725455.11475.10.camel@rex>
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
X-List-Received-Date: Tue, 07 Dec 2010 12:37:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-07 at 15:55 +0800, Tian, Kevin wrote:
> >From: Richard Purdie [mailto:rpurdie@linux.intel.com]
> >http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/bitbake&id=c77410305f
> >e736aa195ce720c8317b39da057052
> 
> yes, that looks a clear fix.

In the absence of Chris saying no, I've merged this into Poky so it
doesn't get lost.

> Actually my original thought was a little bit different. Atm I thought that only one
> appendix should take effect, i.e:
> 
> FOO = "A"
> FOO_append_OVERA = "B"
> FOO_append_OVERB = "C"
> 
> If OVERB is higher priority than OVERA, the result would be "AC" then.
> 
> Now obviously my earlier thought is wrong. Every _append appends a new
> value if the override is valid. :-)

Right, there is just the question of ordering.

> I also thought that there's no ordering constraint in this design. either "A B C"
> or "A C B" could work, unless the appendix itself has order constraint, say 
> a patch sequence. But I'm not sure whether there's real usage and we need
> to handle it or not.

I think its not something we should worry too much about, just something
to be aware of.

I do still think we should support FOO_append_OVERA_OVERB_OVERC though
perhaps we should leave a bug open on that?

Cheers,

Richard


