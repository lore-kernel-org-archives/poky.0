Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A5164C80053
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 11:53:45 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1AHrjdq023097;
	Thu, 10 Feb 2011 17:53:45 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22465-10; Thu, 10 Feb 2011 17:53:41 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1AHrZkk023091
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 10 Feb 2011 17:53:38 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <2b62c0d3109b48892d1664778cf52d72ee013096.1297312726.git.dvhart@linux.intel.com>
References: <cover.1297312726.git.dvhart@linux.intel.com>
	<2b62c0d3109b48892d1664778cf52d72ee013096.1297312726.git.dvhart@linux.intel.com>
Date: Thu, 10 Feb 2011 17:53:28 +0000
Message-ID: <1297360408.20543.5709.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] xkeyboard-config: make depend on intltool-native
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
X-List-Received-Date: Thu, 10 Feb 2011 17:53:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-09 at 20:39 -0800, Darren Hart wrote:
> From: Darren Hart <dvhart@linux.intel.com>
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dvhart/build
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/build
> 
> The xkeyboard-config listed intltool as a dependency, when in fact
> it requires intltool-native in order to complete the do_configure
> task.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Saul Wold <sgw@linux.intel.com>
> ---
>  .../xorg-lib/xkeyboard-config_2.1.bb               |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)

Merged to master, thanks.

Richard


