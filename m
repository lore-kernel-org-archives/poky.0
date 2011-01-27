Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E3F94C811D2
	for <poky@lists.pokylinux.org>; Thu, 27 Jan 2011 06:58:23 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id C78981800230
	for <poky@lists.pokylinux.org>; Thu, 27 Jan 2011 13:58:21 +0100 (CET)
X-Auth-Info: muaLuDYBa9p9X8ZS8c0Hc2Z1a1tTI4KuHqdaVDSkLY8=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id D856C1C00177
	for <poky@lists.pokylinux.org>; Thu, 27 Jan 2011 13:58:20 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id CC2BB32105AD
	for <poky@lists.pokylinux.org>; Thu, 27 Jan 2011 13:58:18 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id AAB60B335
	for <poky@lists.pokylinux.org>; Thu, 27 Jan 2011 13:58:18 +0100 (CET)
To: poky@lists.pokylinux.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Thu, 27 Jan 2011 13:58:18 +0100
Message-Id: <20110127125818.AAB60B335@gemini.denx.de>
Subject: Missing header files in poky-image-sdk
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
X-List-Received-Date: Thu, 27 Jan 2011 12:58:23 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Hi,

I tried to build some software packages in the native poky-image-sdk
environment (built for qemuarm), but quickly failed because some
pretty basic header files are missing - there is none of

	/usr/include/linux
	/usr/include/asm
	/usr/include/asm-generic

Ist this intentional, or a bug, or did I simply use the wrong image
for such a test?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
The only person who always got his work done by Friday
                                                 was Robinson Crusoe.

