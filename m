Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70B604C80053;
	Wed,  9 Feb 2011 05:17:22 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19BHH56031505;
	Wed, 9 Feb 2011 11:17:17 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31160-07; Wed,  9 Feb 2011 11:17:13 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19BHCrS031499
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 9 Feb 2011 11:17:12 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1297232632.git.bruce.ashfield@windriver.com>
References: <cover.1297232632.git.bruce.ashfield@windriver.com>
Date: Wed, 09 Feb 2011 11:17:10 +0000
Message-ID: <1297250230.1395.6358.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/3] linux: factor dts/dtc/dtb handling into a specific include
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
X-List-Received-Date: Wed, 09 Feb 2011 11:17:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-09 at 01:27 -0500, Bruce Ashfield wrote:
> Richard/Saul,
> 
> This fixes BUGID 610, and kicks off a bit of cleaning with the various
> kernel include files. Patch 1/3 says it all:
> 
> [
> The powerpc linux-yocto kernels were not creating dtb images
> in the deploy directories. This was due to two problems:
> 
>   - the dtb generation rules were not being configured
>   - the boards were not specifying a device tree in their config
> 
> This change addresses the first point by factoring out the
> dtb generation routines into a new include that can be used by
> multiple recipes.
> ]
> 
> With these changes I've built and generated a dtb for the 
> mpc8315-rdb.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: zedd/dtb
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/dtb

Looks good, merged to master, thanks.

Richard


