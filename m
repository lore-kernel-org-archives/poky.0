Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06ED4E00524
	for <poky@yoctoproject.org>; Tue,  2 Oct 2012 08:44:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q92Fi0cJ018279;
	Tue, 2 Oct 2012 16:44:00 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17759-02; Tue,  2 Oct 2012 16:43:56 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q92Fhq6s018271
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Tue, 2 Oct 2012 16:43:53 +0100
Message-ID: <1349192635.18301.5.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 02 Oct 2012 16:43:55 +0100
In-Reply-To: <506B0983.3060500@mlbassoc.com>
References: <506B0983.3060500@mlbassoc.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: New warning
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
X-List-Received-Date: Tue, 02 Oct 2012 15:44:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-10-02 at 09:34 -0600, Gary Thomas wrote:
> I'm getting these new warnings, even with a build from scratch.  This is from
> poky master rev 7c39c87d52c20e47cf90275a16e4517a296c8388
> 
> WARNING: The recipe is trying to install files into a shared area when those files already exist. Those files are:
>     /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/include/python2.7/pyconfig.h
>     /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/lib/libpython2.7.so
>     /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/lib/libpython2.7.so.1.0
>     /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/lib/python2.7/config/Makefile
> 
> Do they hurt anything?  Why am I getting them now, what's changed, etc?

I fixed the code that was supposed to be generate these messages and we
started seeing them. Its a new type of check added relatively recently
but was accidentally disabled in its original commit.

The python recipe does something particularly evil, the do_compile pokes
file into STAGING_DIR_* directly for various reasons.

The do_install then does save off the files correctly but there is an
overwrite situation occurring there and I don't consider the recipe to
be doing something particularly nice.

So there is an issue there, it won't break your build but we should
really do something better.

Cheers,

Richard


