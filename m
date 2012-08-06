Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06FCFE0076B
	for <poky@yoctoproject.org>; Mon,  6 Aug 2012 06:11:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q76DBc3H028064;
	Mon, 6 Aug 2012 14:11:38 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27900-02; Mon,  6 Aug 2012 14:11:34 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q76DBSvO028058
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 6 Aug 2012 14:11:29 +0100
Message-ID: <1344258692.9756.150.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Date: Mon, 06 Aug 2012 14:11:32 +0100
In-Reply-To: <CAMKF1soaei9wyzPH60HnyA8RVafYXNoyghi_j=sBWiCM9mk+uw@mail.gmail.com>
References: <CAMKF1spxaMS60nL4erLK1JaxHOJZOBhsuabs1V3O91mCfgU83Q@mail.gmail.com>
	<CAMKF1soaei9wyzPH60HnyA8RVafYXNoyghi_j=sBWiCM9mk+uw@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: llvm build regression caused by [71cc9de357484c469cc3a46f013b11c84c924aa0] bitbake: Fix script location after mishandled merge
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
X-List-Received-Date: Mon, 06 Aug 2012 13:11:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2012-08-04 at 14:15 -0700, Khem Raj wrote:
> Actually I pasted wrong commit
> 
> Problem is due to
> 
> 
> commit 9df0a20d9562322162676ed2606bf4b0a1bd6726
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> Date:   Fri Aug 3 10:24:32 2012 +0100
> 
>     bitbake: data_smart: Fix unanchored regexp causing strange parsing issue
> 
>     If this regular expression is unanchored, it would accept strings like:
> 
>     do_install_append1
>     do_install_appendsomelongstring
> 
>     and treat them like they were do_install_append. Clearly this
> isn't desirable.
>     Only one instance of this type of issue was found in OE-Core and
> has been fixed
>     so correcting the regexp should be safe to do.
> 
>     (Bitbake rev: 23bd5300b4a99218a15f4f6b0ab4091d63a602a5)
> 
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> 

Have a look through the recipes and see if there is anything doing:

xxxx_append<something here>

and remove the <something here>.

Cheers,

Richard


