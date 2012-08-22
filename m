Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75C80E01388
	for <poky@yoctoproject.org>; Wed, 22 Aug 2012 06:48:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7MDmDGb003670;
	Wed, 22 Aug 2012 14:48:13 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03207-06; Wed, 22 Aug 2012 14:48:09 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7MDm3cJ003654
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 22 Aug 2012 14:48:04 +0100
Message-ID: <1345643284.3907.123.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 22 Aug 2012 14:48:04 +0100
In-Reply-To: <503396C3.9020705@mlbassoc.com>
References: <503396C3.9020705@mlbassoc.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: knotty2
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 Aug 2012 13:48:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-08-21 at 08:10 -0600, Gary Thomas wrote:
> I just updated to master:6ed4012fefee1294d98f2ea76163d44acf3d045
> The new "knotty2" interface is very impressive and a welcome improvement
> from the old CLI :-)
> 
> One thing I noticed though - during much of the first phase(*) of a
> new build (where it's building the early native packages), I only
> get one task running at a time even though I've set BB_NUMBER_THREADS ?= "4"
> What needs to be so serialized?
> 
> Once it gets past this phase and into building the main recipes,
> it goes back to running more than one task at a time.
> 
> (*) Do these various build phases have names?  Is this documented?

This is probably the bit where its building pseudo-native. It
effectively does:

bitbake pseudo-native
bitbake <original target>

so the pseudo-native bit is not very parallel. Its the lesser of several
evils. I have ideas to improve this but they're invasive, complex and
I'm not finding the time to look at that :(

Cheers,

Richard


