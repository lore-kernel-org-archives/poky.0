Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66838E013FB
	for <poky@yoctoproject.org>; Sun, 20 May 2012 01:29:29 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4K8TQjJ010533;
	Sun, 20 May 2012 09:29:26 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03035-10; Sun, 20 May 2012 09:29:22 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4K8TGVY010527
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 20 May 2012 09:29:18 +0100
Message-ID: <1337502556.28145.22.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Sun, 20 May 2012 09:29:16 +0100
In-Reply-To: <4FB034B3.9070505@mlbassoc.com>
References: <4F8493BB.5070400@mlbassoc.com> <1334100422.10826.99.camel@ted>
	<4F84CCE3.1060504@mlbassoc.com> <4F84E00D.7030302@mlbassoc.com>
	<4F8D5F61.1010002@mlbassoc.com> <1334674913.616.98.camel@ted>
	<4F8D8A73.3030408@mlbassoc.com> <1334677494.616.101.camel@ted>
	<4F8D934D.9070704@mlbassoc.com> <1334679589.616.106.camel@ted>
	<4F8DA181.9070005@mlbassoc.com> <1334697649.616.138.camel@ted>
	<4F8DEB4A.7020401@mlbassoc.com> <1336912769.2711.16.camel@ted>
	<4FB034B3.9070505@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: SRC checksum checking broken
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
X-List-Received-Date: Sun, 20 May 2012 08:29:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-05-13 at 16:24 -0600, Gary Thomas wrote:
> On 2012-05-13 06:39, Richard Purdie wrote:
> > Having gone over this several times, I think the original patch is
> > correct but it highlights some other issues. The nastiest of those is
> > the deletion of files. I think I've found a way of fixing that by
> > correctly using fetcher clean functions (which are null operations for
> > the local fetcher).
> >
> > The remaining issue is then one of better output from the fetcher as
> > there wasn't enough info in the above logs but that is really a separate
> > problem.
> >
> > I've sent out several fetcher patches to the bitbake list which will
> > hopefully address some of these issues. I'm travelling at the moment and
> > these were written without internet access so my testing is limited to
> > the local file:// urls but I'm confident they move things in the right
> > direction.
> 
> Is there something I should check wrt this problem?  A bitbake URL/version?

I've just checked in a number of patches to master (bitbake and poky)
which should fix the various fetcher issues people have been seeing.

I'd appreciate it if you could test with that and see if this issue is
now resolved.

Cheers,

Richard




