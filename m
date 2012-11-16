Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52916E006B3
	for <poky@yoctoproject.org>; Fri, 16 Nov 2012 07:06:33 -0800 (PST)
Received: from [192.168.0.2] (host81-147-178-119.range81-147.btcentralplus.com
	[81.147.178.119]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 532F99BE3
	for <poky@yoctoproject.org>; Fri, 16 Nov 2012 15:06:31 +0000 (GMT)
Message-ID: <50A65676.1090504@r-finger.com>
Date: Fri, 16 Nov 2012 15:06:30 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <50A649D6.9030301@mlbassoc.com> <7871104.EdYNj4Ce18@helios>
	<50A64DBE.3020106@mlbassoc.com>
In-Reply-To: <50A64DBE.3020106@mlbassoc.com>
Subject: Re: Wacky dependencies
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
X-List-Received-Date: Fri, 16 Nov 2012 15:06:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/11/12 14:29, Gary Thomas wrote:
> In this particular case, I think the problem is that DISTRO_FEATURES 
> contains too many controls.  In particular, all of the LIBC settings
> which *are* important to GCC & EGLIBC.  Maybe that part should be
> kept separate and only have DISTRO_FEATURES contain non-compiler
> items?

Changing distro features is not something you do on daily basis, but
when you do, the breakage potential is significant, so this really needs
to be robust more than efficient. If the check can be made smarter the
way Paul suggested, that would have some benefit, but multiplying the
variables that make up distro config will make maintaining distros, and
packages that depend on distro features, harder and more error prone, I
think.

Tomas

-- 
http://sleepfive.com

