Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 478AB4C80A8A
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 11:56:10 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1LHu8D4019366;
	Mon, 21 Feb 2011 17:56:09 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19075-05-2; Mon, 21 Feb 2011 17:56:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1LHtkPu019230
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 21 Feb 2011 17:55:46 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Nitin A Kamble <nitin.a.kamble@intel.com>
In-Reply-To: <cover.1298053136.git.nitin.a.kamble@intel.com>
References: <cover.1298053136.git.nitin.a.kamble@intel.com>
Date: Mon, 21 Feb 2011 17:55:43 +0000
Message-ID: <1298310943.11289.3189.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] avoid absolute pathnames for general utils in libtool scripts
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
X-List-Received-Date: Mon, 21 Feb 2011 17:56:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-18 at 10:21 -0800, Nitin A Kamble wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> 
> The builthost specific absolute pathnames were not working on other hosts
> with the nativesdk libtool package. This commit fixes that.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: nitin/misc
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc
> 
> Thanks,
>     Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
> 
> 
> Nitin A Kamble (1):
>   libtool: avoid absolute pathnames of general utils
> 
>  meta/recipes-devtools/libtool/libtool-cross_2.4.bb |    2 +-
>  .../recipes-devtools/libtool/libtool-native_2.4.bb |    2 +-
>  .../libtool/libtool-nativesdk_2.4.bb               |    2 +-
>  meta/recipes-devtools/libtool/libtool.inc          |    3 +-
>  .../avoid_absolute_paths_for_general_utils.patch   |   37 ++++++++++++++++++++
>  meta/recipes-devtools/libtool/libtool_2.4.bb       |    2 +-
>  6 files changed, 43 insertions(+), 5 deletions(-)
>  create mode 100644 meta/recipes-devtools/libtool/libtool/avoid_absolute_paths_for_general_utils.patch

Merged to master, thanks.

Richard



