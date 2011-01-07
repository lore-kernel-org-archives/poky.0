Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A9CB4C810AF
	for <poky@pokylinux.org>; Fri,  7 Jan 2011 05:12:55 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p07BEVBQ008227; Fri, 7 Jan 2011 11:14:31 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id bUZKB7bdrGjr; Fri,  7 Jan 2011 11:14:31 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p07BERoh008204
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 7 Jan 2011 11:14:29 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Tian <kevin.tian@intel.com>
In-Reply-To: <b7da2f$q2nuje@fmsmga001.fm.intel.com>
References: <b7da2f$q2nuje@fmsmga001.fm.intel.com>
Date: Fri, 07 Jan 2011 11:12:20 +0000
Message-ID: <1294398740.17519.26811.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@pokylinux.org
Subject: Re: [PATCH 0/2] sstate relocation fixes - v2
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
X-List-Received-Date: Fri, 07 Jan 2011 11:12:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-07 at 14:27 +0800, Kevin Tian wrote:
> this is basically an update to v1 about flex-native and bison-native, by
> moving the wrapper creation to do_install
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: tk/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master
> 
> Thanks,
>     Kevin Tian <kevin.tian@intel.com>
> ---
> 
> 
> Kevin Tian (2):
>   flex-native: create a wrapper script for sstate installation
>   bison-native: create a wrapper script for sstate installation
> 
>  meta/recipes-devtools/bison/bison_2.4.3.bb |    8 +++++++-
>  meta/recipes-devtools/flex/flex.inc        |    3 +++
>  meta/recipes-devtools/flex/flex_2.5.35.bb  |    2 +-
>  3 files changed, 11 insertions(+), 2 deletions(-)

Merged into master although there were three changes there (I agreed
with the perl one too and thought we'd merged it already but it would
seem not).

Cheers,

Richard


