Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCAE3E01426
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 05:35:10 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-63-199.range86-170.btcentralplus.com
	[86.170.63.199]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 057DD9C07
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 13:35:09 +0100 (BST)
Message-ID: <4FE46678.8020400@r-finger.com>
Date: Fri, 22 Jun 2012 13:35:04 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4FE220B8.2080903@mlbassoc.com>
	<CAMKF1so1L3GNuELFb4stPPORTwN29vOLngJM_x_9BrV7_jMaiQ@mail.gmail.com>
	<4FE253E8.7090901@mlbassoc.com> <3380572.szjuG0GuWa@helios>
	<4FE45BE3.3090200@mlbassoc.com>
In-Reply-To: <4FE45BE3.3090200@mlbassoc.com>
Subject: Re: New warning
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
X-List-Received-Date: Fri, 22 Jun 2012 12:35:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/06/12 12:49, Gary Thomas wrote:
> It gets more complicated as my kernel recipe (in meta-MYDISTRO)
> references files like
>   SRC_URI += "file://${MACHINE}.patch"
> I don't see any way to define a dummy version of this.
> 
> Is this clear now?  Any ideas how to clean it up?

Seems to me the basic problem is the circular dependency between your
distro and bsp layers; would it not work if you removed the SRC_URI +=
from the distro recipes and add a bbappend to each of your bsb layers?

Tomas

