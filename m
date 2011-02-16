Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7EB9E4C80A1D
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 10:13:37 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1GGDYbA011425;
	Wed, 16 Feb 2011 16:13:34 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10928-09; Wed, 16 Feb 2011 16:13:30 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1GGDPoh011418
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 16 Feb 2011 16:13:26 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <cover.1297871058.git.mark.hatle@windriver.com>
References: <cover.1297871058.git.mark.hatle@windriver.com>
Date: Wed, 16 Feb 2011 16:13:24 +0000
Message-ID: <1297872804.11289.258.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix rootfs construction
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
X-List-Received-Date: Wed, 16 Feb 2011 16:13:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-16 at 09:45 -0600, Mark Hatle wrote:
> The lttng-viewer package was pulling in the lttng-viewer-dev package.
> This caused a large number of -dev packages to be pulled into the rootfs.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: mhatle/lttng
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/lttng
> 
> Thanks,
>     Mark Hatle <mark.hatle@windriver.com>

Merged into master, thanks.

Richard


