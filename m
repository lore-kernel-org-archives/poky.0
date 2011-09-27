Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88C2EE004E9
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 06:11:36 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8RDHnHm016291; Tue, 27 Sep 2011 14:17:50 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 5U8q0g+ad7WE; Tue, 27 Sep 2011 14:17:49 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8RDHh0m016282
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 27 Sep 2011 14:17:46 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 27 Sep 2011 14:11:19 +0100
In-Reply-To: <4E81C907.8080407@mlbassoc.com>
References: <4E81C907.8080407@mlbassoc.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1317129087.26109.148.camel@ted>
Mime-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Crazy versioning
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
X-List-Received-Date: Tue, 27 Sep 2011 13:11:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-09-27 at 07:00 -0600, Gary Thomas wrote:
> I'm trying to use the recipe meta/recipes-bsp/u-boot/u-boot_2011.06.bb
> Since there are a number of u-boot recipes, I want to make sure I get
> the right one, plus I'm writing a .bbappend file to add patches for
> my own boards.
> 
> So I added this to my MACHINE.conf:
>    PREFERRED_VERSION_u-boot = "2011.06"
> 
> When I try to build, I get this error:
>    NOTE: preferred version 2011.06 of u-boot not available (for item u-boot)
>    NOTE: versions of u-boot available: git v2011.06+git16+b1af6f532e0d348b153d5c148369229d24af361a
> I guess this is because the recipe has this for PV
>    SRCREV = "b1af6f532e0d348b153d5c148369229d24af361a"
>    PV = "v2011.06+git${SRCPV}"
> The truly bizarre thing is that if my cache is rebuilt, the version printed changes, e.g.
>    % touch conf/local.conf
>    % bitbake u-boot
>    NOTE: versions of u-boot available: git v2011.06+git18+b1af6f532e0d348b153d5c148369229d24af361a
> 
> So, how do I specify the right value in PREFERRED_VERSION?

You look at the PV value in the recipe and then write something like:

PREFERRED_VERSION_u-boot = "2011.06+git%"

where % is a wildcard that matches the revision.

The reason the version incremented is down to bitbake thinking multiple
versions were being built and trying to keep versions atomically
increasing.

Cheers,

Richard




