Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C968DE0027E
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 09:13:23 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D987AF81209; Mon,  8 Oct 2012 10:13:22 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id AAEC9F8119A;
	Mon,  8 Oct 2012 10:13:21 -0600 (MDT)
Message-ID: <5072FBB8.9060703@mlbassoc.com>
Date: Mon, 08 Oct 2012 10:13:44 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Files missing from package
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
X-List-Received-Date: Mon, 08 Oct 2012 16:13:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm building a package(recipe) for a system which uses opkg
as the packaging tool.  In my recipe, I have these additional
lines (only the relevant parts shown):

   do_install_append() {
       install -d ${D}${sbindir}
       install -d ${D}/etc
       install -m 0755 ${S}/tools/get_tool ${D}${sbindir}
       ln -s get_tool ${D}${sbindir}/put_tool
       install -m 0644 ${WORKDIR}/tool.config ${D}/etc
   }

   PACKAGES += "${PN}-tools"
   FILES_${PN}-tools = "${sbindir}/get_tool \
   		     ${sbindir}/put_tool \
                        /etc/tool.config \
   "

When the recipe is built, I get the correct files in my image:
   $ find tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/
   tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/
   tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/etc
   tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/etc/tool.config
   tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/usr
   tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/usr/sbin
   tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/usr/sbin/get_tool
   tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/usr/sbin/put_tool
   tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/bin
   tmp/work/mytarget-poky-linux-gnueabi/some-tool-1.0-r0.1/image/bin/some_tool

However, the 'some-tool-tools' package it missing the '/etc/tools.config' file.
I unpacked it manually to see this:

   $ tar -ztvf data.tar.gz
   drwxr-xr-x root/root         0 2012-10-08 09:28 ./
   drwxr-xr-x root/root         0 2012-10-08 09:28 ./usr/
   drwxr-xr-x root/root         0 2012-10-08 09:28 ./usr/sbin/
   lrwxrwxrwx root/root         0 2012-10-08 09:28 ./usr/sbin/put_tool -> get_tool
   -rwxr-xr-x root/root     15044 2012-10-08 09:28 ./usr/sbin/get_tool

There is no '/etc' directory to be seen.

What am I doing wrong?  This is built using poky:master '7c39c87d52c20e47cf90275a16e4517a296c8388'
from just a few days ago.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

