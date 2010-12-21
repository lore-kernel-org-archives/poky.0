Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84A014C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 01:27:08 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 24D4C1853B8A;
	Tue, 21 Dec 2010 08:27:06 +0100 (CET)
X-Auth-Info: xfuUntUGl0FUgY42vVARV/3LFphr17Dq8J2GamyxHOQ=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id E667D1C0027F;
	Tue, 21 Dec 2010 08:27:06 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id C3D9320005DC;
	Tue, 21 Dec 2010 08:27:06 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id A79A3B715C;
	Tue, 21 Dec 2010 08:27:06 +0100 (CET)
To: Joshua Lock <josh@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <cover.1292856365.git.josh@linux.intel.com>
References: <cover.1292856365.git.josh@linux.intel.com>
Comments: In-reply-to Joshua Lock <josh@linux.intel.com>
	message dated "Mon, 20 Dec 2010 14:46:05 +0000."
Date: Tue, 21 Dec 2010 08:27:06 +0100
Message-Id: <20101221072706.A79A3B715C@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Misc build fixes v2
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
X-List-Received-Date: Tue, 21 Dec 2010 07:27:09 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Joshua Lock,

In message <cover.1292856365.git.josh@linux.intel.com> you wrote:
> This series includes a corrected fix for gst-plugins-base for make 3.82 as
> well as a more correct fix to enable gthumb to build on a system without
> gtk-doc installed.
> 
> We do this by providing a gtk-doc-native recipe and having gtk-doc depend on
> it. That way we have a binary to run on the build system to generate the
> documentation as well as a target version so that the pkgconfig test passes.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/make-382
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/make-382

I confirm that I can build both poky-image-sdk and meta-toolchain-sdk
for "qemuppc" on Fedora 14 / x86_64 with these patches.

Tested-by: Wolfgang Denk <wd@denx.de>


Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
A Freudian slip is when you say one thing but mean your mother.

