Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 965284C80FA8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 09:28:03 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBGFS1cF021525;
	Thu, 16 Dec 2010 15:28:01 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20934-10; Thu, 16 Dec 2010 15:27:56 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBGFRsiV021519
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 16 Dec 2010 15:27:54 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Jiajun Xu <jiajun.xu@intel.com>
In-Reply-To: <cover.1292486693.git.jiajun.xu@intel.com>
References: <cover.1292486693.git.jiajun.xu@intel.com>
Date: Thu, 16 Dec 2010 15:27:47 +0000
Message-ID: <1292513267.26558.4003.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fixing for [BUGID #594]. Check DISPLAY is set in sanity.bbclass
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
X-List-Received-Date: Thu, 16 Dec 2010 15:28:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 16:04 +0800, Jiajun Xu wrote:
> [BUGID #594] Fixing bug #594, checking in sanity.bbclass if DISPLAY is set 
> when IMAGETEST is set to qemu.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: jxu49/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master
> 
> Thanks,
>     Jiajun Xu <jiajun.xu@intel.com>
> ---
> 
> 
> Jiajun Xu (1):
>   sanity.bbclass: Check if DISPLAY is set when IMAGETEST is set
> 
>  meta/classes/sanity.bbclass |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)

Merged into master, thanks!

Richard


