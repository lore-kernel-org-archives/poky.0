Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9239EE013D9
	for <poky@yoctoproject.org>; Thu,  4 Oct 2012 03:39:24 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q94AdM14005898;
	Thu, 4 Oct 2012 11:39:22 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05653-04; Thu,  4 Oct 2012 11:39:18 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q94AdG3u005892
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Thu, 4 Oct 2012 11:39:17 +0100
Message-ID: <1349347159.18301.78.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexander@mezon.ru
Date: Thu, 04 Oct 2012 11:39:19 +0100
In-Reply-To: <1349346365.6218.6.camel@localhost>
References: <1349343340.6218.4.camel@localhost>
	<1349346251.18301.74.camel@ted> <1349346365.6218.6.camel@localhost>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: building rpm distro
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
X-List-Received-Date: Thu, 04 Oct 2012 10:39:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2012-10-04 at 14:26 +0400, Alexander Khryukin wrote:
> В Чт., 04/10/2012 в 11:24 +0100, Richard Purdie пишет:
> > Build an image that includes gcc and other tools such as
> > core-image-sato-sdk?
> 
> Nope just "bitbake core-image-sato"
> 
> 
> . oe-init-build-env 
> 
> ### Shell environment set up for builds. ###
> 
> You can now run 'bitbake <target>'
> 
> Common targets are:
>     core-image-minimal
>     core-image-sato
>     meta-toolchain
>     meta-toolchain-sdk
>     adt-installer
>     meta-ide-support
> 
> 
> You mean meta-toolchain-sdk ?

No, those are common examples. "bitbake core-image-sato-sdk" will work
and give you an image with development tools.

Cheers,

Richard


