Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FD7AE00746
	for <poky@yoctoproject.org>; Sat, 12 May 2012 00:34:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4C7YsXg031905;
	Sat, 12 May 2012 08:34:54 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18512-09; Sat, 12 May 2012 08:34:48 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4C7YjfF031899
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 12 May 2012 08:34:46 +0100
Message-ID: <1336808085.2494.243.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Sat, 12 May 2012 08:34:45 +0100
In-Reply-To: <4FADA8C4.6020605@mlbassoc.com>
References: <4FADA8C4.6020605@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Stuck fetching latest Yocto kernel?
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
X-List-Received-Date: Sat, 12 May 2012 07:34:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-05-11 at 18:03 -0600, Gary Thomas wrote:
> This task has been stuck for ~12 hours now
>    0: linux-yocto-3.0.24+git2+34e0d2b4b4e9778b31f9ea99ca43f0dc71a7ee23_2+8fd5a8eb4067c7032389e82d54f0e54e1e27f78c-r4 do_fetch (pid 4665)
> 
> Is something stuck?

There was a DDOS attack against servers in the same location at the
Yocto Project servers yesterday which causes a number of problems. I
suspect that this may have caused it to hang :(

Cheers,

Richard




