Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E2BF4C80050
	for <poky@yoctoproject.org>; Sun,  6 Mar 2011 07:29:05 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p26DT2h1025227;
	Sun, 6 Mar 2011 13:29:02 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25059-03; Sun,  6 Mar 2011 13:28:58 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p26DSna5025221
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 6 Mar 2011 13:28:53 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
In-Reply-To: <cover.1299354907.git.sgw@linux.intel.com>
References: <cover.1299354907.git.sgw@linux.intel.com>
Date: Sun, 06 Mar 2011 05:28:45 -0800
Message-ID: <1299418126.17567.3001.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [OE-core] [PATCH 0/2] 2 Dependency Fixes for RC2
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
X-List-Received-Date: Sun, 06 Mar 2011 13:29:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-03-05 at 11:56 -0800, Saul Wold wrote:
> From: Saul Wold <sgw@linux.intel.com>
> 
> These to missing Dependencies showed up on a recent
> RC2 build
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: distro/oe-core
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/oe-core
> 
> Thanks,
>     Saul Wold <sgw@linux.intel.com>
> ---
> 
> 
> Saul Wold (2):
>   elfutils: add bzip2 to DEPENDS
>   util-macros: add libgpg-error to DEPENDS list
> 
>  meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    2 +-
>  .../xorg-util/util-macros_1.11.0.bb                |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Merged into OE-Core master and Poky master, thanks.

Cheers,

Richard


