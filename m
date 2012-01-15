Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28BE3E0071E
	for <poky@yoctoproject.org>; Sat, 14 Jan 2012 16:06:16 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0F06DTJ003954;
	Sun, 15 Jan 2012 00:06:13 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01485-02; Sun, 15 Jan 2012 00:06:08 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0F0643P003948
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 15 Jan 2012 00:06:06 GMT
Message-ID: <1326585967.18815.10.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Sun, 15 Jan 2012 00:06:07 +0000
In-Reply-To: <4F118359.6070900@mlbassoc.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net> <4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net> <4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
	<CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
	<4F0F4B94.3020604@mlbassoc.com>
	<CABcZAN=HJjD8uq-00s0=_ho6DXRbEFHBEpF-jQQk0J=qGFFq8A@mail.gmail.com>
	<4F104C72.8010605@mlbassoc.com>
	<CAEsOVNeuCt3aqoTm_LG=8TLKZtXQwg+ptYPX8+rc1UaBkfOkDw@mail.gmail.com>
	<1326472079.15389.43.camel@ted> <4F10619F.4080002@mlbassoc.com>
	<4F1065DE.4010203@mlbassoc.com> <4F118359.6070900@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: sstate info
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
X-List-Received-Date: Sun, 15 Jan 2012 00:06:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2012-01-14 at 06:30 -0700, Gary Thomas wrote:
> Richard's change works just as well as adding DATE to BB_HASH_WHITELIST.

Great!

> In my minimal test, there are three packages being rebuilt: dbus-1,
> base-files and shadow-sysroot.  It's still not clear to me why this
> happened.  I've put the tmp/stamps trees at http://www.mlbassoc.com/misc/poky_stamps.tgz
> This has two directories in it
>    p60_test_pass1 - the original tree, build without any sstate
>    p60_test_pass2 - the dependent tree, build using p60_test_pass1 as sstate
> Perhaps someone can give me a clue why these three packages were
> rebuilt.  Note: there were no changes to the source repository
> between the two builds and I always build with BB_NO_NETWORK="1"

I suspect its useradd related and there is already an open bug:

http://bugzilla.yoctoproject.org/show_bug.cgi?id=1721

Cheers,

Richard


