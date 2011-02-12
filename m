Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 839244C800C0
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 18:36:58 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1C0apHb013818;
	Sat, 12 Feb 2011 00:36:51 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13488-06; Sat, 12 Feb 2011 00:36:47 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1C0ahrm013812
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 12 Feb 2011 00:36:43 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <cover.1297438842.git.mark.hatle@windriver.com>
References: <cover.1297438842.git.mark.hatle@windriver.com>
Date: Sat, 12 Feb 2011 00:36:40 +0000
Message-ID: <1297471000.2071.37.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] Revised the debug info patches...
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
X-List-Received-Date: Sat, 12 Feb 2011 00:36:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-11 at 09:44 -0600, Mark Hatle wrote:
> After talking with Richard a bit, I've revised the configuration of the
> debug info, patch 2 of 4.  1, 3 and 4 remain unchanged.
> 
> The primary difference is to change the naming from "debian style", and
> "fedora style" to a more accurate representation based on the GDB
> documentation and usage I recently found.  In addition to the simple
> name changing, the source code copying is now defined for both styles
> and simply places the code in /usr/src/debug.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: mhatle/debuginfo
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/debuginfo

I've taken patch 1 and 4, I'll leave 2 and 3 until after the weekend as
they need a little more review.

Cheers,

Richard


