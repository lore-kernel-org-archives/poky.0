Return-Path: <rpurdie@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D6704C801BF
	for <poky@lists.pokylinux.org>; Fri, 22 Oct 2010 08:51:03 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id AC97E12EC2F2; Fri, 22 Oct 2010 09:26:37 -0500 (CDT)
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 50E7612EC27E
	for <poky@o-hand.com>; Fri, 22 Oct 2010 09:26:37 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9MDp2aw030023
	for <poky@o-hand.com>; Fri, 22 Oct 2010 14:51:02 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29922-02 for <poky@o-hand.com>; Fri, 22 Oct 2010 14:50:58 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9MDorF4030017
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@o-hand.com>; Fri, 22 Oct 2010 14:50:53 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: poky@o-hand.com
In-Reply-To: <4CAE54A1.1080803@mlbassoc.com>
References: <4CADD32A.9010908@mlbassoc.com>
	<1286462951.15840.6345.camel@rex> <4CADE06F.6040308@mlbassoc.com>
	<4CADFA77.3070305@mlbassoc.com> <1286475616.15840.6565.camel@rex>
	<4CAE54A1.1080803@mlbassoc.com>
Date: Fri, 22 Oct 2010 14:50:39 +0100
Message-ID: <1287755439.16386.736.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Re: SVN woes persist
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 13:51:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-10-07 at 17:15 -0600, Gary Thomas wrote:
> I updated to include these changes and gave it a try.  Here's what I did:
> 
>    % mkdir /work/new_build
>    % cd /work/poky_tree
>    % . poky-init-build-env /work/new_build
>      ... adjust DL_DIR, etc in conf/local.conf
>          SSTATE_MIRRORS is not defined yet
>    % bitbake some-image
> 
>    % mv sstate-cache sstate
>    % mv tmp tmp.old
>      ... adjust conf/local.conf to set SSTATE_MIRRORS like this
>          SSTATE_MIRRORS ?= "\
>          file://.* file:///work/new_build/sstate/"
> 
>    % bitbake some-image
> 
> First of all, it took an incredible length of time (maybe a minute on my fast machine)
> to even move past the resolve step.  Then it went off spewing lines about the state files
> (sadly I didn't save them).  It then proceeded to run through some 322 steps, telling me
> more about state files.  This took quite some time.  Then it seemed to just start the
> normal build all over, apparently without regard to any of the sstate info.
> 
> Did I miss something?  Is this how it should work?
> 
> Sorry to be such a pain over this, but I'd really like to see this part working.
> If there's something I can help with it, please let me know - I know my way around
> Python code, but I don't know all the internals of how you expect this to work.

Sorry not to get back to you sooner, I'm being pulled in a few different
directions and we're coming up to release.

In my own tests I've noticed a few issues and I've just pushed a number
of fixes into the master branch which should help in various areas. 

With regard to your specific test and problem, it shouldn't rebuild
everything. It turns out that I'd tested with http:// mirror urls and
not file:// ones which needed and extra piece of code to handle them
correctly.

Have another try with master and see if things are better this time!

Cheers,

Richard


