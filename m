Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 610804C800A8
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 08:22:47 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p13EMgtr001938;
	Thu, 3 Feb 2011 06:22:42 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 06:22:42 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 06:22:41 -0800
Message-ID: <4D4ABA30.4020505@windriver.com>
Date: Thu, 03 Feb 2011 08:22:40 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20110203141543.0C504D81AE2@gemini.denx.de>
In-Reply-To: <20110203141543.0C504D81AE2@gemini.denx.de>
X-OriginalArrivalTime: 03 Feb 2011 14:22:41.0605 (UTC)
	FILETIME=[D1289F50:01CBC3AD]
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
X-List-Received-Date: Thu, 03 Feb 2011 14:22:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Something is wrong with your host system.  Nothing has changed with the prelink
integration since late December.

The failure seems to indicate a broken latex, tetex and/or tex2pdf installation.

--Mark

On 2/3/11 8:15 AM, Wolfgang Denk wrote:
> Hello,
> 
> when building poky-image-sato-sdk in recent versions the build fails
> with:
> 
> ERROR: 'virtual:native:/opt/poky/git/poky/work/meta/recipes-devtools/prelink/prelink_git.bb' failed
> ERROR: Function 'do_compile' failed (see /opt/poky/build/mainline-test/tmp/work/x86_64-linux/prelink-native-1.0+git1+909470ee441237563d6236c505cb2d02ddc48704-r0/temp/log.do_compile.10035 for further information)
> 
> 
> It appears that's because some "fancyheadings.sty" cannot be found:
> 
> from log.do_compile.10035:
> 
> ...
> (/usr/share/texmf/tex/latex/pdftex-def/pdftex.def))
> (/usr/share/texmf/tex/latex/type1cm/type1cm.sty)
> (/usr/share/texmf/tex/generic/thumbpdf/thumbpdf.sty
> 
> Package thumbpdf Warning: Thumbnail data file `prelink.tpt' not found.
> 
> ) (/usr/share/texmf/tex/plain/misc/pdfcolor.tex)
> (/usr/share/texmf/tex/latex/eso-pic/eso-pic.sty
> (/usr/share/texmf/tex/latex/everyshi/everyshi.sty)
> (/usr/share/texmf/tex/latex/graphics/keyval.sty))
> (/usr/share/texmf/tex/latex/graphics/color.sty
> (/usr/share/texmf/tex/latex/config/color.cfg))
> 
> ! LaTeX Error: File `fancyheadings.sty' not found.
> 
> Type X to quit or <RETURN> to proceed,
> or enter new name. (Default extension: sty)
> 
> Enter file name:
> ! Emergency stop.
> <read *>
> 
> l.116 \pagestyle
>                 {fancy}^^M
> !  ==> Fatal error occurred, no output PDF file produced!
> Transcript written on prelink.log.
> make[2]: *** [prelink.pdf] Error 1
> make[2]: Leaving directory `/opt/poky/build/mainline-test/tmp/work/x86_64-linux/prelink-native-1.0+git1+909470ee441237563d6236c505cb2d02ddc48704-r0/git/trunk/doc'
> make[1]: *** [all-recursive] Error 1
> make[1]: Leaving directory `/opt/poky/build/mainline-test/tmp/work/x86_64-linux/prelink-native-1.0+git1+909470ee441237563d6236c505cb2d02ddc48704-r0/git/trunk'
> make: *** [all] Error 2
> FATAL: oe_runmFunction 'do_compile' failed (see /opt/poky/build/mainline-test/tmp/work/x86_64-linux/prelink-native-1.0+git1+909470ee441237563d6236c505cb2d02ddc48704-r0/temp/log.do_compile.10035 for further information)
> 
> 
> This must be because one of the recently added changes (within the
> last 48 hors or so).
> 
> Best regards,
> 
> Wolfgang Denk
> 


