Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E6C8E008A7; Wed, 11 Feb 2015 00:27:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.sysmocom.de (mail.sysmocom.de [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6986AE002F9
	for <poky@yoctoproject.org>; Wed, 11 Feb 2015 00:27:28 -0800 (PST)
Received: from sangmingze-mail.local (unknown [IPv6:2001:5c0:1400:a::38d])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 17212A6082;
	Wed, 11 Feb 2015 08:27:23 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.84)
	(envelope-from <holger@freyther.de>)
	id 1YLSdT-0002J2-6L; Wed, 11 Feb 2015 09:27:03 +0100
Date: Wed, 11 Feb 2015 09:27:03 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20150211082703.GA3213@xiaoyu.lan>
References: <20150210184309.GB19902@xiaoyu.lan>
	<1423608686.20217.54.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <1423608686.20217.54.camel@linuxfoundation.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: poky@yoctoproject.org
Subject: Re: kernel.release being regenerated
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
X-List-Received-Date: Wed, 11 Feb 2015 08:27:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 10, 2015 at 10:51:26PM +0000, Richard Purdie wrote:
> Hi Holger,

Hi Richard,

> The fact the kernel.release is being recreated suggests something in the
> configuration is changing (different environment or commandline
> options?) or that there is a problem in your kernel to do with the
> Makefiles and the dependencies of the kernel.release file.

This issue should be seen by everyone but the race is pretty small.
do_shared_workdir must run shortly after compilemodules has started
and removed the file but didn't create a new one. This is the kind
of race I am more likely to hit than the average population. The
"configuration is changing" part looks like a red herring to me.
From looking at the Makefile I see a FORCE as dependency of the
kernel.release rule. With my 3.10er kernel (and it doesn't look
like we have patched the Makefile) the dependency chain is like
this:

 init -> prepare -> prepare0 .. -> prepare3 -> kernel.release -> FORCE

This means that on any target being executed the kernel.release
will be re-created. I think the only stable way would be to have
do_compile copy the kernel.release to another place and have the
copying task pick this file from another place.


kind regards
	holger


More debugging:

Running make with debug shows that the kernel.release target
will be forced to re-execute and at least for me this leads to
the creation of a new file.

make:

 File '_all' does not exist.
  Considering target file 'all'.
   File 'all' does not exist.
    Considering target file 'vmlinux'.
      Considering target file 'scripts/link-vmlinux.sh'.
       Looking for an implicit rule for 'scripts/link-vmlinux.sh'.
       No implicit rule found for 'scripts/link-vmlinux.sh'.
       Finished prerequisites of target file 'scripts/link-vmlinux.sh'.
      No need to remake target 'scripts/link-vmlinux.sh'.
      Considering target file 'arch/arm/kernel/vmlinux.lds'.
        Considering target file 'init'.
         File 'init' does not exist.
          Considering target file 'prepare'.
           File 'prepare' does not exist.
            Considering target file 'prepare0'.
             File 'prepare0' does not exist.
              Considering target file 'archprepare'.
               File 'archprepare' does not exist.
                Considering target file 'archheaders'.
                 File 'archheaders' does not exist.
                 Finished prerequisites of target file 'archheaders'.
                Must remake target 'archheaders'.
                Successfully remade target file 'archheaders'.
                Considering target file 'archscripts'.
                 File 'archscripts' does not exist.
                 Finished prerequisites of target file 'archscripts'.
                Must remake target 'archscripts'.
                Successfully remade target file 'archscripts'.
                Considering target file 'prepare1'.
                 File 'prepare1' does not exist.
                  Considering target file 'prepare2'.
                   File 'prepare2' does not exist.
                    Considering target file 'prepare3'.
                     File 'prepare3' does not exist.
                      Considering target file 'include/config/kernel.release'.
                        Pruning file 'include/config/auto.conf'.
                        Considering target file 'FORCE'.
                         File 'FORCE' does not exist.
                         Finished prerequisites of target file 'FORCE'.
                        Must remake target 'FORCE'.
                        Successfully remade target file 'FORCE'.
                       Finished prerequisites of target file 'include/config/kernel.release'.

	...



make uImage

Considering target file 'uImage'.
 File 'uImage' does not exist.
  Considering target file 'vmlinux'.
    Considering target file 'scripts/link-vmlinux.sh'.
     Looking for an implicit rule for 'scripts/link-vmlinux.sh'.
     No implicit rule found for 'scripts/link-vmlinux.sh'.
     Finished prerequisites of target file 'scripts/link-vmlinux.sh'.
    No need to remake target 'scripts/link-vmlinux.sh'.
    Considering target file 'arch/arm/kernel/vmlinux.lds'.
      Considering target file 'init'.
       File 'init' does not exist.
        Considering target file 'prepare'.
         File 'prepare' does not exist.
          Considering target file 'prepare0'.
           File 'prepare0' does not exist.
            Considering target file 'archprepare'.
             File 'archprepare' does not exist.
              Considering target file 'archheaders'.
               File 'archheaders' does not exist.
               Finished prerequisites of target file 'archheaders'.
              Must remake target 'archheaders'.
              Successfully remade target file 'archheaders'.
              Considering target file 'archscripts'.
               File 'archscripts' does not exist.
               Finished prerequisites of target file 'archscripts'.
              Must remake target 'archscripts'.
              Successfully remade target file 'archscripts'.
              Considering target file 'prepare1'.
               File 'prepare1' does not exist.
                Considering target file 'prepare2'.
                 File 'prepare2' does not exist.
                  Considering target file 'prepare3'.
                   File 'prepare3' does not exist.
                    Considering target file 'include/config/kernel.release'.
                      Pruning file 'include/config/auto.conf'.
                      Considering target file 'FORCE'.
                       File 'FORCE' does not exist.
                       Finished prerequisites of target file 'FORCE'.
                      Must remake target 'FORCE'.
                      Successfully remade target file 'FORCE'.
                     Finished prerequisites of target file 'include/config/kernel.release'.
                     Prerequisite 'include/config/auto.conf' is older than target 'include/config/kernel.release'.
                     Prerequisite 'FORCE' of target 'include/config/kernel.release' does not exist.
                    Must remake target 'include/config/kernel.release'.



make modules

Considering target file 'modules'.
 File 'modules' does not exist.
  Considering target file 'init'.
   File 'init' does not exist.
    Considering target file 'prepare'.
     File 'prepare' does not exist.
      Considering target file 'prepare0'.
       File 'prepare0' does not exist.
        Considering target file 'archprepare'.
         File 'archprepare' does not exist.
          Considering target file 'archheaders'.
           File 'archheaders' does not exist.
           Finished prerequisites of target file 'archheaders'.
          Must remake target 'archheaders'.
          Successfully remade target file 'archheaders'.
          Considering target file 'archscripts'.
           File 'archscripts' does not exist.
           Finished prerequisites of target file 'archscripts'.
          Must remake target 'archscripts'.
          Successfully remade target file 'archscripts'.
          Considering target file 'prepare1'.
           File 'prepare1' does not exist.
            Considering target file 'prepare2'.
             File 'prepare2' does not exist.
              Considering target file 'prepare3'.
               File 'prepare3' does not exist.
                Considering target file 'include/config/kernel.release'.
                  Pruning file 'include/config/auto.conf'.
                  Considering target file 'FORCE'.
                   File 'FORCE' does not exist.
                   Finished prerequisites of target file 'FORCE'.
                  Must remake target 'FORCE'.
                  Successfully remade target file 'FORCE'.
                 Finished prerequisites of target file 'include/config/kernel.release'.
                 Prerequisite 'include/config/auto.conf' is older than target 'include/config/kernel.release'.
                 Prerequisite 'FORCE' of target 'include/config/kernel.release' does not exist.
                Must remake target 'include/config/kernel.release'.


