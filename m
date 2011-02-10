Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 612624C80053
	for <poky@lists.pokylinux.org>; Thu, 10 Feb 2011 08:03:35 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1AE3Ymm020245;
	Thu, 10 Feb 2011 14:03:34 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19789-08; Thu, 10 Feb 2011 14:03:30 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1AE3RDS020239
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 10 Feb 2011 14:03:27 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D529954.4000505@mlbassoc.com>
References: <4D529954.4000505@mlbassoc.com>
Date: Thu, 10 Feb 2011 14:03:22 +0000
Message-ID: <1297346602.20543.4738.camel@rex>
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
X-List-Received-Date: Thu, 10 Feb 2011 14:03:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-09 at 06:40 -0700, Gary Thomas wrote:
> Per Richard's suggestion, I have added this to my DISTRO.conf:
> 
> # Provide pre-staged sources
> PREMIRRORS = "\
> http://.*/.*   file:///work/misc/Poky/sources/ \n \
> https://.*/.*   file:///work/misc/Poky/sources/ \n \
> ftp://.*/.*   file:///work/misc/Poky/sources/ \n \
> bzr://.*/.*   file:///work/misc/Poky/sources/ \n \
> cvs://.*/.*   file:///work/misc/Poky/sources/ \n \
> git://.*/.*   file:///work/misc/Poky/sources/ \n \
> hg://.*/.*    file:///work/misc/Poky/sources/ \n \
> osc://.*/.*   file:///work/misc/Poky/sources/ \n \
> p4://.*/.*    file:///work/misc/Poky/sources/ \n \
> svk://.*/.*   file:///work/misc/Poky/sources/ \n \
> svn://.*/.*   file:///work/misc/Poky/sources/ \n"
> 
> The tree '/work/misc/Poky/sources' is a fully populated source
> cache.
> 
> This all works great as long as the needed sources are in
> the cache.  However, there seems to be no fallback if they
> are not present.  I get errors like this:
> | NOTE: fetch http://pokylinux.org/sources/git2_github.com.wrpseudo.pseudo.git.tar.gz
> | NOTE: fetch http://autobuilder.pokylinux.org/sources/git2_github.com.wrpseudo.pseudo.git.tar.gz
> | ERROR: Function 'Fetcher failure for URL: 'git://github.com/wrpseudo/pseudo.git;protocol=git'. Unable to fetch URL git://github.com/wrpseudo/pseudo.git;protocol=git from any 
> source.' failed
> NOTE: package pseudo-native-0.0+git1+5434325fc887817ebb2bad36313d8277992cef1d-r18: task Fetcher failure for URL: 'git://github.com/wrpseudo/pseudo.git;protocol=git'. Unable to 
> fetch URL git://github.com/wrpseudo/pseudo.git;protocol=git from any source.: Failed
> 
> In order to actually fetch, I have to remove the PREMIRRORS
> from my conf.
> 
> Is there some way to get it to use the source cache but
> still fetch when needed?
> 
> Thanks
> 
> Note: I also normally have BB_NO_NETWORK="1", but that is not
> applicable here (no message about it) and setting it false does
> not change the behaviour.

It is applicable.

Try not setting that variable at all, not setting it false. I suspect
there are two issues here:

a) BB_NO_NETWORK is having an effect but the log messages are being 
   swallowed...
b) "false" handling for the variable might not be working properly so 
   leave it unset.

We can fix those things but I'd like to confirm these are the problems
first.

Cheers,

Richard




