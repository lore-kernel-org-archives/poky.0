Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55E2C4C80337
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 09:54:57 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4A53D1660339; Fri, 29 Apr 2011 08:54:54 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id CE6A316602F4;
	Fri, 29 Apr 2011 08:54:53 -0600 (MDT)
Message-ID: <4DBAD13D.6060804@mlbassoc.com>
Date: Fri, 29 Apr 2011 08:54:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
References: <4DB9E511.6000508@mlbassoc.com>
In-Reply-To: <4DB9E511.6000508@mlbassoc.com>
Subject: Re: perl-native fails to build on Ubuntu 11.04
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
X-List-Received-Date: Fri, 29 Apr 2011 14:54:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/28/2011 04:07 PM, Gary Thomas wrote:
> Trying out the just released [today] Ubuntu 11.04 as a build host.
> perl-native fails (either 5.12.2 or 5.12.3)
>
> Logs are at:
> http://www.mlbassoc.com/poky/perl-native.do_configure
> http://www.mlbassoc.com/poky/perl-native.do_compile
>
> Any ideas how to fix this?

The change previously imported from Khem Raj almost works, but only
on his x86_64 system.  It turns out that on x86 (not 64) systems,
uname -m is i686 but the libraries in question are in /usr/lib/i386-linux-gnu

This small change to his patch works for me on Ubuntu/x86 11.04

diff --git a/meta/recipes-devtools/perl/perl-5.12.3/Configure-multilib.patch b/meta/recipes-devtools/perl/perl-5.12.3/Con
index ef2be3d..9625b0b 100644
--- a/meta/recipes-devtools/perl/perl-5.12.3/Configure-multilib.patch
+++ b/meta/recipes-devtools/perl/perl-5.12.3/Configure-multilib.patch
@@ -11,7 +11,7 @@ Index: perl-5.12.3/Configure
  -glibpth="/lib /usr/lib $xlibpth"
  +glibpth="/lib /usr/lib /lib64 /usr/lib64 $xlibpth"
   glibpth="$glibpth /usr/ccs/lib /usr/ucblib /usr/local/lib"
-+test -f /usr/lib/`uname -m`-linux-gnu/libc.so && glibpth="/usr/lib/`uname -m`-linux-gnu $glibpth"
++test -f /usr/lib/*-linux-gnu/libc.so && glibpth="/usr/lib/*-linux-gnu $glibpth"
   test -f /usr/shlib/libc.so && glibpth="/usr/shlib $glibpth"
   test -f /shlib/libc.so     && glibpth="/shlib $glibpth"
   test -d /usr/lib64         && glibpth="$glibpth /lib64 /usr/lib64 /usr/local/lib64"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

