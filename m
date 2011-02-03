Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 91C1D4C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 08:15:44 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 784E8186DEC8
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 15:15:43 +0100 (CET)
X-Auth-Info: OvDTOEDDptNd2Pa+uVESbjt5iLLkCyiXOy1RdliPlB8=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 50C321C000F5
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 15:15:43 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 30E622000AC6
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 15:15:43 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 0C504D81AE2
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 15:15:43 +0100 (CET)
To: poky@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Thu, 03 Feb 2011 15:15:43 +0100
Message-Id: <20110203141543.0C504D81AE2@gemini.denx.de>
Subject: Build of prelink_git.bb fails
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
X-List-Received-Date: Thu, 03 Feb 2011 14:15:45 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Hello,

when building poky-image-sato-sdk in recent versions the build fails
with:

ERROR: 'virtual:native:/opt/poky/git/poky/work/meta/recipes-devtools/prelink/prelink_git.bb' failed
ERROR: Function 'do_compile' failed (see /opt/poky/build/mainline-test/tmp/work/x86_64-linux/prelink-native-1.0+git1+909470ee441237563d6236c505cb2d02ddc48704-r0/temp/log.do_compile.10035 for further information)


It appears that's because some "fancyheadings.sty" cannot be found:

from log.do_compile.10035:

...
(/usr/share/texmf/tex/latex/pdftex-def/pdftex.def))
(/usr/share/texmf/tex/latex/type1cm/type1cm.sty)
(/usr/share/texmf/tex/generic/thumbpdf/thumbpdf.sty

Package thumbpdf Warning: Thumbnail data file `prelink.tpt' not found.

) (/usr/share/texmf/tex/plain/misc/pdfcolor.tex)
(/usr/share/texmf/tex/latex/eso-pic/eso-pic.sty
(/usr/share/texmf/tex/latex/everyshi/everyshi.sty)
(/usr/share/texmf/tex/latex/graphics/keyval.sty))
(/usr/share/texmf/tex/latex/graphics/color.sty
(/usr/share/texmf/tex/latex/config/color.cfg))

! LaTeX Error: File `fancyheadings.sty' not found.

Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

Enter file name:
! Emergency stop.
<read *>

l.116 \pagestyle
                {fancy}^^M
!  ==> Fatal error occurred, no output PDF file produced!
Transcript written on prelink.log.
make[2]: *** [prelink.pdf] Error 1
make[2]: Leaving directory `/opt/poky/build/mainline-test/tmp/work/x86_64-linux/prelink-native-1.0+git1+909470ee441237563d6236c505cb2d02ddc48704-r0/git/trunk/doc'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/opt/poky/build/mainline-test/tmp/work/x86_64-linux/prelink-native-1.0+git1+909470ee441237563d6236c505cb2d02ddc48704-r0/git/trunk'
make: *** [all] Error 2
FATAL: oe_runmFunction 'do_compile' failed (see /opt/poky/build/mainline-test/tmp/work/x86_64-linux/prelink-native-1.0+git1+909470ee441237563d6236c505cb2d02ddc48704-r0/temp/log.do_compile.10035 for further information)


This must be because one of the recently added changes (within the
last 48 hors or so).

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"We don't have to protect the environment -- the Second Coming is  at
hand."                                                   - James Watt

