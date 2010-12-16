Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96D494C810AC
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 09:41:16 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFgT0i030636; Thu, 16 Dec 2010 15:42:29 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id LPmxsN+gqY-s; Thu, 16 Dec 2010 15:42:29 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFgOVa030629
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 16 Dec 2010 15:42:26 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Tian <kevin.tian@intel.com>
In-Reply-To: <5b55a1$ivdmfp@fmsmga002.fm.intel.com>
References: <5b55a1$ivdmfp@fmsmga002.fm.intel.com>
Date: Thu, 16 Dec 2010 15:40:56 +0000
Message-ID: <1292514056.26558.4024.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: paul.eggleton@linux.intel.com, poky@pokylinux.org
Subject: Re: [PATCH 0/3] miscellaneous sstate fixes
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
X-List-Received-Date: Thu, 16 Dec 2010 15:41:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 17:02 +0800, Kevin Tian wrote:
> The major fix in this patchset is about linux-yocto, which is the rest blocker from
> a complete sstate reuse (it further impacts task-poky-boot and the build time is
> long). However this fix will cause one different behavior. After wiping out DATETIME
> from deps, now the kernel image name will be same as the one extracted from sstate
> package after reusing it. I think this should be fine since at release time DATETIME
> will be removed anyway
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: tk/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master
> 
> Thanks,
>     Kevin Tian <kevin.tian@intel.com>

I've taken two of these, thanks. The other I've made some changes to as
discussed in separate emails.

Cheers,

Richard


