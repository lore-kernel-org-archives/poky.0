Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 322564C80AC9
	for <poky@yoctoproject.org>; Tue, 17 May 2011 05:57:09 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4HAv27i013746;
	Tue, 17 May 2011 11:57:02 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13370-01; Tue, 17 May 2011 11:56:58 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4HAur13013726
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 17 May 2011 11:56:54 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4DCA9922.5000209@mlbassoc.com>
References: <4DCA9922.5000209@mlbassoc.com>
Date: Tue, 17 May 2011 11:56:50 +0100
Message-ID: <1305629810.3424.224.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: SSTATE MIRRORS only partly working?
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
X-List-Received-Date: Tue, 17 May 2011 10:57:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 08:11 -0600, Gary Thomas wrote:
> Trying my SSTATE_MIRROR test with a recent Poky tree, I find
> that for the most part, it doesn't work as expected (at least
> not as I expect).
> 
> Here's my test setup:
>    * Create a complete build
>      % . /local/poky/oe-init-build-env /local/build_orig
>      % bitbake SOME-RECIPE
>    * Use that build for the SSTATE_MIRROR
>      % . /local/poky/oe-init-build-env /local/build_test
>      -- edit conf/local.conf to have these lines:
>          SSTATE_MIRRORS ?= "\
>          file://.* file:///local/build_orig/sstate-cache/"
>      % bitbake SOME-RECIPE
> 
> What I find is that this second build is rebuilding a lot of
> things, most strikingly the -native packages.  Looking into
> it, I see that the original build creates
>    sstate-pseudo-native-i686-linux-1.0-r0-i686-2-999fef0f7f260a6672c3678a831fa36f_populate-sysroot.tgz
> but when the test build runs, it's looking for
>    sstate-pseudo-native-i686-linux-1.0-r0-i686-2-feb469d055bfc4f32074e7e9499eaf22_populate-sysroot.tgz
> 
> Odd, but it's not always different, for example
>    sstate-perl-native-i686-linux-5.12.3-r2-i686-2-75d16ce5b7c945262d819c24f59d1c9f_populate-sysroot.tgz
> is the same in both builds and is thus shared.
> 
> Note that nothing else has changed, other than the process above.
> The COREBASE tree is identical/untouched.
> 
> Am I missing something here?

Did you try comparing the siginfo/sigdata files using bitbake-diffsigs?

That should give some clues about what changed.

Cheers,

Richard



