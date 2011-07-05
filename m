Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A43924C80227
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 11:30:15 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 25C73166019A; Tue,  5 Jul 2011 10:30:15 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id CA0DF1660158;
	Tue,  5 Jul 2011 10:29:54 -0600 (MDT)
Message-ID: <4E133C02.1020707@mlbassoc.com>
Date: Tue, 05 Jul 2011 10:29:54 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Image size explosion
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
X-List-Received-Date: Tue, 05 Jul 2011 16:30:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just rebuilt my image after updating to the latest master and
I observed image explosion (my mimimal image went from 3.9MB to
37MB!)  Looking at what went into the image, I see some packaging
changes.  The package
   libc6
is now a bunch of packages
   eglibc
   eglibc-dev
   eglibc-extra-nss
   libcidn1
   libgcc1
   libgcc-s-dev
   libthread-dbl
   linux-libc-headers-dev
which seem to be responsible for the bloat.

Questions:
* What changed that now brings this in?
* Can I get back to my old, minimal, setup?  This is for a deeply
   embedded device and I don't need/want any development stuff.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

