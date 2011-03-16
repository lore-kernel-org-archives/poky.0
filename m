Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7F7F4C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 08:55:32 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GDtTvK003027;
	Wed, 16 Mar 2011 13:55:29 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02594-08; Wed, 16 Mar 2011 13:55:21 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GDtHDg003006
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 16 Mar 2011 13:55:17 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <3d39aad0f231d983c4eaa0d2cc09991fc62285fa.1300233983.git.dvhart@linux.intel.com>
References: <cover.1300233983.git.dvhart@linux.intel.com>
	<3d39aad0f231d983c4eaa0d2cc09991fc62285fa.1300233983.git.dvhart@linux.intel.com>
Date: Wed, 16 Mar 2011 13:40:49 +0000
Message-ID: <1300282849.30423.1877.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] formfactor: Assume HAVE_TOUCHSCREEN=0
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
X-List-Received-Date: Wed, 16 Mar 2011 13:55:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 17:08 -0700, Darren Hart wrote:
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dvhart/bernard/n450
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bernard/n450
> 
> Thanks,
>     Darren Hart <dvhart@linux.intel.com>
> ---
> 
> 
> Darren Hart (1):
>   formfactor: Assume HAVE_TOUCHSCREEN=0
> 
>  meta/recipes-bsp/formfactor/files/config |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Merged to master, thanks.

Richard




