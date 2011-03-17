Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D6684C806DA
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 02:51:43 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyj12 with SMTP id 12so3461849iyj.35
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 00:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:user-agent;
	bh=6k99UrgeeFP+nqPIxUZesZAMjptIrmhuwKFYyn8kuFc=;
	b=QgCYe0o6k2jNObX2dlc8/q40wi8Z/dbSr6j6LwYPm0vJirtbbpkdp/DsYXPk7qLlp7
	nPOnbz1AueC2ZgOPm5p68EkAJaU6AjF18tYUiT8bGORMEM1w4NtOE37LGFNZH0q5eKGR
	wXapqPNFdT51jRWRA30nDUtJDPGt8U8YtAFEI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	b=wh9GeCR7AFzmc8SuzXX9PZ4hdbYiyQl5ro/d9vWslWCMUazr+zzcBHVDFbFcuDVkyb
	XidH1KfZax0saWaVtZMXCift3uLZa2KgdrQVCPdWh0ucZ6Ms1odZfLHHAoCEvpvw9G9x
	hN+D9QwWBH9Qrv3SUWY41e+O9uQE/I/8HqpJQ=
Received: by 10.42.153.3 with SMTP id k3mr1414124icw.457.1300348303284;
	Thu, 17 Mar 2011 00:51:43 -0700 (PDT)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id gy41sm457461ibb.39.2011.03.17.00.51.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 17 Mar 2011 00:51:42 -0700 (PDT)
Date: Thu, 17 Mar 2011 00:52:36 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Gerard van den Bosch <gerard@de-haardt.com>
Message-ID: <20110317075236.GB27644@sakrah.homelinux.org>
Mail-Followup-To: Gerard van den Bosch <gerard@de-haardt.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	poky@yoctoproject.org
References: <4D7F4630.3030705@de-haardt.com> <1300196286.30423.1726.camel@rex>
	<4D7F7FB4.30007@de-haardt.com> <1300291688.30423.1890.camel@rex>
	<4D81BBAC.9000402@de-haardt.com>
MIME-Version: 1.0
In-Reply-To: <4D81BBAC.9000402@de-haardt.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: compile application header file missing
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
X-List-Received-Date: Thu, 17 Mar 2011 07:51:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> DESCRIPTION = "libxmlpcp"
> SECTION = "libs"
> DEPENDS = "openslp libxml2"
> LICENSE = "LGPL"
> 
> SRC_URI = "file://libxmlpcp.tar.gz"
> 
> EXTRA_OEMAKE = "'CFLAGS=${CFLAGS} -fPIC -c -I${OPIEDIR}${includedir}/libxml2' 'LDFLAGS=${LDFLAGS} -shared -lxml2 -lslp'"
> 
> do_install() {
>      install -d ${D}${libdir}
>      install -d ${D}${includedir}
>      oe_runmake 'INSTALLHEADERDIR=${D}${includedir}' 'INSTALLLIBDIR=${D}${libdir}' \
>      install
> }
> 
> But when build is done I can not find the lib in the actual rootfs, looking at the date the rootfs is being regenerated.
> 
> The lib file exists in the build tree on the following places:
> tmp/work/armv7a-poky-linux-gnueabi/libxmlpcp-0.1.0-r0/image/usr/lib
> tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib
> libxmlpcp-dbg_0.1.0-r0_armv7a.ipk and libxmlpcp-dev_0.1.0-r0_armv7a.ipk in the tmp/deploy/ipk/armv7a folder.
> 
> I only get a "strip" error, can this be the reason it isn't included in the rootfs?
> ERROR: runstrip: ''arm-poky-linux-gnueabi-strip' --remove-section=.comment --remove-section=.note --strip-unneeded '/home/gerard/green-3.3/build/tmp/work/armv7a-poky-linux-gnueabi/libxmlpcp-0.1.0-r0/package/usr/lib/libxmlpcp.so'' strip command failed

It could very well be. Can you run file or readelf -e over libxmlpcp.so
and see if it is for ARM architecture ?

-Khem

