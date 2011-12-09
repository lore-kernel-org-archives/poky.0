Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9B0AE00303
	for <poky@yoctoproject.org>; Fri,  9 Dec 2011 15:35:21 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Dec 2011 15:35:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84861848"
Received: from unknown (HELO [10.255.13.9]) ([10.255.13.9])
	by orsmga001.jf.intel.com with ESMTP; 09 Dec 2011 15:35:21 -0800
Message-ID: <4EE29B38.3030104@linux.intel.com>
Date: Fri, 09 Dec 2011 15:35:20 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4EE2887C.3000601@gherzan.ro>
In-Reply-To: <4EE2887C.3000601@gherzan.ro>
Subject: Re: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Fri, 09 Dec 2011 23:35:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/12/11 14:15, Andrei Gherzan wrote:
> Hello guys,
> 
> I've been plying along with yocto lately and managed to understand at a
> decent level it's work-flow and components.
> 
> Today wanted to complete an image-core-minimal for arm using packages
> that are not GPLv3 using (found in manual):
> #EXTRA_IMAGE_FEATURES = "debug-tweaks"
> INCOMPATIBLE_LICENSE = "GPLv3"
> 
> Further more i wanted to compile gnutls and i think that i came across a
> bug. In the bb file (poky/meta/recipes-support/gnutls/gnutls_2.12.14.bb)
> the rules for pakages are:
> PACKAGES =+ "${PN}-openssl ${PN}-extra ${PN}-bin ${PN}-xx"
> 
> FILES_${PN} = "${libdir}/libgnutls.so.*"
> FILES_${PN}-bin = "${bindir}/gnutls-serv \
>                    ${bindir}/gnutls-cli \
>                    ${bindir}/srptool \
>                    ${bindir}/psktool \
>                    ${bindir}/p11tool \
>                    ${bindir}/certtool \
>                    ${bindir}/gnutls-srpcrypt"
> 
> FILES_${PN}-dev += "${bindir}/*-config ${bindir}/gnutls-cli-debug"
> FILES_${PN}-extra = "${libdir}/libgnutls-extra.so.*"
> FILES_${PN}-openssl = "${libdir}/libgnutls-openssl.so.*"
> FILES_${PN}-xx = "${libdir}/libgnutlsxx.so.*"
> 
> So the rpms should be named gnutls-dev, gnutls-bin etc etc.
> Well... this is not true cause in the
> tmp/work/armv5te-poky-linux-gnueabi/gnutls-2.12.14-r3.1/deploy-rpms
> directory i found:
> 
> drwxr-xr-x 2 agherzan agherzan    4096 2011-12-09 23:47 .
> drwxrwxr-x 3 agherzan agherzan    4096 2011-12-09 23:46 ..
> -rw-r--r-- 1 agherzan agherzan  306281 2011-12-09 23:47
> libgnutls26-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan  107347 2011-12-09 23:47
> libgnutls-bin-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan 1667211 2011-12-09 23:47
> libgnutls-dbg-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   63017 2011-12-09 23:47
> libgnutls-dev-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan  799229 2011-12-09 23:47
> libgnutls-doc-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   17962 2011-12-09 23:47
> libgnutls-extra26-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   12240 2011-12-09 23:47
> libgnutls-locale-cs-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan    7992 2011-12-09 23:47
> libgnutls-locale-de-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   10241 2011-12-09 23:47
> libgnutls-locale-en+boldquot-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   10192 2011-12-09 23:47
> libgnutls-locale-en+quot-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   12095 2011-12-09 23:47
> libgnutls-locale-fr-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   11857 2011-12-09 23:47
> libgnutls-locale-it-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   10325 2011-12-09 23:47
> libgnutls-locale-ms-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   11858 2011-12-09 23:47
> libgnutls-locale-nl-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   11973 2011-12-09 23:47
> libgnutls-locale-pl-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   11773 2011-12-09 23:47
> libgnutls-locale-sv-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   12338 2011-12-09 23:47
> libgnutls-locale-vi-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   10521 2011-12-09 23:47
> libgnutls-locale-zh-cn-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   18005 2011-12-09 23:47
> libgnutls-openssl27-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan 1795460 2011-12-09 23:47
> libgnutls-staticdev-2.12.14-r3.1.armv5te.rpm
> -rw-r--r-- 1 agherzan agherzan   18524 2011-12-09 23:47
> libgnutlsxx27-2.12.14-r3.1.armv5te.rpm
> 
> More infos: I'm using multithreading building and my last commit in poky
> is "commit af7fbd6083f4b5f1770e58fe0a2262951037c176."
> 
> I just cannot understand how these names are built. More, what are
> libgnutls-openssl27 and libgnutlsxx27?

This looks like our debian-style package renaming, which renames
libraries to include the lib prefix.

We have a brief blurb about it here:
http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-debian

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

