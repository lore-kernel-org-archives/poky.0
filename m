Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40D064C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 10:15:13 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p13GF67o025010;
	Thu, 3 Feb 2011 08:15:06 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 08:15:06 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 08:15:05 -0800
Message-ID: <4D4AD488.7070408@windriver.com>
Date: Thu, 03 Feb 2011 10:15:04 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20110203141543.0C504D81AE2@gemini.denx.de>
	<4D4ABA30.4020505@windriver.com>
	<20110203144518.51D71D81AE2@gemini.denx.de>
In-Reply-To: <20110203144518.51D71D81AE2@gemini.denx.de>
X-OriginalArrivalTime: 03 Feb 2011 16:15:05.0961 (UTC)
	FILETIME=[851BAD90:01CBC3BD]
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
X-List-Received-Date: Thu, 03 Feb 2011 16:15:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On my Fedora 14 machine, I am now receiving the same error.  So it is something
that changed overnight, unrelated to the prelinker.

I also attempted to find the fancyheadings.sty, and was unable to find it on my
host.

It appears the docbook native patch that went in to fix the integration
triggered this failure.  The issue is that with a host-tool docbook, we're no
longer able to build the documentation, so prelink no longer works.

I suspect the issue is in docbook, but I don't know that for sure.  Until then
the following hack will disable documentation and allow your build to continue:

diff --git a/meta/recipes-devtools/prelink/prelink_git.bb b/meta/recipes-devtool
index 1601443..8620513 100644
--- a/meta/recipes-devtools/prelink/prelink_git.bb
+++ b/meta/recipes-devtools/prelink/prelink_git.bb
@@ -27,6 +27,11 @@ BBCLASSEXTEND = "native"
 EXTRA_OECONF = "--disable-selinux --with-pkgversion=${PV}-${PR} \
        --with-bugurl=http://bugzilla.pokylinux.org/"

+do_configure_prepend () {
+        # Disable documentation!
+        echo "all:" > ${S}/doc/Makefile.am
+}
+
 do_install_append () {
        install -d ${D}${sysconfdir}/cron.daily ${D}${sysconfdir}/default
        install -m 0644 ${WORKDIR}/prelink.conf ${D}${sysconfdir}/prelink.conf

--Mark

On 2/3/11 8:45 AM, Wolfgang Denk wrote:
> Dear Mark,
> 
> In message <4D4ABA30.4020505@windriver.com> you wrote:
>> Something is wrong with your host system.  Nothing has changed with the prelink
>> integration since late December.
> 
> Hm... I was able to complete a build of top of tree two days ago, on
> the same system.
> 
> This is Fedora 14 on a x86_64 box.
> 
>> The failure seems to indicate a broken latex, tetex and/or tex2pdf installation.
> 
> Do you happen to know which package is supposed to provide
> "fancyheadings.sty" ?  I cannot find this file on any of my Fedora
> boxen...
> 
> Best regards,
> 
> Wolfgang Denk
> 


