Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7FE14C80052
	for <poky@yoctoproject.org>; Fri, 20 May 2011 11:19:00 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4KGIsjK027019;
	Fri, 20 May 2011 17:18:54 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26853-03; Fri, 20 May 2011 17:18:50 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4KGIkEN027013
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 20 May 2011 17:18:46 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kang Kai <kai.kang@windriver.com>
In-Reply-To: <2a1f54c36d74702b453845dcba5564ac6d357aa7.1305891945.git.kai.kang@windriver.com>
References: <cover.1305891945.git.kai.kang@windriver.com>
	<2a1f54c36d74702b453845dcba5564ac6d357aa7.1305891945.git.kai.kang@windriver.com>
Date: Fri, 20 May 2011 17:18:41 +0100
Message-ID: <1305908321.3424.658.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] ghostscript: fix run failure on mpc8315e
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
X-List-Received-Date: Fri, 20 May 2011 16:19:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Fri, 2011-05-20 at 20:19 +0800, Kang Kai wrote:
> From: Kang Kai <kai.kang@windriver.com>
> 
> When run gs on mpc8315, it fails with:
> GPL Ghostscript 9.02: ./psi/interp.c(291): Fatal error -20 in gs_interp_init!
> It is caused by cross compile.
> 
> Accoding to the ghostscript document on:
> http://pages.cs.wisc.edu/~ghost/doc/cvs/Make.htm#Cross-compiling
> it needs some manual work, so import patches from WindRiver Linux.
> 
> Signed-off-by: Kang Kai <kai.kang@windriver.com>

There is a way to do this more neatly within OE. You can create a
directory structure of:

recipes-extended/ghostscriptghostscript-9.02/powerpc/objarch.h
recipes-extended/ghostscriptghostscript-9.02/powerpc/soobjarch.h
recipes-extended/ghostscriptghostscript-9.02/i586/objarch.h
recipes-extended/ghostscriptghostscript-9.02/i586/soobjarch.h
recipes-extended/ghostscriptghostscript-9.02/mips/objarch.h
recipes-extended/ghostscriptghostscript-9.02/mips/soobjarch.h
recipes-extended/ghostscriptghostscript-9.02/x86_64/objarch.h
recipes-extended/ghostscriptghostscript-9.02/x86_64/soobjarch.h
recipes-extended/ghostscriptghostscript-9.02/arm/objarch.h
recipes-extended/ghostscriptghostscript-9.02/arm/soobjarch.h

Then just add file://objarch.h and file://soobjarch.h to SRC_URI and a

do_configure_prepend () {
     cp ${WORKDIR}/objarch.h ${S}/obj/arch.h
     cp ${WORKDIR}/soobjarch.h ${S}/soobj/arch.h
}

and the rest will happen automatically (you'll still need the lib.mak
bit of the patch applied unconditionally).

Cheers,

Richard


