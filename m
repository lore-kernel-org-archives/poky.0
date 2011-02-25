Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9DBB4C8090F
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 17:47:42 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1PNlceG019466;
	Fri, 25 Feb 2011 23:47:38 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19254-04; Fri, 25 Feb 2011 23:47:34 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1PNlWaH019400
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 25 Feb 2011 23:47:33 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <cover.1298677071.git.mark.hatle@windriver.com>
References: <cover.1298677071.git.mark.hatle@windriver.com>
Date: Fri, 25 Feb 2011 23:47:26 +0000
Message-ID: <1298677646.26736.1954.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Correct RPM related problems
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
X-List-Received-Date: Fri, 25 Feb 2011 23:47:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-25 at 17:39 -0600, Mark Hatle wrote:
> Correct 3 rpm related issues.  The first is a defect found when trying to
> install packages on the target.  Second on the use of prelink by RPM on the target.
> The third on how the rpm-dbg file was being generated.
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
> Mark Hatle (3):
>   rootfs_rpm: Fix rootfs generation using RPM packages
>   rpm: Fix rpm usage of prelink on the target
>   rpm: Fix rpm-dbg package split
> 
>  meta/classes/image-prelink.bbclass           |    2 +-
>  meta/classes/package_rpm.bbclass             |   15 +++++++++------
>  meta/classes/populate_sdk_rpm.bbclass        |   13 +++++++++++--
>  meta/classes/rootfs_rpm.bbclass              |    5 +++--
>  meta/recipes-devtools/prelink/prelink_git.bb |    8 +++++---
>  meta/recipes-devtools/rpm/rpm_5.4.0.bb       |    7 +++----
>  6 files changed, 32 insertions(+), 18 deletions(-)

Merged to master, thanks!

Richard




