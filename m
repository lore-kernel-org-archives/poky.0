Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC35B4C8009D
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 16:16:19 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FLGGJj024644;
	Tue, 15 Mar 2011 21:16:16 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24538-02; Tue, 15 Mar 2011 21:16:12 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FLG5gj024638
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Mar 2011 21:16:08 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <cover.1300176847.git.lianhao.lu@intel.com>
References: <cover.1300176847.git.lianhao.lu@intel.com>
Date: Tue, 15 Mar 2011 21:15:56 +0000
Message-ID: <1300223756.30423.1842.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fixing do_rootfs_ipk failure
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
X-List-Received-Date: Tue, 15 Mar 2011 21:16:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 16:15 +0800, Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> This patch fixes Bug #870. It removes the duplicated values in PACKAGE_ARCHS which would results an error in opkg-cl.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: llu/bug870
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug870
> 
> Thanks,
>     Lianhao Lu <lianhao.lu@intel.com>
> ---
> 
> 
> Lianhao Lu (1):
>   package_ipk.bbclass: Remove the duplication in PACKAGE_ARCHS.
> 
>  meta/classes/package_ipk.bbclass |   16 ++++++++++++++--
>  1 files changed, 14 insertions(+), 2 deletions(-)

Whilst this patch is good, it papers over the underlying problem as that
variable should never have duplicates in it. For that reason I don't
want to merge it but fix that issue instead. There are two things we
should do here:

a) Merge a fix to remove the duplication (I've done this with a quick
hacky workaround and proposed a better one on the OE Core list as it
needs discussion)
b) Add a sanity test for the PACKAGE_ARCHS variable to detect this
problem in the future.

Cheers,

Richard


