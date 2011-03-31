Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6BFB64C80ACB
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 16:00:54 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2VL0pL8032374;
	Thu, 31 Mar 2011 22:00:51 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32204-03; Thu, 31 Mar 2011 22:00:47 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2VL0jIn032368
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 31 Mar 2011 22:00:46 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Rifenbark <srifenbark@gmail.com>
In-Reply-To: <cover.1301597020.git.scott.m.rifenbark@intel.com>
References: <cover.1301597020.git.scott.m.rifenbark@intel.com>
Date: Thu, 31 Mar 2011 22:00:42 +0100
Message-ID: <1301605242.24596.214.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] [DOCS] BSP Guide tarball creation fix
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
X-List-Received-Date: Thu, 31 Mar 2011 21:00:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-03-31 at 13:45 -0500, Scott Rifenbark wrote:
> From: Scott Rifenbark <scott.m.rifenbark@intel.com>
> 
> For some reason the PDF version of this manual was not being included
> in the tarball created by the Makefile.  I fixed this. 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: srifenbark/bsp-work
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/bsp-work
> 
> Thanks,
>     Scott Rifenbark <scott.m.rifenbark@intel.com>
> ---
> 
> 
> Scott Rifenbark (1):
>   documentation/bsp-guide/Makefile:  Updated to include PDF in tarball

Merged to master, thanks.

Richard


