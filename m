Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2835F4C800A0
	for <poky@lists.pokylinux.org>; Wed,  9 Mar 2011 13:05:13 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p29J5Eeh021018;
	Wed, 9 Mar 2011 19:05:14 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18013-10; Wed,  9 Mar 2011 19:05:10 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p29J519u020990
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 9 Mar 2011 19:05:06 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D77C9F9.4040309@mlbassoc.com>
References: <4D6675E0.2040703@mlbassoc.com> <4D6B3BA3.9050303@intel.com>
	<4D6F9018.1000605@mlbassoc.com> <4D704768.2090100@intel.com>
	<4D70CE46.7040104@mlbassoc.com> <1299634187.602.546.camel@rex>
	<4D77C9F9.4040309@mlbassoc.com>
Date: Wed, 09 Mar 2011 11:04:57 -0800
Message-ID: <1299697497.602.866.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Is sstate broken
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
X-List-Received-Date: Wed, 09 Mar 2011 19:05:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-03-09 at 11:42 -0700, Gary Thomas wrote:
> I updated to master (fab742bd4693ed3092690a20dd32d53fe27c3d4c) and tried again.
> I don't see any difference - the run using the sstate cache as a mirror
> seems to do all the same work as without.  Here's how I tested it.
> 
> * Build original tree
>    % POKYCONF=meta-cobra3530p60/conf . /tmp/poky-amltd/poky-init-build-env /local/p60_step1
>    ... adjust conf/local.conf
>    % bitbake amltd-console-image
> 
> * Rebuild, using previous result for SSTATE_MIRRORS
>    % POKYCONF=meta-cobra3530p60/conf . /tmp/poky-amltd/poky-init-build-env /local/p60_step2
>    ... adjust conf/local.conf
>    % bitbake amltd-console-image
> 
> The only difference between the two runs is enabling SSTATE_MIRRORS in local.conf
>    %  diff -u /local/p60_step?/conf/local.conf
>     --- /local/p60_step1/conf/local.conf    2011-03-09 08:28:18.266933061 -0700
>     +++ /local/p60_step2/conf/local.conf    2011-03-09 09:57:51.365932951 -0700
>     @@ -53,4 +53,7 @@
>      IMAGE_LINGUAS ?= "en-us"
> 
>      # Minimize feature set
>      DISTRO_FEATURES ?= "alsa"
>     +SSTATE_MIRRORS ?= "\
>     +file://.* file:///local/p60_step1/sstate-cache/"
> 
> The results seem to have gone through all the same steps (or nearly so).  The output
> from the runs is at
>    http://www.mlbassoc.com/poky/build.step1
>    http://www.mlbassoc.com/poky/build.step2
> 
> Comparing the two build trees:
>    % ls /local/p60_step1/tmp/work/*/*/temp/log.do_compile | wc
>      144     144   12521
>    % ls /local/p60_step2/tmp/work/*/*/temp/log.do_compile | wc
>      143     143   12427
>    % du -s /local/p60_step?
>    15229296        /local/p60_step1
>    15162760        /local/p60_step2
> 
> I know this procedure used to work (or at least close).  Am I doing
> something wrong?

You're not doing anything wrong and this is the same scenario I've been
testing with. After I'd fixed the origin problem it created a problem
with file urls containing globing. I managed to break the original patch
with the globing fix. The good news is the problem is simple and I've
pushed a fix.

It should work *much* better than you've seen above, not needing to
rerun many tasks so if its working it will be very obvious.

Cheers,

Richard




