Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC9B04C805A1
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 14:48:22 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1SKmLE6028260;
	Mon, 28 Feb 2011 20:48:21 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28221-01; Mon, 28 Feb 2011 20:48:17 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1SKmE51028254
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 28 Feb 2011 20:48:14 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <cover.1298922394.git.mark.hatle@windriver.com>
References: <cover.1298922394.git.mark.hatle@windriver.com>
Date: Mon, 28 Feb 2011 20:48:00 +0000
Message-ID: <1298926080.26736.7860.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix SDK construction
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
X-List-Received-Date: Mon, 28 Feb 2011 20:48:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-28 at 13:50 -0600, Mark Hatle wrote:
> There was a race condition caused by the absense of a lock during SDK
> creation.  Bug 776.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: mhatle/rpm
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/rpm
> 
> Thanks,
>     Mark Hatle <mark.hatle@windriver.com>
> ---
> 
> 
> Mark Hatle (1):
>   populate_sdk_rpm.bbclass: Add the necessary solvedb lock
> 
>  meta/classes/populate_sdk_rpm.bbclass |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)

Merged to master, thanks.

Will also be cherry-picked for the release branch.

Cheers,

Richard


