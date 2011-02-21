Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 82C724C80546
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 11:55:00 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1LHsuGr019175;
	Mon, 21 Feb 2011 17:54:56 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19027-03; Mon, 21 Feb 2011 17:54:52 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1LHsoU3019169
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 21 Feb 2011 17:54:51 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Liping Ke <liping.ke@intel.com>
In-Reply-To: <cover.1298324963.git.liping.ke@intel.com>
References: <cover.1298324963.git.liping.ke@intel.com>
Date: Mon, 21 Feb 2011 17:54:47 +0000
Message-ID: <1298310887.11289.3186.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Liping Ke <liping.ke@intel.coom>, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] ADT: Fix script check_result error
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
X-List-Received-Date: Mon, 21 Feb 2011 17:55:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-22 at 05:54 +0800, Liping Ke wrote:
> From: Liping Ke <liping.ke@intel.com>
> 
> When meeting errors, the return number can't be directly compared with
> "-1". The correct way is to compare it with 0. If the result is a non-zero
> number, we meet error. This patch is for fixing [BUGID #742]
> 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lke/adt-fix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/adt-fix
> 
> Thanks,
>     Liping Ke <liping.ke@intel.com>
> ---
> 
> 
> Liping Ke (1):
>   ADT: Fix check_result script cond comparison bug
> 
>  .../installer/adt-installer/scripts/util           |    8 ++++----
>  1 files changed, 4 insertions(+), 4 deletions(-)

Merged to master, thanks.

Richard


