Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 530884C80053
	for <poky@lists.pokylinux.org>; Fri, 11 Feb 2011 15:54:54 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1BLsnfm007462;
	Fri, 11 Feb 2011 21:54:49 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06871-06; Fri, 11 Feb 2011 21:54:45 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1BLsgOK007456
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 11 Feb 2011 21:54:42 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D53FB64.501@mlbassoc.com>
References: <4D529954.4000505@mlbassoc.com>
	<1297346602.20543.4738.camel@rex>  <4D53FB64.501@mlbassoc.com>
Date: Fri, 11 Feb 2011 21:54:36 +0000
Message-ID: <1297461276.20543.11614.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Fetch problems with PREMIRRORS
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
X-List-Received-Date: Fri, 11 Feb 2011 21:55:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-02-10 at 07:51 -0700, Gary Thomas wrote:
> > Try not setting that variable at all, not setting it false. I suspect
> > there are two issues here:
> >
> > a) BB_NO_NETWORK is having an effect but the log messages are being
> >     swallowed...
> > b) "false" handling for the variable might not be working properly so
> >     leave it unset.
> >
> > We can fix those things but I'd like to confirm these are the problems
> > first.
> 
> Correct, it does seem to be the case.  When BB_NO_NETWORK="0",
> the fetcher works properly.  When set to "1", it fails, but
> no explicit error about why is generated, neither on the console
> nor in the log.do_fetch file.
> 
> I made this small change to check it out:
> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
> index ef9d75f..57c4f20 100644
> --- a/bitbake/lib/bb/fetch2/__init__.py
> +++ b/bitbake/lib/bb/fetch2/__init__.py
> @@ -395,6 +395,7 @@ def check_network_access(d, info = ""):
>       log remote network access, and error if BB_NO_NETWORK is set
>       """
>       if bb.data.getVar("BB_NO_NETWORK", d, True) == "1":
> +        bb.error("BB_NO_NETWORK is set, but the fetcher code attempted network access with the command %s" % info)
>           raise FetchError("BB_NO_NETWORK is set, but the fetcher code attempted network access with the command %s" % inf
>       else:
>           logger.debug(1, "Fetcher accessed the network with the command %s" % info)
> 
> This shows that this _is_ the error case, with the messages making it to
> the console and log file.  I can see that this exception is being thrown
> on line 886, but the reason is lost in the exception data & I'm unclear
> how to retrieve it and present it to the user.

This should be at least partly addressed with some of the recent commits
such as:

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=ea70c4362fdb81bc9467975c145c48196c45e3af

so the debug logs (with -D) at least show whats happening.

Not perfect but better at least...

Cheers,

Richard





