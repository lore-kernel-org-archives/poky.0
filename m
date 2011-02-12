Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4349D4C8007E
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 18:35:40 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1C0ZVHt013788;
	Sat, 12 Feb 2011 00:35:31 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13674-02; Sat, 12 Feb 2011 00:35:27 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1C0ZNN2013779
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 12 Feb 2011 00:35:26 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <cover.1297455890.git.mark.hatle@windriver.com>
References: <cover.1297455890.git.mark.hatle@windriver.com>
Date: Sat, 12 Feb 2011 00:35:20 +0000
Message-ID: <1297470920.2071.35.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix the way busybox splits
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
X-List-Received-Date: Sat, 12 Feb 2011 00:35:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-11 at 14:26 -0600, Mark Hatle wrote:
> In order to resolve the issue of more then one initscript per split package,
> change the way busybox splits.  We have added two additional packages
> busybox-udhcpc and busybox-syslog.. Both of which are now "recommended"
> to ensure that if available, they are installed.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: mhatle/busybox
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/busybox
> 
> Thanks,
>     Mark Hatle <mark.hatle@windriver.com>

Merged into master, thanks.

Richard


