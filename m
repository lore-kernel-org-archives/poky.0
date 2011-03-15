Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 095294C803D6
	for <poky@lists.pokylinux.org>; Tue, 15 Mar 2011 09:04:12 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FE4BdD019236;
	Tue, 15 Mar 2011 14:04:11 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18850-06; Tue, 15 Mar 2011 14:04:07 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FE4218019230
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Mar 2011 14:04:03 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D7F6EE6.6070504@mlbassoc.com>
References: <4D7F6EE6.6070504@mlbassoc.com>
Date: Tue, 15 Mar 2011 14:03:55 +0000
Message-ID: <1300197835.30423.1757.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Update gone terribly wrong
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
X-List-Received-Date: Tue, 15 Mar 2011 14:04:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 07:51 -0600, Gary Thomas wrote:
> I updated my Poky tree to current master this morning (4c695dbcd12b295a4215422622006f1f58469297)
> 
> Now, when I try to build in an extant tree, I get errors like these:
>    /home/local/poky-amltd/scripts/bitbake: line 51: 28850 Segmentation fault      (core dumped) PSEUDO_BINDIR=$PSEUDOBINDIR PSEUDO_LIBDIR=$PSEUDOBINDIR/../lib/pseudo/lib 
> PSEUDO_PREFIX=$PSEUDOBINDIR/../../ PSEUDO_DISABLED=1 $PSEUDOBINDIR/pseudo $BITBAKE $@
> 
> So, I removed pseudodone and got
>    /home/local/poky-amltd/scripts/bitbake: line 43: 28891 Segmentation fault      (core dumped) bitbake pseudo-native tar-replacement-native -c populate_sysroot

This looks like python itself is segfaulting, even without pseudo loaded
so it could well be something outside our control :/. Which python
version is that?

If you still have the build around it would be interesting to see if
just removing the cache directory fixed that or trying to narrow down
which files are triggering the segfault.

> So I figured I'd just restart, so I tried this:
>    % mv tmp tmp.BAD
>    % mv sstate-cache sstate-mirror
>    ... set SSTATE_MIRRORS to use the old cache
>    %  tail -n3 conf/local.conf
>    SSTATE_MIRRORS ?= "\
>    file://.* file:///local/p60_poky/sstate-mirror/"
> 
> Sadly, it's rebuilding everything, reusing nothing :-(
> 
> Any ideas what went wrong and why the sstate mirror is not working (again)?

Likely, some of the changes in master meant the sstate checksums were
invalidated and it therefore required a rebuild. The sstate files are
only used if the checksums are found to be valid.

Cheers,

Richard


