Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1F5A04C810AF
	for <poky@yoctoproject.org>; Fri,  7 Jan 2011 05:17:45 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p07BHpZr008319; Fri, 7 Jan 2011 11:17:51 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id BF4yI7PxWQbb; Fri,  7 Jan 2011 11:17:51 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p07BHmB5008303
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 7 Jan 2011 11:17:50 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <cover.1294381578.git.lianhao.lu@intel.com>
References: <cover.1294381578.git.lianhao.lu@intel.com>
Date: Fri, 07 Jan 2011 11:15:41 +0000
Message-ID: <1294398941.17519.26818.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Bug #645 fixing
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
X-List-Received-Date: Fri, 07 Jan 2011 11:17:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-07 at 14:29 +0800, Lianhao Lu wrote:
> Modified the function emit_var() in bitbake/lib/bb/data.py for Bug #645
> 
> 1. added "#" for multiple line comment
> 2. added " \" for multiple line shell variable.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: llu/bug645
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug645
> 
> Thanks,
>     Lianhao Lu <lianhao.lu@intel.com>
> ---
> 
> 
> Lianhao Lu (1):
>   bitbake/data.py: corrected the output for shell syntax.
> 
>  bitbake/lib/bb/data.py |    4 +++-
>  1 files changed, 3 insertions(+), 1 deletions(-)

Merged into Poky's master branch and applied to upstream bitbake too.

Cheers,

Richard


