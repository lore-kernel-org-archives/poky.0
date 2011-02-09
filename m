Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CC904C80053
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 05:28:17 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19BSFkB031692;
	Wed, 9 Feb 2011 11:28:15 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31508-05; Wed,  9 Feb 2011 11:28:10 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19BS8J7031686
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 9 Feb 2011 11:28:08 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jessica Zhang <jessica.zhang@intel.com>
In-Reply-To: <cover.1297194944.git.jessica.zhang@intel.com>
References: <cover.1297194944.git.jessica.zhang@intel.com>
Date: Wed, 09 Feb 2011 11:28:06 +0000
Message-ID: <1297250886.1395.6450.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Change 32bit SDK to use i686 instead of i586
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
X-List-Received-Date: Wed, 09 Feb 2011 11:28:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-08 at 11:55 -0800, Jessica Zhang wrote:
> Since now we can build SDK packages for i686, change i586 to i686 to support 32bit SDK
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: jzhang/i686
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jzhang/i686
> 
> Thanks,
>     Jessica Zhang <jessica.zhang@intel.com>

Merged into master, thanks.

Richard


