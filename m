Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A4154C80AB9
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:46:22 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IGkKl1009015;
	Fri, 18 Mar 2011 16:46:20 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08749-06; Fri, 18 Mar 2011 16:46:16 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IGkBwC009008
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 16:46:12 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1300455487.git.josh@linux.intel.com>
References: <cover.1300455487.git.josh@linux.intel.com>
Date: Fri, 18 Mar 2011 16:45:55 +0000
Message-ID: <1300466755.30423.2207.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Sanity check for duplicate PACKAGE_ARCHS
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
X-List-Received-Date: Fri, 18 Mar 2011 16:46:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 13:41 +0000, Joshua Lock wrote:
> From: Joshua Lock <josh@linux.intel.com>
> 
> I have had some pain this morning caused by duplicated entries in my
> PACKAGE_ARCHS variable. After Richard helped me debug this he suggest we
> add a sanity check for this issue.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/bernard
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/bernard
> 
> Thanks,
>     Joshua Lock <josh@linux.intel.com>
> ---
> 
> 
> Joshua Lock (1):
>   sanity.bbclass: check for duplicates in PACKAGE_ARCHS
> 
>  meta/classes/sanity.bbclass |   13 +++++++++++++
>  1 files changed, 13 insertions(+), 0 deletions(-)

Merged into master, not sure this will make bernard at this point but
its good to have the check.

Cheers,

Richard



