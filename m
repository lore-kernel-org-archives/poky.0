Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C4F9F4C8006D
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 08:54:31 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1BEsVNt001984;
	Fri, 11 Feb 2011 14:54:31 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01796-03; Fri, 11 Feb 2011 14:54:26 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1BEsLgW001978
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 11 Feb 2011 14:54:21 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Zhai, Edwin" <edwin.zhai@intel.com>
In-Reply-To: <4D554AE5.2030402@intel.com>
References: <cover.1297432560.git.edwin.zhai@intel.com>
	<1297433374.20543.10587.camel@rex>  <4D554AE5.2030402@intel.com>
Date: Fri, 11 Feb 2011 14:54:17 +0000
Message-ID: <1297436057.20543.10739.camel@rex>
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
X-List-Received-Date: Fri, 11 Feb 2011 14:54:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-11 at 22:42 +0800, Zhai, Edwin wrote:
> Richard Purdie wrote:
> > Good question. The import should really always be at the top of the code
> > block in question so I think its a python constraint, not a .bbclass
> > one...
> >
> 
> Seems in-middle "import" is widely used in other *.py,
> See bitbake/lib/bb/fetch/ssh.py,
>     def go(self, url, urldata, d):
> ..........................
>         import commands
>         cmd = 'scp -B -r %s %s %s/' % (
>             port,
>             commands.mkarg(fr),
>             commands.mkarg(ldir)
>         )
> 
> I found only bb has such limitation:all the "import bb.xxx" are in the 
> head of function, and adding stuff before it will cause same problem. 
> Anything special for bb module?

Is it just specific to the way we hacked the fetch vs fetch2 switch in?

Also, are you saying this problem only happens in parsed python in
the .bb and .bbclass files or that it happens in the bitbake code in
general?

Cheers,

Richard


