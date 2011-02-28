Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews10.kpnxchange.com (cpsmtpb-ews10.kpnxchange.com
	[213.75.39.15])
	by mx1.pokylinux.org (Postfix) with ESMTP id 680774C800B1
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 08:49:11 -0600 (CST)
Received: from cpbrm-ews07.kpnxchange.com ([10.94.84.138]) by
	cpsmtpb-ews10.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 28 Feb 2011 15:49:10 +0100
Received: from CPSMTPM-cmt107.kpnxchange.com ([195.121.3.23]) by
	cpbrm-ews07.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 28 Feb 2011 15:49:10 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-cmt107.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Mon, 28 Feb 2011 15:49:09 +0100
Received: from [192.168.1.29] ([192.168.1.29])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits))
	for poky@yoctoproject.org; Mon, 28 Feb 2011 15:49:07 +0100
Message-ID: <4D6BB5E7.8060902@de-haardt.com>
Date: Mon, 28 Feb 2011 15:49:11 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
X-OriginalArrivalTime: 28 Feb 2011 14:49:09.0935 (UTC)
	FILETIME=[A8344BF0:01CBD756]
X-RcptDomain: yoctoproject.org
Subject: recipe gtk program include directories
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
X-List-Received-Date: Mon, 28 Feb 2011 14:49:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have created a simple program with GTK and now I want to add it as a 
package in poky.
Because it is a single C file I have constructed the following recipe:

DESCRIPTION = "Battery indication"
SECTION = "examples"
LICENSE = "GPL"
DEPENDS = "gtk+"

SRC_URI = "file://image.c"

S = "${WORKDIR}"

do_compile() {
     ${CC} image.c -o image
}

do_install() {
     install -d ${D}${bindir}
     install -m 0755 image ${D}${bindir}
}

Now I have the problem that on my ubuntu computer I normally add 
`pkg-config --libs --cflags gtk+-2.0` to the gcc compile line to include 
the right directories.

But I don't understand how to do this in a recipe, can someone point me 
to an example or explain how this is done?

I already looked at a clutter bb file and the gtk-theme bb file but I 
can't see where they do this.
I tried to add CFLAGS += "-Wl,-rpath-link,${STAGING_LIBDIR}" but when I 
compile it's still missing gtk/gtk.h.

Regards,
Gerard



