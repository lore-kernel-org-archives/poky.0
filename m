Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C222D4C802F2
	for <poky@yoctoproject.org>; Fri, 20 May 2011 20:35:40 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4L1ZbS2011121
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 20 May 2011 18:35:37 -0700 (PDT)
Received: from [128.224.162.196] (128.224.162.196) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 20 May 2011 18:35:36 -0700
Message-ID: <4DD71712.4000601@windriver.com>
Date: Sat, 21 May 2011 09:36:18 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1305891945.git.kai.kang@windriver.com>	
	<2a1f54c36d74702b453845dcba5564ac6d357aa7.1305891945.git.kai.kang@windriver.com>
	<1305908321.3424.658.camel@rex>
In-Reply-To: <1305908321.3424.658.camel@rex>
X-Originating-IP: [128.224.162.196]
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
X-List-Received-Date: Sat, 21 May 2011 01:35:41 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Richard,
> Hi,
>
> On Fri, 2011-05-20 at 20:19 +0800, Kang Kai wrote:
>> From: Kang Kai<kai.kang@windriver.com>
>>
>> When run gs on mpc8315, it fails with:
>> GPL Ghostscript 9.02: ./psi/interp.c(291): Fatal error -20 in gs_interp_init!
>> It is caused by cross compile.
>>
>> Accoding to the ghostscript document on:
>> http://pages.cs.wisc.edu/~ghost/doc/cvs/Make.htm#Cross-compiling
>> it needs some manual work, so import patches from WindRiver Linux.
>>
>> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> There is a way to do this more neatly within OE. You can create a
> directory structure of:
>
> recipes-extended/ghostscriptghostscript-9.02/powerpc/objarch.h
> recipes-extended/ghostscriptghostscript-9.02/powerpc/soobjarch.h
> recipes-extended/ghostscriptghostscript-9.02/i586/objarch.h
> recipes-extended/ghostscriptghostscript-9.02/i586/soobjarch.h
> recipes-extended/ghostscriptghostscript-9.02/mips/objarch.h
> recipes-extended/ghostscriptghostscript-9.02/mips/soobjarch.h
> recipes-extended/ghostscriptghostscript-9.02/x86_64/objarch.h
> recipes-extended/ghostscriptghostscript-9.02/x86_64/soobjarch.h
> recipes-extended/ghostscriptghostscript-9.02/arm/objarch.h
> recipes-extended/ghostscriptghostscript-9.02/arm/soobjarch.h
>
> Then just add file://objarch.h and file://soobjarch.h to SRC_URI and a
>
> do_configure_prepend () {
>       cp ${WORKDIR}/objarch.h ${S}/obj/arch.h
>       cp ${WORKDIR}/soobjarch.h ${S}/soobj/arch.h
> }
>
> and the rest will happen automatically (you'll still need the lib.mak
> bit of the patch applied unconditionally).
Thanks, I will update the pull request.

> Cheers,
>
> Richard
>
Regards,
Kai


