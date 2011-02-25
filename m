Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A6BF4C8090C
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 09:39:17 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1PFdDHT012660;
	Fri, 25 Feb 2011 15:39:13 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12051-10; Fri, 25 Feb 2011 15:39:08 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1PFd4Pq012654
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 25 Feb 2011 15:39:05 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1298630947.git.josh@linux.intel.com>
References: <cover.1298630947.git.josh@linux.intel.com>
Date: Fri, 25 Feb 2011 15:38:59 +0000
Message-ID: <1298648339.26736.1174.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Misc fixes
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
X-List-Received-Date: Fri, 25 Feb 2011 15:39:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-25 at 10:52 +0000, Joshua Lock wrote:
> From: Joshua Lock <josh@linux.intel.com>
> 
> A couple of minor patches the first to fix a warning when parsing lexically
> incorrect recipes and the second removes a warning during the standard build.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/misc
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/misc
> 
> Thanks,
>     Joshua Lock <josh@linux.intel.com>
> ---
> 
> 
> Joshua Lock (2):
>   bitbake/codeparser: fix raising of ShellSyntaxError
>   dropbear: add SRC_URI checksums
> 
>  bitbake/lib/bb/codeparser.py                |    4 ++--
>  meta/recipes-core/dropbear/dropbear_0.52.bb |    3 +++
>  2 files changed, 5 insertions(+), 2 deletions(-)

Merged to master, thanks!

Richard


