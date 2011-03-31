Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A1ED4C80A6A
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 15:59:00 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2VKwvKL032189;
	Thu, 31 Mar 2011 21:58:57 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31621-10; Thu, 31 Mar 2011 21:58:53 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2VKwnU0032183
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 31 Mar 2011 21:58:49 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Rifenbark <srifenbark@gmail.com>
In-Reply-To: <cover.1301495477.git.scott.m.rifenbark@intel.com>
References: <cover.1301495477.git.scott.m.rifenbark@intel.com>
Date: Thu, 31 Mar 2011 21:58:45 +0100
Message-ID: <1301605125.24596.212.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] [BUGID# 929] - [DOCS] Poky Reference Manual GPL Note
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
X-List-Received-Date: Thu, 31 Mar 2011 20:59:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-03-30 at 07:33 -0700, Scott Rifenbark wrote:
> From: Scott Rifenbark <scott.m.rifenbark@intel.com>
> 
> [BUGID# 929] - In chapter 2 where we talk about building images I added 
> a new note indicating that the user should not switch around using different
> GPL versions when trying to rebuild an image as it can cause dependency
> failures.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: srifenbark/poky-work
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/poky-work
> 
> Thanks,
>     Scott Rifenbark <scott.m.rifenbark@intel.com>
> ---
> 
> 
> Scott Rifenbark (1):
>   documentation/poky-ref-manual/usingpoky.xml:  [BUGID# 929] - Note
>     added warning about switching up GPL versions

Merged to master, thanks.

Richard


