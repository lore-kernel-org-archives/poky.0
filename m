Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB913E00303
	for <poky@yoctoproject.org>; Fri,  9 Dec 2011 14:15:26 -0800 (PST)
Received: by eekb47 with SMTP id b47so2260511eek.35
	for <poky@yoctoproject.org>; Fri, 09 Dec 2011 14:15:25 -0800 (PST)
Received: by 10.14.2.11 with SMTP id 11mr1090331eee.124.1323468924988;
	Fri, 09 Dec 2011 14:15:24 -0800 (PST)
Received: from [192.168.1.2] ([79.117.116.240])
	by mx.google.com with ESMTPS id d6sm36716795eec.10.2011.12.09.14.15.24
	(version=SSLv3 cipher=OTHER); Fri, 09 Dec 2011 14:15:24 -0800 (PST)
Message-ID: <4EE2887C.3000601@gherzan.ro>
Date: Sat, 10 Dec 2011 00:15:24 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Fri, 09 Dec 2011 22:15:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello guys,

I've been plying along with yocto lately and managed to understand at a 
decent level it's work-flow and components.

Today wanted to complete an image-core-minimal for arm using packages 
that are not GPLv3 using (found in manual):
#EXTRA_IMAGE_FEATURES = "debug-tweaks"
INCOMPATIBLE_LICENSE = "GPLv3"

Further more i wanted to compile gnutls and i think that i came across a 
bug. In the bb file (poky/meta/recipes-support/gnutls/gnutls_2.12.14.bb) 
the rules for pakages are:
PACKAGES =+ "${PN}-openssl ${PN}-extra ${PN}-bin ${PN}-xx"

FILES_${PN} = "${libdir}/libgnutls.so.*"
FILES_${PN}-bin = "${bindir}/gnutls-serv \
                    ${bindir}/gnutls-cli \
                    ${bindir}/srptool \
                    ${bindir}/psktool \
                    ${bindir}/p11tool \
                    ${bindir}/certtool \
                    ${bindir}/gnutls-srpcrypt"

FILES_${PN}-dev += "${bindir}/*-config ${bindir}/gnutls-cli-debug"
FILES_${PN}-extra = "${libdir}/libgnutls-extra.so.*"
FILES_${PN}-openssl = "${libdir}/libgnutls-openssl.so.*"
FILES_${PN}-xx = "${libdir}/libgnutlsxx.so.*"

So the rpms should be named gnutls-dev, gnutls-bin etc etc.
Well... this is not true cause in the 
tmp/work/armv5te-poky-linux-gnueabi/gnutls-2.12.14-r3.1/deploy-rpms 
directory i found:

drwxr-xr-x 2 agherzan agherzan    4096 2011-12-09 23:47 .
drwxrwxr-x 3 agherzan agherzan    4096 2011-12-09 23:46 ..
-rw-r--r-- 1 agherzan agherzan  306281 2011-12-09 23:47 
libgnutls26-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan  107347 2011-12-09 23:47 
libgnutls-bin-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan 1667211 2011-12-09 23:47 
libgnutls-dbg-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   63017 2011-12-09 23:47 
libgnutls-dev-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan  799229 2011-12-09 23:47 
libgnutls-doc-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   17962 2011-12-09 23:47 
libgnutls-extra26-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   12240 2011-12-09 23:47 
libgnutls-locale-cs-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan    7992 2011-12-09 23:47 
libgnutls-locale-de-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   10241 2011-12-09 23:47 
libgnutls-locale-en+boldquot-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   10192 2011-12-09 23:47 
libgnutls-locale-en+quot-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   12095 2011-12-09 23:47 
libgnutls-locale-fr-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   11857 2011-12-09 23:47 
libgnutls-locale-it-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   10325 2011-12-09 23:47 
libgnutls-locale-ms-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   11858 2011-12-09 23:47 
libgnutls-locale-nl-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   11973 2011-12-09 23:47 
libgnutls-locale-pl-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   11773 2011-12-09 23:47 
libgnutls-locale-sv-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   12338 2011-12-09 23:47 
libgnutls-locale-vi-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   10521 2011-12-09 23:47 
libgnutls-locale-zh-cn-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   18005 2011-12-09 23:47 
libgnutls-openssl27-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan 1795460 2011-12-09 23:47 
libgnutls-staticdev-2.12.14-r3.1.armv5te.rpm
-rw-r--r-- 1 agherzan agherzan   18524 2011-12-09 23:47 
libgnutlsxx27-2.12.14-r3.1.armv5te.rpm

More infos: I'm using multithreading building and my last commit in poky 
is "commit af7fbd6083f4b5f1770e58fe0a2262951037c176."

I just cannot understand how these names are built. More, what are 
libgnutls-openssl27 and libgnutlsxx27?

