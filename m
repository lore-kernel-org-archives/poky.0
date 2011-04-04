Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 610C24C8026D
	for <poky@pokylinux.org>; Mon,  4 Apr 2011 08:12:23 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34DCKA9016378;
	Mon, 4 Apr 2011 14:12:20 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15963-10; Mon,  4 Apr 2011 14:12:16 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34DCDLv016372
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 4 Apr 2011 14:12:14 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Qing He <qing.he@intel.com>
In-Reply-To: <cover.1301731242.git.qing.he@intel.com>
References: <cover.1301731242.git.qing.he@intel.com>
Date: Mon, 04 Apr 2011 14:12:12 +0100
Message-ID: <1301922732.24596.363.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: [PATCH 0/1] fix the MACHINE_ARCH
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
X-List-Received-Date: Mon, 04 Apr 2011 13:12:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-04-02 at 16:03 +0800, Qing He wrote:
> From: Qing He <qing.he@intel.com>
> 
> This small patch mangles all machine names that contains a '-',
> examples are "qemux86-64" and "mpc8135e-rdb".
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: qhe/fix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix
> 
> Thanks,
>     Qing He <qing.he@intel.com>
> ---
> 
> 
> Qing He (1):
>   bitbake.conf: fix MACHINE_ARCH

Merged to master, thanks!

Richard


