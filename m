Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 13B224C8006D
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 16:08:15 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 6FAE71C01D9F;
	Tue,  1 Feb 2011 23:08:12 +0100 (CET)
X-Auth-Info: sxuarwrJ35PzTt8yicqkWdIIaZsscjmjRdqHsJlK1gQ=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id D56131C000F2;
	Tue,  1 Feb 2011 23:08:12 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id AFC4A323DEFF;
	Tue,  1 Feb 2011 23:08:12 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 86A8CB187;
	Tue,  1 Feb 2011 23:08:12 +0100 (CET)
To: Mark Hatle <mark.hatle@windriver.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4D486662.6020403@windriver.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
	<1296382406.13501.7899.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504E6294E1D3@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32A4B@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32C7C@shsmsx502.ccr.corp.intel.com>
	<1296492009.13501.13668.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA9506C267B0@orsmsx504.amr.corp.intel.com>
	<1296561316.13501.18767.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA950D73A848@orsmsx504.amr.corp.intel.com>
	<1296567139.13501.19158.camel@rex>
	<20110201192705.2546DB187@gemini.denx.de>
	<4D486662.6020403@windriver.com>
Comments: In-reply-to Mark Hatle <mark.hatle@windriver.com>
	message dated "Tue, 01 Feb 2011 14:00:34 -0600."
Date: Tue, 01 Feb 2011 23:08:12 +0100
Message-Id: <20110201220812.86A8CB187@gemini.denx.de>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: poky-image-sato-sdk failed at do_rootfs
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
X-List-Received-Date: Tue, 01 Feb 2011 22:08:16 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Mark,

In message <4D486662.6020403@windriver.com> you wrote:
> The failure indicated in your logs comes from building pseudo-native.  This is
> not related to the previous messages you sent.
> 
> What is the host system type (Fedora, RHEL, etc), what is your byte size?
> 32-bit or 64-bit kernel...  any anything else you can give us to reproduce your
> configuration.

This is a Fedora 14 x86_64 host.

> The error below is fairly obvious.. it tried to build a 32-bit version of the
> pseudo libraries, this build failed due to a lack of 32-bit libgcc.so installed
> on your host.
> 
> If I had to guess you have a 64-bit Fedora or RHEL host, and only partial 32-bit
> support installed.  Check using rpm or yum if you have the 32-bit libgcc-devel
> package installed.  (I'd also check for 32-bit glibc-devel).

	$ rpm -qa | grep glibc | sort
	arm-gp2x-linux-glibc-2.3.6-8.fc14.noarch
	glibc-2.12.90-21.i686
	glibc-2.12.90-21.x86_64
	glibc-common-2.12.90-21.x86_64
	glibc-devel-2.12.90-21.i686
	glibc-devel-2.12.90-21.x86_64
	glibc-headers-2.12.90-21.x86_64

I am aware that the standard installation of poky-scripts and
poky-depends is not sufficient on Fedora. Additionally, I installed
xmlto-tex, glibc-devel.i686, zlib-devel.i686, and chrpath

This used to satisfy all requirements, at least so far.  It used to
work before.


libgcc_s is normally provided by the gcc RPM:

$ rpm -qf /usr/lib/gcc/x86_64-redhat-linux/4.5.1/libgcc_s.so
gcc-4.5.1-4.fc14.x86_64

But there is no gcc-4.5.1-4.fc14.i686 available for installation in a
x86_64 environment.



Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
The human race has one really effective weapon, and that is laughter.
                                                         - Mark Twain

