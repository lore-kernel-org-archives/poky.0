Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 700EBE013DA
	for <poky@yoctoproject.org>; Sun, 18 Aug 2013 12:51:30 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DA7CCF811E5; Sun, 18 Aug 2013 13:51:26 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A6007F811E2;
	Sun, 18 Aug 2013 13:51:25 -0600 (MDT)
Message-ID: <521125C4.1060504@mlbassoc.com>
Date: Sun, 18 Aug 2013 13:51:32 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <CAAVaN8zhLszZ_zN3O0E69ZqD+kFnEVUR48rkNy833jXm5PE42A@mail.gmail.com>
In-Reply-To: <CAAVaN8zhLszZ_zN3O0E69ZqD+kFnEVUR48rkNy833jXm5PE42A@mail.gmail.com>
Subject: Re: file permissions in the rootfs
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
X-List-Received-Date: Sun, 18 Aug 2013 19:51:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-18 04:40, Andy Ng wrote:
> Dear List,
>
> I try to build Poky 7.0.1  and the final rootfs image doesn't not mount with the following problem:
>
> ----------------------8<-------------------------8<------------------------------
> BIFS: mounted UBI device 0, volume 0, name "polatisnic-rootfs"
> UBIFS: mounted read-only
> UBIFS: file system size:   10737408 bytes (10485 KiB, 10 MiB, 82 LEBs)
> UBIFS: journal size:       1964160 bytes (1918 KiB, 1 MiB, 15 LEBs)
> UBIFS: media format:       w4/r0 (latest is w4/r0)
> UBIFS: default compressor: lzo
> UBIFS: reserved for root:  0 bytes (0 KiB)
> VFS: Mounted root (ubifs filesystem) readonly on device 0:14.
> devtmpfs: mounted
> Freeing init memory: 208K
> INIT: version 2.88 booting
> mount: permission denied (are you root?)
> mount: permission denied (are you root?)
> grep: /proc/filesystems: No such file or directory
> mount: permission denied (are you root?)
> grep: /proc/mounts: No such file or directory
> grep: /proc/mounts: No such file or directory
> Remounting root file system...
> mount: can't read '/etc/mtab': No such file or directory
> ------------------------8<-----------------------------------8<------------------
>
> After a bit of research, I have found out that the busybox was populated in the rootfs
> under ownership of "andreas:andreas" instead of "root:root", and its symbolic links under "root:root"
>
> I fixed manually the ownership and it booted  up.
>
> Does anyone knows what might be going wrong in my build process?

Explain your build process in detail (UBIFS is not a very common deployment)
in order to get help.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

