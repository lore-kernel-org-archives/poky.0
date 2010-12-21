Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id CAC134C80039
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 09:13:06 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 985E11C00E3D;
	Tue, 21 Dec 2010 16:13:05 +0100 (CET)
X-Auth-Info: dQ8VbDv5GFMdE1cKjUc3A+lpcnatTygZ3W6cXrTRpBs=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 8B0DC1C0016C;
	Tue, 21 Dec 2010 16:13:05 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 69450316EC0B;
	Tue, 21 Dec 2010 16:13:05 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 4C9E1126EB19;
	Tue, 21 Dec 2010 16:13:05 +0100 (CET)
To: Khem Raj <raj.khem@gmail.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <cover.1292920700.git.raj.khem@gmail.com>
References: <cover.1292920700.git.raj.khem@gmail.com>
Comments: In-reply-to Khem Raj <raj.khem@gmail.com>
	message dated "Tue, 21 Dec 2010 01:27:00 -0800."
Date: Tue, 21 Dec 2010 16:13:05 +0100
Message-Id: <20101221151305.4C9E1126EB19@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] gcc 4.5.4 + linaro update
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
X-List-Received-Date: Tue, 21 Dec 2010 15:13:07 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Khem Raj,

In message <cover.1292920700.git.raj.khem@gmail.com> you wrote:
> 
> This branch brings in gcc 4.5.2 and on top linaro's enhancements to gcc 4.5
> I have made sure that it builds poky-image-minimal for arm, ppc, x86, mips
> qemu and boots on all of them. It did not boot on ppc however poky-qemu
> did not boot any images for me even the ones built without these enhancements
> i.e. on vanilla yocto. So I used a qemu 0.12.5 built with OE
> which worked well. I need help in testing it out. So please test these patches rigourously 
> with standard testing setup you use before you pull them
> 
> If there are issues found let me know

The 4.5.4 in the subject is just a typo?

If I apply your patches on top of current head, I see a failure like
this:

ERROR: Task failed: Unknown fetch Error: local variable 'md5data' referenced before assignment
NOTE: package gcc-cross-initial-4.5.2-r0: task do_fetch: Failed


Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
C++ was an interesting and valuable experiment, but we've learned its
lessons and it's time to move on.
                            - Peter Curran in <DCqM4z.BxB@isgtec.com>

