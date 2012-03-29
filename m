Return-Path: <glep-poky@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 607D3E013BA
	for <poky@pokylinux.org>; Thu, 29 Mar 2012 09:23:42 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1SDI8R-00020t-Be
	for poky@pokylinux.org; Thu, 29 Mar 2012 18:23:39 +0200
Received: from pd9e17a03.dip.t-dialin.net ([217.225.122.3])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 29 Mar 2012 18:23:39 +0200
Received: from dzu by pd9e17a03.dip.t-dialin.net with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 29 Mar 2012 18:23:39 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Detlev Zundel <dzu@denx.de>
Date: Thu, 29 Mar 2012 18:22:37 +0200
Organization: Church of Emacs - Missionary division
Message-ID: <m2ehsb2x82.fsf@lamuella.denx.de>
References: <4F71D17B.2030200@mlbassoc.com> <1332859973.3854.15.camel@elmorro>
	<m2wr634wjd.fsf@lamuella.denx.de>
	<1333030181.23875.29.camel@elmorro>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: pd9e17a03.dip.t-dialin.net
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.0.93 (gnu/linux)
Cancel-Lock: sha1:erRxaRS50vuJXsdvRkIKxcg/9hI=
Subject: Re: Strange file names
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
X-List-Received-Date: Thu, 29 Mar 2012 16:23:42 -0000
Content-Type: text/plain

Hi Tom,

thanks for listening to my concerns.  I have to admit though, that I
wrote my mail because of my doubts about the usage of such unusal
filenames, but I have yet to understand how you use the constructs.

> Yes, I think it would make sense for various reasons to get rid of it if
> possible - it's not central to the mechanism, just convenient.
>
> So the current uses of it are the following:
>
> - having a particular filename match the machine name:
>  
>     ./powerpc/conf/machine/{{=machine}}.conf

Can you explain to me what this exactly does?  Does that file match
every machine name?  If that is the case, then why do you need to match
at all and not use a special file name?

> - having a particular filename conditionally included or not:
>
>     ./i386/recipes-kernel/linux/{{ if kernel_choice ==
> "linux-yocto_3.2": }} linux-yocto_3.2.bbappend
>
> For those two types of cases, I think it should be possible to move that
> logic into the file itself using special filename and/or conditional
> filename directives.

I'm not sure if I understand fully, but something like (shell-syntax)
"include ${kernel_choice}.bbappend" would work - modulo ignoring errors
if the file is not found of course.

> The other usage is to have directory names match the machine name for
> instance:
>
>  ./i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == "xserver_vesa": }} xorg.conf

I fail to understand this for the same reason than the first item ;)

Cheers
  Detlev

--
DENX Software Engineering GmbH,      MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich,  Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-40 Fax: (+49)-8142-66989-80 Email: dzu@denx.de


