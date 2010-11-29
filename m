Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6E5D4C811EC
	for <poky@pokylinux.org>; Mon, 29 Nov 2010 05:52:14 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATBqC6M031874;
	Mon, 29 Nov 2010 11:52:12 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31300-10; Mon, 29 Nov 2010 11:52:08 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATBq18t031867
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 29 Nov 2010 11:52:04 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Kevin Tian <kevin.tian@intel.com>
In-Reply-To: <849307$ahpr75@azsmga001.ch.intel.com>
References: <849307$ahpr75@azsmga001.ch.intel.com>
Date: Mon, 29 Nov 2010 03:51:46 -0800
Message-ID: <1291031506.14277.896.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: [PATCH 0/4] Miscellaneous fixes on master
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
X-List-Received-Date: Mon, 29 Nov 2010 11:52:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-29 at 10:28 +0800, Kevin Tian wrote:
> This fixes several errors I've seen on latest master.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: tk/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Thanks Kevin, I've merged to master. I'd already pushed a similar fix to
fonts-alias.

Cheers,

Richard


