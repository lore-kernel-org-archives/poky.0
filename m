Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5521B4C80BD8
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 10:11:58 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKGCGbb031261; Mon, 20 Dec 2010 16:12:16 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id TvN3Y-VHkKf7; Mon, 20 Dec 2010 16:12:16 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKGCBxA031239
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 16:12:13 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <cover.1292567626.git.ke.yu@intel.com>
References: <cover.1292567626.git.ke.yu@intel.com>
Date: Mon, 20 Dec 2010 16:10:28 +0000
Message-ID: <1292861428.25087.4661.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] SRC_URI checksum support v3
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
X-List-Received-Date: Mon, 20 Dec 2010 16:11:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-12-17 at 14:33 +0800, Yu Ke wrote:
> This patch add SRC_URI checksum support. With this patch,fetcher
> can verify the MD5 and SHA256 checksum of download src with the
> value defined in recipes SRC_URI.
> 
> This is the v3 patch with following changes compared with v2:
> - add configurable variable BB_STRICT_CHECKSUM to handle checksum missing case
>   if checksum is missing and BB_STRICT_CHECKSUM = "1", bitbake will fatal
> - add check to only verify checksum for protocol http/https/ftp/ftps, not
>   verify checksum for local file and other SCM
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: kyu3/srcuri-v3
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/srcuri-v3

I merged this, then realised there was a problem with subsequent builds
proceeding with corrupt files. I've pushed a fix for at least part of
that.

I'm wondering if we should rename the file to something like the
original name + ".corrupt" to make sure we don't use a known broken
file?

Cheers,

Richard


