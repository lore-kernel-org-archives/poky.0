Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36D7DE00717
	for <poky@yoctoproject.org>; Tue, 28 Aug 2012 10:05:34 -0700 (PDT)
Received: by eabd1 with SMTP id d1so1842904eab.35
	for <poky@yoctoproject.org>; Tue, 28 Aug 2012 10:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=DfFymf2pflJ+0OkXUVnrPsVNNyTtetBu+uVspnZZkUo=;
	b=T02iRFxLB96+PdkXn5WRJEDw0rP3TiQSxRMGNjg+1Vddr2jN8BVtUD+hf2gGNtMW3+
	BhwkBP870nHDcyIAUqCmUgnm2yrBaDW0/lwzFtAlfUrmMjX9yeTYvGQ6+uq9dF00YIHh
	JQlXPk5ZlkpHsWh5OA4XXzk78NPhRR+Nnx1YMC9ZSKihcqV1YKOMDCs1bALFrQyIvrHq
	9NZq0yLeSkzXXwx/5A2K/0hMHNOLj0LJWUIiYt0U3XFQSFV5xuFTjDO6O08gidNR9xXF
	A/Ihg8oYhNkJXzCv7AdxhJZ7GIdLbjNGU73rvBO3t4qlO4EV4D09Ph3NmuacPN6f6Xei
	V8/g==
Received: by 10.14.5.67 with SMTP id 43mr22846426eek.15.1346173533363; Tue, 28
	Aug 2012 10:05:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Tue, 28 Aug 2012 10:05:02 -0700 (PDT)
In-Reply-To: <1346136618.70838.YahooMailNeo@web194606.mail.sg3.yahoo.com>
References: <1346136618.70838.YahooMailNeo@web194606.mail.sg3.yahoo.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 28 Aug 2012 10:05:02 -0700
Message-ID: <CAMKF1spJJ0Naw=Y7PR6uvNGG_1etM3XfJUYraTRyb8SSVpxH7g@mail.gmail.com>
To: Sparsh Wid hope <sparsh150847@yahoo.com>
Cc: poky <poky@yoctoproject.org>
Subject: Re: Problem while compiling libvpx
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Aug 2012 17:05:34 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 27, 2012 at 11:50 PM, Sparsh Wid hope
<sparsh150847@yahoo.com> wrote:
> Hi All,
>
> I'm compiling libvpx through poky and got the error related to linking of
> toolchain. Build info is here:
>
> OE Build Configuration:
> BB_VERSION        = "1.11.0"
> METADATA_BRANCH   = "bernard-cur"
> METADATA_REVISION = "1f2e1abbe2726ea6fc83e83b644ce7ee32a54fa2"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "fishriver"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.0"
> TARGET_FPU        = ""
>
> Error log is as follows:
>
> ERROR: Logfile of failure stored in:
> /home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/work/atom-poky-linux/libvpx-1.0-r0/temp/log.do_configure.4510
> Log data follows:
> | Configuring selected codecs
> |   enabling vp8_encoder
> |   enabling vp8_decoder
> | Configuring for target 'x86-linux-gcc'
> |   enabling x86
> |   enabling pic
> |   enabling runtime_cpu_detect
> |   enabling mmx
> |   enabling sse
> |   enabling sse2
> |   enabling sse3
> |   enabling ssse3
> |   enabling sse4_1
> |   using i586-poky-linux-as
> |   enabling postproc
> | Toolchain is unable to link executables
> |
> | Configuration failed. This could reflect a misconfiguration of your
> | toolchains, improper options selected, or another problem. If you
> | don't see any useful error messages above, the next step is to look
> | at the configure error log file (config.err) to determine what
> | configure was trying to do when it died.
>
> Please help me to resolve the error.
>

you need to send more information. are there config.log files generated in
the build tree?


> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

