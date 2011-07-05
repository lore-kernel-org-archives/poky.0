Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 726C04C801DA
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 11:45:03 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65Gj2fa000949;
	Tue, 5 Jul 2011 17:45:02 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 00402-08; Tue,  5 Jul 2011 17:44:58 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65GiqEp000939
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 5 Jul 2011 17:44:53 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4E133C02.1020707@mlbassoc.com>
References: <4E133C02.1020707@mlbassoc.com>
Date: Tue, 05 Jul 2011 17:44:20 +0100
Message-ID: <1309884260.20015.727.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Image size explosion
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
X-List-Received-Date: Tue, 05 Jul 2011 16:45:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-05 at 10:29 -0600, Gary Thomas wrote:
> I just rebuilt my image after updating to the latest master and
> I observed image explosion (my mimimal image went from 3.9MB to
> 37MB!)  Looking at what went into the image, I see some packaging
> changes.  The package
>    libc6
> is now a bunch of packages
>    eglibc
>    eglibc-dev
>    eglibc-extra-nss
>    libcidn1
>    libgcc1
>    libgcc-s-dev
>    libthread-dbl
>    linux-libc-headers-dev
> which seem to be responsible for the bloat.
> 
> Questions:
> * What changed that now brings this in?
> * Can I get back to my old, minimal, setup?  This is for a deeply
>    embedded device and I don't need/want any development stuff.

When we split up the locale generation we broke eglibc. It sounds like
you're missing the fixes for that?

Assuming minimal stops pulling in eglibc-dev things should look
better...

Cheers,

Richard


