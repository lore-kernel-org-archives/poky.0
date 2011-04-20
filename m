Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5191A4C8016A
	for <poky@yoctoproject.org>; Tue, 19 Apr 2011 20:18:52 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3K1IoJk011002;
	Wed, 20 Apr 2011 02:18:50 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10695-05; Wed, 20 Apr 2011 02:18:46 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3K1Ijvc010996
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 20 Apr 2011 02:18:45 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <cover.1303257574.git.dvhart@linux.intel.com>
References: <cover.1303257574.git.dvhart@linux.intel.com>
Date: Wed, 20 Apr 2011 02:18:32 +0100
Message-ID: <1303262313.5518.295.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] kernel-rt: fix build issues
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
X-List-Received-Date: Wed, 20 Apr 2011 01:18:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-04-19 at 17:02 -0700, Darren Hart wrote:
> From: Darren Hart <dvhart@linux.intel.com>
> 
> The linux-yocto-rt recipe wasn't building in master or bernard. This brings the
> recipe up to date with the linux-yocto* recipes and corrects the build failures.
> This patch should be applied to both bernard and master.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dvhart/bernard/rt
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bernard/rt
> 
> Thanks,
>     Darren Hart <dvhart@linux.intel.com>
> ---
> 
> 
> Darren Hart (1):
>   kernel-rt: use correct branch names and new git SRC_REV format

Merged to master, thanks.

Richard


