Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E4554C800A3
	for <poky@yoctoproject.org>; Tue,  3 May 2011 08:25:33 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p43DPPPK029902;
	Tue, 3 May 2011 14:25:25 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25650-05; Tue,  3 May 2011 14:25:17 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p43DP9sK029845
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 3 May 2011 14:25:13 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4DBFE86B.7090702@mlbassoc.com>
References: <4DBFE86B.7090702@mlbassoc.com>
Date: Tue, 03 May 2011 14:25:08 +0100
Message-ID: <1304429108.21461.109.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can't share build trees?
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
X-List-Received-Date: Tue, 03 May 2011 13:25:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-05-03 at 05:35 -0600, Gary Thomas wrote:
> I have a system which has both PowerPC and ARM/OMAP components.
> They share a common Poky/Yocto layer, so I thought I'd be able
> to also share a build tree.  So, I tried something like this:
>    % . /opt/poky/oe-init-build-env my_target
>    % MACHINE=MY_OMAP bitbake omap-image
>    % MACHINE=MY_PPC bitbake ppc-image
> 
> All seemed fine the first time through.  The images were built
> as expected and worked well.
> 
> Sadly, when I tried to build something else, e.g.
>    % MACHINE=MY_OMAP bitbake some-package
> it set off rebuilding the entire cross tool chain :-(
> 
> Should this work?  or should I just be aware it does not (and mostly
> tell my customers not to expect it to work)?

It should work and its the way I use Poky. Did you update the metadata
between these builds changing the toolchain version for example (e.g.
gcc 4.6.0 testing)?

Cheers,

Richard



