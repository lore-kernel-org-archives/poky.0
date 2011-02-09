Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E9B44C8006D
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 06:20:23 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19CKJJL032409;
	Wed, 9 Feb 2011 12:20:19 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32365-01; Wed,  9 Feb 2011 12:20:15 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19CKBea032400
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 9 Feb 2011 12:20:12 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <cover.1297230569.git.mark.hatle@windriver.com>
References: <cover.1297230569.git.mark.hatle@windriver.com>
Date: Wed, 09 Feb 2011 12:20:09 +0000
Message-ID: <1297254009.1395.6899.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Preserve hard links
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
X-List-Received-Date: Wed, 09 Feb 2011 12:20:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-08 at 23:51 -0600, Mark Hatle wrote:
> While working on another part of the system, I noticed that Poky didn't appear
> to be preserving any hard links in the system.  This change not only
> preserves hardlinks during packaging, but also shrinks the overall
> disk space required for a build.  In my poky-image-minimal my required
> footprint shank by 200+ MB.
> 
> The second part of this patch I took a guess as to the right components to
> modify.  It has passed the testing I've performed so far, but I'm not
> 100% sure that it's correct.  I believe a bit of additional review may be
> necessary.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: mhatle/hardlink
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/hardlink

This looks good, my main worry is the copytree() function in
meta/lib/oe/path.py as I suspect that will still smash things for
sstate.

I'm seriously considering making that function an os.system call to tar
as I suspect performance would improve substantially. I need some
numbers to back up that idea first though.

I'm probably going to hold off on these patches for 24 hours as there is
risk in them, I'd like to fix the above issue too and at the moment I
want to see us have a "successful" build and stabilise a bit after the
fetcher churn.

Cheers,

Richard



