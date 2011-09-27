Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78F1BE004E9
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 06:00:58 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 473951660AE7; Tue, 27 Sep 2011 07:00:56 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id C400B166035B;
	Tue, 27 Sep 2011 07:00:55 -0600 (MDT)
Message-ID: <4E81C907.8080407@mlbassoc.com>
Date: Tue, 27 Sep 2011 07:00:55 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Crazy versioning
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
X-List-Received-Date: Tue, 27 Sep 2011 13:00:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to use the recipe meta/recipes-bsp/u-boot/u-boot_2011.06.bb
Since there are a number of u-boot recipes, I want to make sure I get
the right one, plus I'm writing a .bbappend file to add patches for
my own boards.

So I added this to my MACHINE.conf:
   PREFERRED_VERSION_u-boot = "2011.06"

When I try to build, I get this error:
   NOTE: preferred version 2011.06 of u-boot not available (for item u-boot)
   NOTE: versions of u-boot available: git v2011.06+git16+b1af6f532e0d348b153d5c148369229d24af361a
I guess this is because the recipe has this for PV
   SRCREV = "b1af6f532e0d348b153d5c148369229d24af361a"
   PV = "v2011.06+git${SRCPV}"
The truly bizarre thing is that if my cache is rebuilt, the version printed changes, e.g.
   % touch conf/local.conf
   % bitbake u-boot
   NOTE: versions of u-boot available: git v2011.06+git18+b1af6f532e0d348b153d5c148369229d24af361a

So, how do I specify the right value in PREFERRED_VERSION?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

