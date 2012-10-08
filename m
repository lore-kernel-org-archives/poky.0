Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB48CE0027E
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 09:24:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Oct 2012 09:24:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,554,1344236400"; d="scan'208";a="203004979"
Received: from unknown (HELO helios.localnet) ([10.252.122.50])
	by orsmga001.jf.intel.com with ESMTP; 08 Oct 2012 09:24:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 08 Oct 2012 17:24:18 +0100
Message-ID: <5797264.jLXkT5xyjF@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-31-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <5072FBB8.9060703@mlbassoc.com>
References: <5072FBB8.9060703@mlbassoc.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Files missing from package
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
X-List-Received-Date: Mon, 08 Oct 2012 16:24:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 08 October 2012 10:13:44 Gary Thomas wrote:
> I'm building a package(recipe) for a system which uses opkg
> as the packaging tool.  In my recipe, I have these additional
> lines (only the relevant parts shown):
> 
>    do_install_append() {
>        install -d ${D}${sbindir}
>        install -d ${D}/etc
>        install -m 0755 ${S}/tools/get_tool ${D}${sbindir}
>        ln -s get_tool ${D}${sbindir}/put_tool
>        install -m 0644 ${WORKDIR}/tool.config ${D}/etc
>    }
> 
>    PACKAGES += "${PN}-tools"
>    FILES_${PN}-tools = "${sbindir}/get_tool \
>    		     ${sbindir}/put_tool \
>                         /etc/tool.config \
>    "
> 
> When the recipe is built, I get the correct files in my image:
>    $ find tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/
>    tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/
>    tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/etc
>   
> tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/etc/tool.conf
> ig tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/usr
> tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/usr/sbin
> tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/usr/sbin/get_
> tool
> tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/usr/sbin/put_
> tool tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/bin
> tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/bin/some_tool
> 
> However, the 'some-tool-tools' package it missing the '/etc/tools.config'
> file. I unpacked it manually to see this:
> 
>    $ tar -ztvf data.tar.gz
>    drwxr-xr-x root/root         0 2012-10-08 09:28 ./
>    drwxr-xr-x root/root         0 2012-10-08 09:28 ./usr/
>    drwxr-xr-x root/root         0 2012-10-08 09:28 ./usr/sbin/
>    lrwxrwxrwx root/root         0 2012-10-08 09:28 ./usr/sbin/put_tool ->
> get_tool -rwxr-xr-x root/root     15044 2012-10-08 09:28
> ./usr/sbin/get_tool
> 
> There is no '/etc' directory to be seen.
> 
> What am I doing wrong?  This is built using poky:master
> '7c39c87d52c20e47cf90275a16e4517a296c8388' from just a few days ago.

Since ${sysconfdir} is /etc by default and ${sysconfdir} is in the default 
value of FILES_${PN}, and your additional package is appended to PACKAGES, I 
suspect you'll find the file is being picked up by the main package first. You 
need to use =+ instead of += so that the some-tool-tools package is prepended 
to PACKAGES and thus gets the file before the main package.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

