Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 805C2E00502
	for <poky@yoctoproject.org>; Thu, 29 Sep 2011 09:19:39 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8TGPtYq007238; Thu, 29 Sep 2011 17:25:55 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id DFYCQT-sYnxh; Thu, 29 Sep 2011 17:25:55 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8TGPm68007220
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 29 Sep 2011 17:25:51 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 29 Sep 2011 17:19:23 +0100
In-Reply-To: <4E8498FA.3000206@mlbassoc.com>
References: <4E8498FA.3000206@mlbassoc.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1317313171.12332.104.camel@ted>
Mime-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can't build for qemuppc
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
X-List-Received-Date: Thu, 29 Sep 2011 16:19:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-09-29 at 10:12 -0600, Gary Thomas wrote:
> This used to work:
> 
> $ bitbake core-image-sato
> Loading cache: 100% |####################################################################################| ETA:  00:00:00
> Loaded 1034 entries from dependency cache.
> 
> OE Build Configuration:
> BB_VERSION        = "1.13.3"
> TARGET_ARCH       = "powerpc"
> TARGET_OS         = "linux"
> MACHINE           = "qemuppc"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.0+snapshot-20110929"
> TUNE_FEATURES     = "m32 fpu-hard ppc603e"
> TARGET_FPU        = ""
> meta
> meta-yocto        = "master:e3c5d7a90ae179af0ac128ea4dfc1a5a6602c2e4"
> 
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'syslinux'
> ERROR: syslinux was skipped: incompatible with host powerpc-poky-linux
> ERROR: Required build target 'core-image-sato' has no buildable providers.
> Missing or unbuildable dependency chain was: ['core-image-sato', 'syslinux']
> 
> 
> What am I doing wrong?  How do I build an image to test with qemuppc,
> in particular I want to test 'web-webkit'?

I just checked here and this starts building fine. Something is pulling
"syslinux" into your build and that makes no sense as its x86 specific.
You need to figure out where that is coming from and I suspect your
local config or customisations.

Cheers,

Richard


