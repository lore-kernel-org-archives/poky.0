Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17D514C800BA
	for <poky@lists.pokylinux.org>; Mon, 21 Mar 2011 09:43:27 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2LEhSMK023490;
	Mon, 21 Mar 2011 14:43:28 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23056-04; Mon, 21 Mar 2011 14:43:24 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2LEhMIZ023484
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 21 Mar 2011 14:43:23 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D875A91.8000402@mlbassoc.com>
References: <4D86B0D2.2070004@mlbassoc.com>
	<1300708651.30423.3434.camel@rex>  <4D875A91.8000402@mlbassoc.com>
Date: Mon, 21 Mar 2011 14:42:57 +0000
Message-ID: <1300718577.30423.3649.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: RPM vs IPK
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
X-List-Received-Date: Mon, 21 Mar 2011 14:43:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-21 at 08:02 -0600, Gary Thomas wrote:
> On 03/21/2011 05:57 AM, Richard Purdie wrote:
> > rpm+zypper:
> >
> > * More of an industry standard
> > * Emphasises correctness and robustness over speed (e.g. number of
> >    fsync calls)
> 
> Does this mean ipk/opkg fails along these lines in any way?

The opkg source code has certainly not been audited as thoroughly as the
rpm codebase for those kind of issues. I'd say the two codebases each
have their own set of problems though :).

> > * Has desktop/enterprise features

Off the top of my head, the ones I'm aware of are:

Possibility of DeltaRPM updates
Various more advanced dependency calculations (which we're adding for
the benefit of all packaging backends in Yocto) 
   * per-file dependenies
   * perl/python module dependencies
   * directory ownership
Multilib support
Tighter integration with features like prelink.

I'm sure some of the more rpm literate people on the list can detail
others.

> > * Not optimised for size (e.g. uses c++)
> >
> > I'd not say one was better than the other, they're just different and
> > suit different use cases.
> 
> Pretty much what I thought, thanks.
> 
> My only concern is that if rpm is the primary emphasis, ipk/opkg might
> suffer from rot.

I want to see opkg continue to work well, if you do see any problems
with it, let us know...

Cheers,

Richard



