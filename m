Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1F74D4C80AAD
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 08:55:42 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GDtbbn003041;
	Wed, 16 Mar 2011 13:55:37 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02929-02-2; Wed, 16 Mar 2011 13:55:29 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GDtKDW003009
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 16 Mar 2011 13:55:20 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kang Kai <kai.kang@windriver.com>
In-Reply-To: <cover.1300258088.git.kai.kang@windriver.com>
References: <cover.1300258088.git.kai.kang@windriver.com>
Date: Wed, 16 Mar 2011 13:45:49 +0000
Message-ID: <1300283149.30423.1880.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] slang: export INST_LIB_DIR to fix compile problems
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
X-List-Received-Date: Wed, 16 Mar 2011 13:55:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-03-16 at 15:06 +0800, Kang Kai wrote:
> From: Kang Kai <kai.kang@windriver.com>
> 
> Hi Soul,
> 
> Thanks for your meticulous help, please help me to check it again.
> Thanks you!
> 
> When bitbake slang/slsh, it links to building machine's libraries by using INST_LIB_DIR.
> Export INST_LIB_DIR in do_install to fix the cross compile problems.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: kangkai/distro01
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro01
> 
> Thanks,
>     Kang Kai <kai.kang@windriver.com>
> ---
> 
> 
> Kang Kai (1):
>   slang: export INST_LIB_DIR to fix compile problems

Merged to master, thanks.

Richard


