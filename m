Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40AB94C80050
	for <poky@lists.pokylinux.org>; Tue, 15 Mar 2011 08:51:36 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 9CCCF1660386; Tue, 15 Mar 2011 07:51:35 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 430191660383;
	Tue, 15 Mar 2011 07:51:34 -0600 (MDT)
Message-ID: <4D7F6EE6.6070504@mlbassoc.com>
Date: Tue, 15 Mar 2011 07:51:34 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Update gone terribly wrong
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
X-List-Received-Date: Tue, 15 Mar 2011 13:51:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I updated my Poky tree to current master this morning (4c695dbcd12b295a4215422622006f1f58469297)

Now, when I try to build in an extant tree, I get errors like these:
   /home/local/poky-amltd/scripts/bitbake: line 51: 28850 Segmentation fault      (core dumped) PSEUDO_BINDIR=$PSEUDOBINDIR PSEUDO_LIBDIR=$PSEUDOBINDIR/../lib/pseudo/lib 
PSEUDO_PREFIX=$PSEUDOBINDIR/../../ PSEUDO_DISABLED=1 $PSEUDOBINDIR/pseudo $BITBAKE $@

So, I removed pseudodone and got
   /home/local/poky-amltd/scripts/bitbake: line 43: 28891 Segmentation fault      (core dumped) bitbake pseudo-native tar-replacement-native -c populate_sysroot

So I figured I'd just restart, so I tried this:
   % mv tmp tmp.BAD
   % mv sstate-cache sstate-mirror
   ... set SSTATE_MIRRORS to use the old cache
   %  tail -n3 conf/local.conf
   SSTATE_MIRRORS ?= "\
   file://.* file:///local/p60_poky/sstate-mirror/"

Sadly, it's rebuilding everything, reusing nothing :-(

Any ideas what went wrong and why the sstate mirror is not working (again)?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

