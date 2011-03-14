Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 416414C80AAE
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 16:11:39 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2ELBave007298;
	Mon, 14 Mar 2011 21:11:36 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06871-09; Mon, 14 Mar 2011 21:11:33 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2ELBVxg007292
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 14 Mar 2011 21:11:31 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Liping Ke <liping.ke@intel.com>
In-Reply-To: <cover.1300095446.git.liping.ke@intel.com>
References: <cover.1300095446.git.liping.ke@intel.com>
Date: Mon, 14 Mar 2011 21:11:25 +0000
Message-ID: <1300137085.30423.597.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] adt: fix ppc/powerpcc naming bug
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
X-List-Received-Date: Mon, 14 Mar 2011 21:11:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-14 at 17:39 +0800, Liping Ke wrote:
> From: Liping Ke <liping.ke@intel.com>
> 
> for ipk files on ppc, the name should be powerpc. So does the
> environment file name. For the tar file name, it should be ppc.
> This patch is to correct the arch/machine name pair.
> Related Bug#864
> 
> 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lke/fix-name
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/fix-name
> 
> Thanks,
>     Liping Ke <liping.ke@intel.com>
> ---
> 
> 
> Liping Ke (1):
>   adt: fix ppc/powerpcc naming bug
> 
>  .../adt-installer/scripts/adt_installer_internal   |    6 ++++--
>  .../installer/adt-installer/scripts/data_define    |    2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)

Merged into OE-Core and Poky master.

Cheers,

Richard


