Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 25B374C80044
	for <poky@yoctoproject.org>; Sun,  7 Nov 2010 14:42:11 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA7Kg80n009539;
	Sun, 7 Nov 2010 20:42:08 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06936-06; Sun,  7 Nov 2010 20:42:04 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA7KfuQt009523
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 7 Nov 2010 20:42:01 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D190FD631@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D190FD631@shsmsx502.ccr.corp.intel.com>
Date: Sun, 07 Nov 2010 20:41:35 +0000
Message-ID: <1289162495.28481.16096.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PULL] two sstate fixes
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
X-List-Received-Date: Sun, 07 Nov 2010 20:42:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-11-05 at 15:53 +0800, Tian, Kevin wrote:
> meta/classes/package.bbclass |    1 +
>  meta/conf/distro/poky.conf   |    2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> commit bb9d4efa4076cfcf0998ecafb6d6b0969b97d224
> Author: Kevin Tian <kevin.tian@intel.com>
> Date:   Fri Nov 5 15:16:50 2010 +0800
> 
>     poky.conf: add PWD to BB_HASHBASE_WHITELIST
> 
>     Without doing this I can't reuse prebuilts generated from one directory in another
>     build directory which is really not comfortable for developers. Due to difference
>     on PWD variable, base hash becomes different for every sstate package.
> 
>     So here PWD is added to the hase base whitelist, which makes most prebuilts reusable
>     now in a different build directory. However there still remains one issue about
>     do_populate_sysroot sstate package. Absolute path is encoded in this task which
>     then blocks reuse on them. Perhaps we need some redesign for do_populate_sysroot into
>     two stages, with all absolute path related operations moved to the 2nd stage. This
>     way then the 1st stage can be reused.

>     Partially fix [BUGID #522]
> 
>     Signed-off-by Kevin Tian <kevin.tian@intel.com>
> 
> commit 599ccdfa9d53e43fb2e44fdfd57de5d91868428b
> Author: Kevin Tian <kevin.tian@intel.com>
> Date:   Tue Oct 26 15:54:43 2010 +0800
> 
>     package.bbclass: make sure 'sysroots' created before lockfile
> 
>     package sstate requires a lock under sysroots/, which however may not be
>     created when sstate_setscene functions are executed and then causes failures.
>     here we make sure 'sysroots' created before do_package_setscene is executed.
> 
>     Signed-off-by: Kevin Tian <kevin.tian@intel.com>
> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Good catches, I've merged these, thanks!

You're right btw, we shouldn't be using hardcoded paths and we should
fix that. Can you confirm you were using staging packages from a recent
poky build though (0.9 release at least) as there were some bugs fixed
in that area coming up to release.

Cheers,

Richard


