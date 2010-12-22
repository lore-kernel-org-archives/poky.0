Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 786534C81110
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 14:38:36 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBMKdvPV012727; Wed, 22 Dec 2010 20:39:58 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ZM1kYshbf3I8; Wed, 22 Dec 2010 20:39:57 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBMKdfft012702
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 22 Dec 2010 20:39:51 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <ED7C4989-D54D-4C12-AD6A-2135EB1258AE@dominion.thruhere.net>
References: <70D74F2C-4429-4294-9668-2D17B8A31943@dominion.thruhere.net>
	<1293029368.25087.7644.camel@rex>
	<ED7C4989-D54D-4C12-AD6A-2135EB1258AE@dominion.thruhere.net>
Date: Wed, 22 Dec 2010 20:37:50 +0000
Message-ID: <1293050270.3578.172.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: RDEPENDS = "foo" in core layer
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
X-List-Received-Date: Wed, 22 Dec 2010 20:38:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-22 at 16:04 +0100, Koen Kooi wrote:
> Op 22 dec 2010, om 15:49 heeft Richard Purdie het volgende geschreven:
> 
> > On Wed, 2010-12-22 at 14:49 +0100, Koen Kooi wrote:
> >> The core layer has tons of RDEPENDS = "foo", which should actually be
> >> RDEPENDS_${PN}. What's the policy on those?
> > 
> > They should be fixed. Patches very welcome...
> 
> A quick sed gives me:
> 
>  76 files changed, 77 insertions(+), 77 deletions(-)
> 
> Do you want that as a single patch and if not, how do you want to have
> it split and are PR bumps needed?

One patch is fine. One tricky part is that this is a change in behaviour
as an RDEPENDS is applied to every RDEPENDS_XXX, not just XXX=${PN} and
that means we really should bump PR :/.

Is there also a similar problem with RRECOMMENDS?

Cheers,

Richard



