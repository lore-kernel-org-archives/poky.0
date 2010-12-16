Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FFA14C810AC
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 11:36:51 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGHc5uJ004476; Thu, 16 Dec 2010 17:38:05 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 3MEuo4W0NGBm; Thu, 16 Dec 2010 17:38:05 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGHc0R3004465
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 16 Dec 2010 17:38:02 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1292516982.git.josh@linux.intel.com>
References: <cover.1292516982.git.josh@linux.intel.com>
Date: Thu, 16 Dec 2010 17:36:31 +0000
Message-ID: <1292520991.26558.4219.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] WIP Make 3.82 fixes for master
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
X-List-Received-Date: Thu, 16 Dec 2010 17:36:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 16:29 +0000, Joshua Lock wrote:
> Inspired by my recent Laverne patch set this pull request contains patches
> towards making Poky master buildable with GNU Make 3.82.
> 
> There are still some issues but since I'm away from my multi-core
> build machine I thought it best to share the patches, hopefully they are
> useful to others and I can finish up the work tomorrow/next week.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/make-382
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/make-382
> 
> Thanks,
>     Joshua Lock <josh@linux.intel.com>

Merged into master, thanks.

Richard


