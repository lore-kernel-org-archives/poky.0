Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4337E006D9
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 09:58:07 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-MD5; 22 Jun 2012 09:58:06 -0700
Received: by pbbro8 with SMTP id ro8so3864498pbb.25
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 09:58:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=JsDu31Vxs5gN52gB+CJ4//JgZD7V8GRk+aZgWatekvU=;
	b=FmlJ9vddDY7U7w9XaZBbLehvGZrKLUVBAXuYfi6JHVtZzI/Z4s1alSAFhUQ8GEWzrR
	Gg7/KpaIM7WjCzlgO09s0U92oEKtSQG9CH7SXtHj+g9qe/usW/MYEE8bWMbt7JNenfbk
	32PZM4MhUXEbyyyB55X4kXR4jy0Ky46L5SnmueK4utwFtL/SPDw1UBzcPkv8djSGM1hf
	KT65LMV+NXyhXb3l7qHcR/D4Pp//IHe3KZYXjT8658uau7rW9TRWrNb8IgQwmGuQ+xQA
	yeyd79ooEi8ZUlvV0Os2zP251CuT29EXWzAOeGeGX7+VHjKKoR+kbgUWFiy2AKjZRwyJ
	tZhw==
Received: by 10.68.192.39 with SMTP id hd7mr11705441pbc.97.1340384285557;
	Fri, 22 Jun 2012 09:58:05 -0700 (PDT)
Received: from [10.1.10.192] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id ns5sm39441958pbb.26.2012.06.22.09.58.03
	(version=SSLv3 cipher=OTHER); Fri, 22 Jun 2012 09:58:04 -0700 (PDT)
Message-ID: <4FE4A41A.7090906@intel.com>
Date: Fri, 22 Jun 2012 09:58:02 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <47c63612.1964.1381327a5cb.Coremail.scanli@126.com>
In-Reply-To: <47c63612.1964.1381327a5cb.Coremail.scanli@126.com>
X-Gm-Message-State: ALoCoQk/cjFVqki6Bj3JohvcogSURbqfTticZQ+9c2HVF9LO/zIDlAUH58fVxXvkFvEOK+7socda
Subject: Re: Is there bug in the newest poky-denzil7.01?
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
X-List-Received-Date: Fri, 22 Jun 2012 16:58:07 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 06/22/2012 12:46 AM, 李金成 wrote:
> I'm trying the newest poky-denzil7.01/1.2.1,and found one problem:
> My develop environment：
>       Ubuntu 12.04 LTS.
>       use the external CSL toolchain--*Sourcery CodeBench Lite
> 2011.09-70*.the toolchain path is: /home/ljc/arm-2011.09/arm/
> My steps:
>     1.  download the newest poky-denzil7.01/1.2.1 from
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-denzil.tar.bz2.
>     2.  decompressioned it to /home/ljc/
>     3.  cd /home/ljc/poky-denzil
>     4.  modified /home/ljc/poky-denzil/meta-yocto/conf/distro/poky.conf.
>         add the fellow lines:
>           TCMODE = "external-csl"
>           CSL_VER_MAIN  = "2011.09-70"
>           EXTERNAL_TOOLCHAIN = "/home/ljc/arm-2011.09/arm"
>           TARGET_PREFIX = "arm-none-linux-gnueabi-"
>     5.  modified
> /home/ljc/poky-denzil/meta/conf/distro/include/tcmode-external-csl.inc
>           from
>             TARGET_PREFIX = "${CSL_TARGET_SYS}-"
>           to
>             TARGET_PREFIX ?= "${CSL_TARGET_SYS}-"
>     6.   . oe-init-build-env
>     7.   then input command:  hob
>     8.   In hob gui:
>             Select machine: qemuarm
>             Select a base image:core-image-minimal
>             press down：Build image
>     9. After a long time the HOB stopped:
>          Building packages...
>             Running task 1147 of 1148:do_build
>             Recipe:task-core-boot
>             -----------------------------------------------------
>             |               Build completed:90%          |      |    Stop
>             -----------------------------------------------------
>      10. the HOB can't be closed with the GUI window's "Stop" botton or
> X icon.

This sounds like a legitimate bug. Can you please file it on our bugtracker?

https://bugzilla.yoctoproject.org/

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center



