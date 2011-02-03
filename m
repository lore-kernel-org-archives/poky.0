Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFAF64C800A8
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 08:47:07 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id C00851824445;
	Thu,  3 Feb 2011 15:47:06 +0100 (CET)
X-Auth-Info: zjEU47v4UDhvKmEAPNqggGbeHRMaqSTeamqY10Lb4Pc=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 83DE81C00133;
	Thu,  3 Feb 2011 15:47:06 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 5EB04323DF56;
	Thu,  3 Feb 2011 15:47:06 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 413BDD81AE2;
	Thu,  3 Feb 2011 15:47:06 +0100 (CET)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1296744208.1544.9277.camel@rex>
References: <20110203141543.0C504D81AE2@gemini.denx.de>
	<4D4ABA30.4020505@windriver.com> <1296744208.1544.9277.camel@rex>
Comments: In-reply-to Richard Purdie <richard.purdie@linuxfoundation.org>
	message dated "Thu, 03 Feb 2011 14:43:28 +0000."
Date: Thu, 03 Feb 2011 15:47:06 +0100
Message-Id: <20110203144706.413BDD81AE2@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: Build of prelink_git.bb fails
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
X-List-Received-Date: Thu, 03 Feb 2011 14:47:08 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Richard Purdie,

In message <1296744208.1544.9277.camel@rex> you wrote:
> On Thu, 2011-02-03 at 08:22 -0600, Mark Hatle wrote:
> > Something is wrong with your host system.  Nothing has changed with the prelink
> > integration since late December.
> > 
> > The failure seems to indicate a broken latex, tetex and/or tex2pdf installation.
> 
> Nothing changed in prelink but we did add some doc tools of various
> kinds which might have triggered this.
> 
> Wolfgang - can you share a list of other native packages which have been
> built? You can see this by looking for do_populate_sysroot* stamps in
> the tmp/stamps/<native system>/ directory.

$ ls tmp/stamps/x86_64-linux/*do_populate_sysroot*
tmp/stamps/x86_64-linux/acl-native-2.2.49-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/attr-native-2.4.44-r2.do_populate_sysroot
tmp/stamps/x86_64-linux/autoconf-native-2.65-r2.do_populate_sysroot
tmp/stamps/x86_64-linux/automake-native-1.11.1-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/bigreqsproto-native-1_1.1.1-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/binutils-native-2.21-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/bison-native-2.4.3-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/boost-jam-native-3.1.18-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/bzip2-native-1.0.6-r3.do_populate_sysroot
tmp/stamps/x86_64-linux/cmake-native-2.8.3-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/cross-localedef-native-2.12-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/curl-native-7.21.2-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/db-native-5.1.19-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/dbus-glib-native-0.92-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/dbus-native-1.4.1-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/desktop-file-utils-native-0.15-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/e2fsprogs-native-1.41.12-r20.do_populate_sysroot
tmp/stamps/x86_64-linux/eggdbus-native-0.6-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/elfutils-native-0.148-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/expat-native-2.0.1-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/file-native-5.04-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/flex-native-2.5.35-r2.do_populate_sysroot
tmp/stamps/x86_64-linux/font-util-native-1.2.0-r2.1.do_populate_sysroot
tmp/stamps/x86_64-linux/freetype-native-2.4.4-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/gconf-dbus-native-2.16.0+svnr705-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/genext2fs-native-1.4.1-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/gettext-native-0.17-r5.do_populate_sysroot
tmp/stamps/x86_64-linux/git-native-1.7.3.4-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/glib-2.0-native-1_2.26.1-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/gmp-native-5.0.1-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/gnome-doc-utils-native-0.20.4-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/gnu-config-native-0.1+cvs20080123-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/gperf-native-3.0.4-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/gtk-doc-native-1.0-r4.do_populate_sysroot
tmp/stamps/x86_64-linux/guilt-native-0.33-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/gzip-native-1.4-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/icon-naming-utils-native-0.8.7-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/icu-native-3.6-r6.do_populate_sysroot
tmp/stamps/x86_64-linux/inputproto-native-1_2.0.1-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/intltool-native-0.40.6-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/kbproto-native-1_1.0.5-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/kern-tools-native-0.1+git1+fde7ef8fa8043607752563b9b7908f487eb2f7dd-r10.do_populate_sysroot
tmp/stamps/x86_64-linux/ldconfig-native-2.5-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/libfontenc-native-1_1.1.0-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/libice-native-1_1.0.7-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/libmpc-native-0.8.2-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/libpcre-native-8.10-r4.do_populate_sysroot
tmp/stamps/x86_64-linux/libsm-native-1_1.2.0-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/libtasn1-native-2.9-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/libtool-native-2.4-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/libx11-native-1_1.3.4-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/libxau-native-1_1.0.6-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/libxdmcp-native-1_1.1.0-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/libxkbfile-native-1_1.0.7-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/libxml-parser-perl-native-2.36-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/libxml-simple-perl-native-2.18-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/libxml2-native-2.7.7-r4.do_populate_sysroot
tmp/stamps/x86_64-linux/libxslt-native-1.1.26-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/lzo-native-2.04-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/m4-native-1.4.15-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/makedevs-native-1.0.0-r7.do_populate_sysroot
tmp/stamps/x86_64-linux/mkfontdir-native-1_1.0.6-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/mkfontscale-native-1.0.8-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/mpfr-native-3.0.0-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/ncurses-native-5.7-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/openssl-native-0.9.8p-r2.do_populate_sysroot
tmp/stamps/x86_64-linux/opkg-native-1_0.1.8+svnr596-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/pax-utils-native-0.2.2-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/perl-native-5.12.2-r4.do_populate_sysroot
tmp/stamps/x86_64-linux/pkgconfig-native-0.25-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/popt-native-1.16-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/pseudo-native-0.0+git1+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17.do_populate_sysroot
tmp/stamps/x86_64-linux/python-native-2.6.6-nk0.0.do_populate_sysroot
tmp/stamps/x86_64-linux/python-pyrex-native-0.9.9-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/qemu-helper-native-1.0-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/qemu-native-0.13.0-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/qt4-tools-native-4.7.1-r11.0.do_populate_sysroot
tmp/stamps/x86_64-linux/quilt-native-0.48-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/readline-native-6.1-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/rpm-native-5.4.0-r10.do_populate_sysroot
tmp/stamps/x86_64-linux/shared-mime-info-native-0.80-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/sqlite3-native-3.7.3-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/tcl-native-8.5.9-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/tzcode-native-2009r-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/unifdef-native-2.6.18+git-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/update-rc.d-native-0.7-r3.do_populate_sysroot
tmp/stamps/x86_64-linux/util-linux-native-2.17.2-r4.do_populate_sysroot
tmp/stamps/x86_64-linux/util-macros-native-1_1.11.0-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/xcb-proto-native-1.6-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/xcmiscproto-native-1_1.2.1-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/xextproto-native-1_7.1.2-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/xf86bigfontproto-native-1_1.2.0-r1.do_populate_sysroot
tmp/stamps/x86_64-linux/xkbcomp-native-1.2.0-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/xproto-native-1_7.0.20-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/xtrans-native-1_1.2.6-r0.do_populate_sysroot
tmp/stamps/x86_64-linux/zlib-native-1.2.5-r0.do_populate_sysroot



Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"I go on working for the same reason a hen goes on laying eggs."
- H. L. Mencken

