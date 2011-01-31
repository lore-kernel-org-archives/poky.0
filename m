Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 218D64C810C1
	for <poky@pokylinux.org>; Mon, 31 Jan 2011 10:42:45 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VGik16006885; Mon, 31 Jan 2011 16:44:46 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 1-gbdiZWfvl7; Mon, 31 Jan 2011 16:44:46 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VGie6H006879
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 31 Jan 2011 16:44:42 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Tian <kevin.tian@intel.com>
In-Reply-To: <849307$bc9pl9@azsmga001.ch.intel.com>
References: <849307$bc9pl9@azsmga001.ch.intel.com>
Date: Mon, 31 Jan 2011 16:42:31 +0000
Message-ID: <1296492151.13501.13682.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@pokylinux.org
Subject: Re: [PATCH 0/1] fix unnecessary do_package rebuilds
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
X-List-Received-Date: Mon, 31 Jan 2011 16:42:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-31 at 14:25 +0800, Kevin Tian wrote:
> From: Kevin Tian <kevin.tian@intel.com>
> 
> This patch should fix recent master instability, that unnecessary do_package
> rebuilds are observed in incremental build. We tested that with this patch
> no undesired rebuild if no any change.
> 
> There's one another sstate bug related to PACKAGE_CLASSES, which will be 
> discussed in seperate thread.
> 
> We're still testing whether this fix makes final do_populate_sdk error
> disappearing (or hidden...)
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: tk/master1
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master1
> 
> Thanks,
>     Kevin Tian <kevin.tian@intel.com>

Merged into master, thanks.

Richard


