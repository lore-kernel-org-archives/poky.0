Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 724B84C81003
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 03:30:56 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBU9Usnh001227; Thu, 30 Dec 2010 09:30:55 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id TKfr0gMKeTbj; Thu, 30 Dec 2010 09:30:54 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBU9Uoif001224
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 30 Dec 2010 09:30:52 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <cover.1293616099.git.ke.yu@intel.com>
References: <cover.1293616099.git.ke.yu@intel.com>
Date: Thu, 30 Dec 2010 09:29:11 +0000
Message-ID: <1293701351.17519.9932.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] check if lockfile is writable (bug 606 patch V2)
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
X-List-Received-Date: Thu, 30 Dec 2010 09:30:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-29 at 17:54 +0800, Yu Ke wrote:
> I've sent a patch for bug 606 before, which add sanity check for $DL_DIR.
> 
> After digging more, the root cause is hidden in bb.utils.lockfile(), so it
> is more general to add check there. hence comes out the V2 patch for bug606.
> please discard my V1 patch.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: kyu3/bug606-v2
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug606-v2
> 
> Thanks,
>     Yu Ke <ke.yu@intel.com>

Merged into master, thanks.

Richard


