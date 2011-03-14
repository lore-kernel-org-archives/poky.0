Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DF5A4C80AB0
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 16:11:59 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2ELBv5u007307;
	Mon, 14 Mar 2011 21:11:57 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06965-08; Mon, 14 Mar 2011 21:11:53 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2ELBnZO007301
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 14 Mar 2011 21:11:49 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dexuan Cui <dexuan.cui@intel.com>
In-Reply-To: <cover.1300093238.git.dexuan.cui@intel.com>
References: <cover.1300093238.git.dexuan.cui@intel.com>
Date: Mon, 14 Mar 2011 21:11:43 +0000
Message-ID: <1300137103.30423.598.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] oprofile: use timer interrupt mode for now
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
X-List-Received-Date: Mon, 14 Mar 2011 21:11:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-14 at 17:03 +0800, Dexuan Cui wrote:
> From: Dexuan Cui <dexuan.cui@intel.com>
> 
> Currently oprofile's event based interrupt mode doesn't work(Bug #828) in
> qemux86 and qemux86-64. We can use timer interrupt mode for now.
> 
> With this workaround, oprofile can work in qemux86 and qemux86-64.
> I tested in Ubuntu 10.04.
> 
> With this workaround, we can lower the priority of bug #828 and I'll continue
> to look into it.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dcui/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master
> 
> Thanks,
>     Dexuan Cui <dexuan.cui@intel.com>
> ---
> 
> 
> Dexuan Cui (1):
>   poky-qemu-internal: force oprofile into using timer interrupt mode
>     for qemux86/qemux86-64 for now
> 
>  scripts/poky-qemu-internal |    6 ++++++
>  1 files changed, 6 insertions(+), 0 deletions(-)

Merged into OE-Core and Poky master.

Cheers,

Richard



