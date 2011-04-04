Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 040DD4C8026D;
	Mon,  4 Apr 2011 07:59:06 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34Cwwrl016184;
	Mon, 4 Apr 2011 13:58:58 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15975-06; Mon,  4 Apr 2011 13:58:54 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34Cwq24016178
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 4 Apr 2011 13:58:53 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1301714584.git.bruce.ashfield@windriver.com>
References: <cover.1301714584.git.bruce.ashfield@windriver.com>
Date: Mon, 04 Apr 2011 13:58:49 +0100
Message-ID: <1301921929.24596.362.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] linux-yocto/meta: update kernel meta-data
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
X-List-Received-Date: Mon, 04 Apr 2011 12:59:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-04-01 at 23:26 -0400, Bruce Ashfield wrote:
> Richard,
> 
> patch 1 in this series is a re-send of a previous change, since
> it was still on the queue and it was worth keeping it in history
> in order with the second change.
> 
> The second patch addresses [YOCTO #945], and the patch itself
> has the following:
> 
> [ 
>   As part of the update to 2.6.37 existing configuration and
>   patches from the -stable kernel were left in place as a reminder
>   of features and configuration carry forward. A lot of these
>   reminders are no longer necessary and the kernel meta data
>   needs to be cleaned up to prepare for activities related to
>   newer kernels.
> 
>   Also in this meta update are configuration changes to allow
>   common_pc derived BSPs to have a clean baseline configuration.
> ]
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: zedd/kernel
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
> 
> Thanks,
>     Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> 
> 
> Bruce Ashfield (2):
>   linux-yocto/crownbay: update configuration
>   linux-yocto/meta: cleanup and streamline kernel meta data

Merged to master, thanks!

Richard


