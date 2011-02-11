Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 18F394C8006D
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 08:09:47 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1BE9kbh001496;
	Fri, 11 Feb 2011 14:09:46 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01266-04; Fri, 11 Feb 2011 14:09:42 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1BE9bUc001490
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 11 Feb 2011 14:09:38 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Zhai Edwin <edwin.zhai@intel.com>
In-Reply-To: <cover.1297432560.git.edwin.zhai@intel.com>
References: <cover.1297432560.git.edwin.zhai@intel.com>
Date: Fri, 11 Feb 2011 14:09:34 +0000
Message-ID: <1297433374.20543.10587.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix sstate error
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
X-List-Received-Date: Fri, 11 Feb 2011 14:09:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-11 at 22:01 +0800, Zhai Edwin wrote:
> From: Zhai Edwin <edwin.zhai@intel.com>
> 
> RP,
> Current sstate's fetch code doesn't reflect latest fetcher changes, so old
> fetch style cause exception and fail silently. This patch fix it.

I've merged the fix to master, thanks.

> Another issue is "import xxx" in python function from sstate.bbclass can only
> sit in the head of the function, else have UnboundLocalError: "local variable
> XXX referenced before assignment".
>
> We don't know if it is a known limitation of *.bbclass or some potential bug.
> Can you give some comments?

Good question. The import should really always be at the top of the code
block in question so I think its a python constraint, not a .bbclass
one...

Cheers,

Richard








