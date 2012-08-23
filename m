Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08FC4E01404
	for <poky@yoctoproject.org>; Thu, 23 Aug 2012 00:30:03 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-112-181.range81-153.btcentralplus.com
	[81.153.112.181]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id AD27960E52
	for <poky@yoctoproject.org>; Thu, 23 Aug 2012 08:29:57 +0100 (BST)
Message-ID: <5035DBF4.2020201@r-finger.com>
Date: Thu, 23 Aug 2012 08:29:56 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <503550B4.6060708@gmail.com>
In-Reply-To: <503550B4.6060708@gmail.com>
Subject: Re: do_fetch error with gcc-cross-initial_4.7
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Aug 2012 07:30:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 22/08/12 22:35, Florin wrote:
> ERROR: Function failed: Fetcher failure for URL:
> 'git://github.com/mirrors/gcc.git;branch=gcc-4_7-branch;protocol=git'.
> Unable to fetch URL from any source.
> 
> 
> After the build stops with this error, retrying the bitbake command to
> produce the rootfs fetches gcc successfully and gcc (and the rest of the
> packages) is compiled just fine.
> Is there anybody else seeing this behavior?

FWIW, over the last few days I have seen intermittent fetch failures
from various packages that pull source from github; they pretty much
always go away on the next attempt; I assume it's github's fault.

Tomas

