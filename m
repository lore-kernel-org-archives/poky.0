Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web12.9036.1591886724384615749
 for <poky@lists.yoctoproject.org>;
 Thu, 11 Jun 2020 07:45:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cRXa7/dL;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id k11so6724509ejr.9
        for <poky@lists.yoctoproject.org>; Thu, 11 Jun 2020 07:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gJDLBhZ78LWVz2wJrDUfIz9QjesyyS8f8Is4Dwicy1g=;
        b=cRXa7/dLajMp8HBP0SYMW51lH1wKEgrACsouVALRRsDukuqsVW4/XO3pT7WeHfVp+W
         hhgUyghK7cITgv75DKAOVWZLmdtH+Bddg6umBVhg09BI4E2xyH82HEQwschgHwFlhacK
         xitVuVDlZLMzwLu/IoEXynXXRbNLot5hp46fujXtQppLxsuE+9K18xqPb2t7O1XzT022
         JrAnixXD4rAfCMyCpfkujwGSycV2naGrWcXpUAD5ldALPKYapx+EDk54+ep/rkRYnBvB
         nPsHLKBRy/YQTPGO9twz2rX8wOgqDuNbBwmc4lxwFde/sg0c/dqxhMJgVmsf8FR1qf8l
         x8Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gJDLBhZ78LWVz2wJrDUfIz9QjesyyS8f8Is4Dwicy1g=;
        b=kgYIkbHO0fXdncAoGOEgD/XyDLsDQFSohcMQ402MFYpfP5aGoMcEUboC9ryOc6M8vM
         PGbBMbFI/kDnHz2tVSbV72ol+7epJoKRGSySxf/kdnwz3H0xTjIsJK7ZdJD/Grsy1zyY
         Xht+UJ9CpwsvYFqIk/iQv1EnuypjHH1pHPA9UiKENNM8zUqDa0HSKcPt5dynvw1bbtS/
         gecQbgTmekZZhlH+zucocURQbQNjYayh8ckB9II8QGpHrbGkzZtDGI3+GTgSBEFPHoLr
         T1WdoySFhNicEojxRbQD47pngBqF9l7SrTHmv2HcQyBZFE6Q8FckPRsRU+/8WG65xkqV
         bKZg==
X-Gm-Message-State: AOAM53372JGhyavzeFi/j3F82ga6OFAbaFKwxQoBPfIBE45YqcBSXGU9
	EMzPqRi0jdC4vMnPqwyT8ZNkyflRkPE1DgEGGsw=
X-Google-Smtp-Source: ABdhPJw0vv0TwOosIQQDK4/6X25hDsMr+tx7TqLwrN1udwKBMkSl6jUPE1AP6z3ftGmm+9ty7GqQUSWd37FmJrSn+Ik=
X-Received: by 2002:a17:906:5283:: with SMTP id c3mr8127963ejm.22.1591886721544;
 Thu, 11 Jun 2020 07:45:21 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1591881869.git.hubert.chaumette@kolabnow.com> <42f34a29fec2330fa138b2a69a8681cce26f6bfe.1591881869.git.hubert.chaumette@kolabnow.com>
In-Reply-To: <42f34a29fec2330fa138b2a69a8681cce26f6bfe.1591881869.git.hubert.chaumette@kolabnow.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Thu, 11 Jun 2020 10:45:10 -0400
Message-ID: <CADkTA4MkM5DL8ku_tZwCVTEdL5HekJZd46WdPdvWRaUrx3VXXQ@mail.gmail.com>
Subject: Re: [poky] [RFC PATCH 1/1] module.bbclass: manage include files like Module.symvers
To: hubert.chaumette@kolabnow.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 11, 2020 at 10:21 AM Hubert CHAUMETTE via
lists.yoctoproject.org
<hubert.chaumette=kolabnow.com@lists.yoctoproject.org> wrote:
>
> Manage automatically the installation and include path of headers for
> dependencies between external modules, based on the way Module.symvers
> is handled.

You haven't fully explained the problem that you are actually trying
to solve, i.e. give us a
human readable description of the problem here, not just the example code.

This needs to be split into multiple patches, reviewing the one giant
patch isn't easy.

I don't think you need a full copy of the license, just using the
headers is enough.

See some additional comments below.

> Add two demonstration modules "slave" and "master" to meta-skeleton.
>
> Signed-off-by: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
> ---
>  .../kernel-module-master/files/COPYING        | 340 ++++++++++++++++++
>  .../kernel-module-master/files/Makefile       |  14 +
>  .../files/include/master.h                    |  25 ++
>  .../kernel-module-master/files/master.c       | 154 ++++++++
>  .../kernel-module-master.bb                   |  20 ++
>  .../kernel-module-slave/files/COPYING         | 340 ++++++++++++++++++
>  .../kernel-module-slave/files/Makefile        |  14 +
>  .../kernel-module-slave/files/slave.c         |  53 +++
>  .../kernel-module-slave.bb                    |  17 +
>  meta/classes/module.bbclass                   |  30 +-
>  10 files changed, 1002 insertions(+), 5 deletions(-)
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb
>
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING b/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
> new file mode 100644
> index 0000000000..6d45519c8c
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
> @@ -0,0 +1,340 @@
> +                   GNU GENERAL PUBLIC LICENSE
> +                      Version 2, June 1991
> +
> + Copyright (C) 1989, 1991 Free Software Foundation, Inc.
> +                       51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
> + Everyone is permitted to copy and distribute verbatim copies
> + of this license document, but changing it is not allowed.
> +
> +                           Preamble
> +
> +  The licenses for most software are designed to take away your
> +freedom to share and change it.  By contrast, the GNU General Public
> +License is intended to guarantee your freedom to share and change free
> +software--to make sure the software is free for all its users.  This
> +General Public License applies to most of the Free Software
> +Foundation's software and to any other program whose authors commit to
> +using it.  (Some other Free Software Foundation software is covered by
> +the GNU Library General Public License instead.)  You can apply it to
> +your programs, too.
> +
> +  When we speak of free software, we are referring to freedom, not
> +price.  Our General Public Licenses are designed to make sure that you
> +have the freedom to distribute copies of free software (and charge for
> +this service if you wish), that you receive source code or can get it
> +if you want it, that you can change the software or use pieces of it
> +in new free programs; and that you know you can do these things.
> +
> +  To protect your rights, we need to make restrictions that forbid
> +anyone to deny you these rights or to ask you to surrender the rights.
> +These restrictions translate to certain responsibilities for you if you
> +distribute copies of the software, or if you modify it.
> +
> +  For example, if you distribute copies of such a program, whether
> +gratis or for a fee, you must give the recipients all the rights that
> +you have.  You must make sure that they, too, receive or can get the
> +source code.  And you must show them these terms so they know their
> +rights.
> +
> +  We protect your rights with two steps: (1) copyright the software, and
> +(2) offer you this license which gives you legal permission to copy,
> +distribute and/or modify the software.
> +
> +  Also, for each author's protection and ours, we want to make certain
> +that everyone understands that there is no warranty for this free
> +software.  If the software is modified by someone else and passed on, we
> +want its recipients to know that what they have is not the original, so
> +that any problems introduced by others will not reflect on the original
> +authors' reputations.
> +
> +  Finally, any free program is threatened constantly by software
> +patents.  We wish to avoid the danger that redistributors of a free
> +program will individually obtain patent licenses, in effect making the
> +program proprietary.  To prevent this, we have made it clear that any
> +patent must be licensed for everyone's free use or not licensed at all.
> +
> +  The precise terms and conditions for copying, distribution and
> +modification follow.
> +
> +                   GNU GENERAL PUBLIC LICENSE
> +   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
> +
> +  0. This License applies to any program or other work which contains
> +a notice placed by the copyright holder saying it may be distributed
> +under the terms of this General Public License.  The "Program", below,
> +refers to any such program or work, and a "work based on the Program"
> +means either the Program or any derivative work under copyright law:
> +that is to say, a work containing the Program or a portion of it,
> +either verbatim or with modifications and/or translated into another
> +language.  (Hereinafter, translation is included without limitation in
> +the term "modification".)  Each licensee is addressed as "you".
> +
> +Activities other than copying, distribution and modification are not
> +covered by this License; they are outside its scope.  The act of
> +running the Program is not restricted, and the output from the Program
> +is covered only if its contents constitute a work based on the
> +Program (independent of having been made by running the Program).
> +Whether that is true depends on what the Program does.
> +
> +  1. You may copy and distribute verbatim copies of the Program's
> +source code as you receive it, in any medium, provided that you
> +conspicuously and appropriately publish on each copy an appropriate
> +copyright notice and disclaimer of warranty; keep intact all the
> +notices that refer to this License and to the absence of any warranty;
> +and give any other recipients of the Program a copy of this License
> +along with the Program.
> +
> +You may charge a fee for the physical act of transferring a copy, and
> +you may at your option offer warranty protection in exchange for a fee.
> +
> +  2. You may modify your copy or copies of the Program or any portion
> +of it, thus forming a work based on the Program, and copy and
> +distribute such modifications or work under the terms of Section 1
> +above, provided that you also meet all of these conditions:
> +
> +    a) You must cause the modified files to carry prominent notices
> +    stating that you changed the files and the date of any change.
> +
> +    b) You must cause any work that you distribute or publish, that in
> +    whole or in part contains or is derived from the Program or any
> +    part thereof, to be licensed as a whole at no charge to all third
> +    parties under the terms of this License.
> +
> +    c) If the modified program normally reads commands interactively
> +    when run, you must cause it, when started running for such
> +    interactive use in the most ordinary way, to print or display an
> +    announcement including an appropriate copyright notice and a
> +    notice that there is no warranty (or else, saying that you provide
> +    a warranty) and that users may redistribute the program under
> +    these conditions, and telling the user how to view a copy of this
> +    License.  (Exception: if the Program itself is interactive but
> +    does not normally print such an announcement, your work based on
> +    the Program is not required to print an announcement.)
> +
> +These requirements apply to the modified work as a whole.  If
> +identifiable sections of that work are not derived from the Program,
> +and can be reasonably considered independent and separate works in
> +themselves, then this License, and its terms, do not apply to those
> +sections when you distribute them as separate works.  But when you
> +distribute the same sections as part of a whole which is a work based
> +on the Program, the distribution of the whole must be on the terms of
> +this License, whose permissions for other licensees extend to the
> +entire whole, and thus to each and every part regardless of who wrote it.
> +
> +Thus, it is not the intent of this section to claim rights or contest
> +your rights to work written entirely by you; rather, the intent is to
> +exercise the right to control the distribution of derivative or
> +collective works based on the Program.
> +
> +In addition, mere aggregation of another work not based on the Program
> +with the Program (or with a work based on the Program) on a volume of
> +a storage or distribution medium does not bring the other work under
> +the scope of this License.
> +
> +  3. You may copy and distribute the Program (or a work based on it,
> +under Section 2) in object code or executable form under the terms of
> +Sections 1 and 2 above provided that you also do one of the following:
> +
> +    a) Accompany it with the complete corresponding machine-readable
> +    source code, which must be distributed under the terms of Sections
> +    1 and 2 above on a medium customarily used for software interchange; or,
> +
> +    b) Accompany it with a written offer, valid for at least three
> +    years, to give any third party, for a charge no more than your
> +    cost of physically performing source distribution, a complete
> +    machine-readable copy of the corresponding source code, to be
> +    distributed under the terms of Sections 1 and 2 above on a medium
> +    customarily used for software interchange; or,
> +
> +    c) Accompany it with the information you received as to the offer
> +    to distribute corresponding source code.  (This alternative is
> +    allowed only for noncommercial distribution and only if you
> +    received the program in object code or executable form with such
> +    an offer, in accord with Subsection b above.)
> +
> +The source code for a work means the preferred form of the work for
> +making modifications to it.  For an executable work, complete source
> +code means all the source code for all modules it contains, plus any
> +associated interface definition files, plus the scripts used to
> +control compilation and installation of the executable.  However, as a
> +special exception, the source code distributed need not include
> +anything that is normally distributed (in either source or binary
> +form) with the major components (compiler, kernel, and so on) of the
> +operating system on which the executable runs, unless that component
> +itself accompanies the executable.
> +
> +If distribution of executable or object code is made by offering
> +access to copy from a designated place, then offering equivalent
> +access to copy the source code from the same place counts as
> +distribution of the source code, even though third parties are not
> +compelled to copy the source along with the object code.
> +
> +  4. You may not copy, modify, sublicense, or distribute the Program
> +except as expressly provided under this License.  Any attempt
> +otherwise to copy, modify, sublicense or distribute the Program is
> +void, and will automatically terminate your rights under this License.
> +However, parties who have received copies, or rights, from you under
> +this License will not have their licenses terminated so long as such
> +parties remain in full compliance.
> +
> +  5. You are not required to accept this License, since you have not
> +signed it.  However, nothing else grants you permission to modify or
> +distribute the Program or its derivative works.  These actions are
> +prohibited by law if you do not accept this License.  Therefore, by
> +modifying or distributing the Program (or any work based on the
> +Program), you indicate your acceptance of this License to do so, and
> +all its terms and conditions for copying, distributing or modifying
> +the Program or works based on it.
> +
> +  6. Each time you redistribute the Program (or any work based on the
> +Program), the recipient automatically receives a license from the
> +original licensor to copy, distribute or modify the Program subject to
> +these terms and conditions.  You may not impose any further
> +restrictions on the recipients' exercise of the rights granted herein.
> +You are not responsible for enforcing compliance by third parties to
> +this License.
> +
> +  7. If, as a consequence of a court judgment or allegation of patent
> +infringement or for any other reason (not limited to patent issues),
> +conditions are imposed on you (whether by court order, agreement or
> +otherwise) that contradict the conditions of this License, they do not
> +excuse you from the conditions of this License.  If you cannot
> +distribute so as to satisfy simultaneously your obligations under this
> +License and any other pertinent obligations, then as a consequence you
> +may not distribute the Program at all.  For example, if a patent
> +license would not permit royalty-free redistribution of the Program by
> +all those who receive copies directly or indirectly through you, then
> +the only way you could satisfy both it and this License would be to
> +refrain entirely from distribution of the Program.
> +
> +If any portion of this section is held invalid or unenforceable under
> +any particular circumstance, the balance of the section is intended to
> +apply and the section as a whole is intended to apply in other
> +circumstances.
> +
> +It is not the purpose of this section to induce you to infringe any
> +patents or other property right claims or to contest validity of any
> +such claims; this section has the sole purpose of protecting the
> +integrity of the free software distribution system, which is
> +implemented by public license practices.  Many people have made
> +generous contributions to the wide range of software distributed
> +through that system in reliance on consistent application of that
> +system; it is up to the author/donor to decide if he or she is willing
> +to distribute software through any other system and a licensee cannot
> +impose that choice.
> +
> +This section is intended to make thoroughly clear what is believed to
> +be a consequence of the rest of this License.
> +
> +  8. If the distribution and/or use of the Program is restricted in
> +certain countries either by patents or by copyrighted interfaces, the
> +original copyright holder who places the Program under this License
> +may add an explicit geographical distribution limitation excluding
> +those countries, so that distribution is permitted only in or among
> +countries not thus excluded.  In such case, this License incorporates
> +the limitation as if written in the body of this License.
> +
> +  9. The Free Software Foundation may publish revised and/or new versions
> +of the General Public License from time to time.  Such new versions will
> +be similar in spirit to the present version, but may differ in detail to
> +address new problems or concerns.
> +
> +Each version is given a distinguishing version number.  If the Program
> +specifies a version number of this License which applies to it and "any
> +later version", you have the option of following the terms and conditions
> +either of that version or of any later version published by the Free
> +Software Foundation.  If the Program does not specify a version number of
> +this License, you may choose any version ever published by the Free Software
> +Foundation.
> +
> +  10. If you wish to incorporate parts of the Program into other free
> +programs whose distribution conditions are different, write to the author
> +to ask for permission.  For software which is copyrighted by the Free
> +Software Foundation, write to the Free Software Foundation; we sometimes
> +make exceptions for this.  Our decision will be guided by the two goals
> +of preserving the free status of all derivatives of our free software and
> +of promoting the sharing and reuse of software generally.
> +
> +                           NO WARRANTY
> +
> +  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
> +FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
> +OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
> +PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
> +OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
> +MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
> +TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
> +PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
> +REPAIR OR CORRECTION.
> +
> +  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
> +WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
> +REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
> +INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING
> +OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
> +TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
> +YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
> +PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
> +POSSIBILITY OF SUCH DAMAGES.
> +
> +                    END OF TERMS AND CONDITIONS
> +
> +           How to Apply These Terms to Your New Programs
> +
> +  If you develop a new program, and you want it to be of the greatest
> +possible use to the public, the best way to achieve this is to make it
> +free software which everyone can redistribute and change under these terms.
> +
> +  To do so, attach the following notices to the program.  It is safest
> +to attach them to the start of each source file to most effectively
> +convey the exclusion of warranty; and each file should have at least
> +the "copyright" line and a pointer to where the full notice is found.
> +
> +    <one line to give the program's name and a brief idea of what it does.>
> +    Copyright (C) <year>  <name of author>
> +
> +    This program is free software; you can redistribute it and/or modify
> +    it under the terms of the GNU General Public License as published by
> +    the Free Software Foundation; either version 2 of the License, or
> +    (at your option) any later version.
> +
> +    This program is distributed in the hope that it will be useful,
> +    but WITHOUT ANY WARRANTY; without even the implied warranty of
> +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +    GNU General Public License for more details.
> +
> +    You should have received a copy of the GNU General Public License
> +    along with this program; if not, write to the Free Software
> +    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
> +
> +
> +Also add information on how to contact you by electronic and paper mail.
> +
> +If the program is interactive, make it output a short notice like this
> +when it starts in an interactive mode:
> +
> +    Gnomovision version 69, Copyright (C) year name of author
> +    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
> +    This is free software, and you are welcome to redistribute it
> +    under certain conditions; type `show c' for details.
> +
> +The hypothetical commands `show w' and `show c' should show the appropriate
> +parts of the General Public License.  Of course, the commands you use may
> +be called something other than `show w' and `show c'; they could even be
> +mouse-clicks or menu items--whatever suits your program.
> +
> +You should also get your employer (if you work as a programmer) or your
> +school, if any, to sign a "copyright disclaimer" for the program, if
> +necessary.  Here is a sample; alter the names:
> +
> +  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
> +  `Gnomovision' (which makes passes at compilers) written by James Hacker.
> +
> +  <signature of Ty Coon>, 1 April 1989
> +  Ty Coon, President of Vice
> +
> +This General Public License does not permit incorporating your program into
> +proprietary programs.  If your program is a subroutine library, you may
> +consider it more useful to permit linking proprietary applications with the
> +library.  If this is what you want to do, use the GNU Library General
> +Public License instead of this License.
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile b/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
> new file mode 100644
> index 0000000000..664e966a86
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
> @@ -0,0 +1,14 @@
> +obj-m := master.o
> +
> +SRC := $(PWD)
> +
> +all:
> +       $(MAKE) -C $(KERNEL_SRC) M=$(SRC)
> +
> +modules_install:
> +       $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
> +
> +clean:
> +       rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
> +       rm -f Module.markers Module.symvers modules.order
> +       rm -rf .tmp_versions Modules.symvers
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h b/meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h
> new file mode 100644
> index 0000000000..b7b61b109a
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h
> @@ -0,0 +1,25 @@
> +/*
> + * External kernel module dependency exemple - master module
> + *
> + * Copyright (C) 2020 Hubert CHAUMETTE
> + */
> +
> +#ifndef MASTER_H
> +#define MASTER_H
> +
> +#include <linux/notifier.h>
> +
> +enum master_evt_type {
> +       MASTER_EVT_READ,
> +       MASTER_EVT_WRITE,
> +};
> +
> +struct master_evt_data {
> +       char __user *buf;
> +       size_t count;
> +};
> +
> +int master_notifier_register(struct notifier_block *nb);
> +int master_notifier_unregister(struct notifier_block *nb);
> +
> +#endif /* MASTER_H */
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c b/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
> new file mode 100644
> index 0000000000..c94c468abf
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
> @@ -0,0 +1,154 @@
> +/*
> + * External kernel module dependency exemple - master module
> + *
> + * Copyright (C) 2020 Hubert CHAUMETTE
> + */
> +
> +#include <linux/cdev.h>
> +#include <linux/fs.h>
> +#include <linux/uaccess.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/types.h>
> +
> +#include "include/master.h"
> +
> +#define MASTER_NAME    "master"
> +#define MASTER_BUF_SZ  128
> +
> +static DEFINE_MUTEX(master_lock);
> +static BLOCKING_NOTIFIER_HEAD(master_chain_head);
> +static int master_major;
> +static struct class *master_class;
> +static char master_buf[MASTER_BUF_SZ] = { 0 };
> +static int master_count = 0;
> +static struct device *master_device;
> +
> +int master_notifier_register(struct notifier_block *nb)
> +{
> +       return blocking_notifier_chain_register(&master_chain_head, nb);
> +}
> +EXPORT_SYMBOL(master_notifier_register);
> +
> +int master_notifier_unregister(struct notifier_block *nb)
> +{
> +       return blocking_notifier_chain_unregister(&master_chain_head, nb);
> +}
> +EXPORT_SYMBOL(master_notifier_unregister);
> +
> +static ssize_t master_read(struct file *fp, char __user *buf,
> +                          size_t count, loff_t *offset)
> +{
> +       (void)fp;
> +
> +       ssize_t ret;
> +       size_t read_count = min(master_count - *offset, count);
> +       struct master_evt_data data = {
> +               .buf = buf,
> +               .count = read_count,
> +       };
> +
> +       if (*offset >= master_count - 1)
> +               return 0;
> +
> +       mutex_lock(&master_lock);
> +
> +       if (copy_to_user(buf, master_buf + *offset, read_count)) {
> +               ret = -EFAULT;
> +               goto unlock;
> +       }
> +       *offset += read_count;
> +       ret = read_count;
> +
> +       blocking_notifier_call_chain(&master_chain_head, MASTER_EVT_READ, &data);
> +
> +unlock:
> +       mutex_unlock(&master_lock);
> +
> +       return ret;
> +}
> +
> +static ssize_t master_write(struct file *fp, const char __user *buf,
> +                           size_t count, loff_t *offset)
> +{
> +       (void)offset;
> +       (void)fp;
> +
> +       ssize_t ret;
> +       struct master_evt_data data = {
> +               .buf = buf,
> +               .count = count,
> +       };
> +
> +       if (count > MASTER_BUF_SZ)
> +               return -EFBIG;
> +
> +       mutex_lock(&master_lock);
> +
> +       if (copy_from_user(master_buf, buf, count)) {
> +               ret = -EFAULT;
> +               goto unlock;
> +       }
> +       ret = count;
> +       master_count = count;
> +
> +       blocking_notifier_call_chain(&master_chain_head, MASTER_EVT_WRITE, &data);
> +
> +unlock:
> +       mutex_unlock(&master_lock);
> +
> +       return ret;
> +}
> +
> +static const struct file_operations master_fops = {
> +       .owner =        THIS_MODULE,
> +       .write =        master_write,
> +       .read =         master_read,
> +       .llseek =       no_llseek,
> +};
> +
> +static int __init master_init(void)
> +{
> +       int ret = 0;
> +
> +       master_major = register_chrdev(0, MASTER_NAME, &master_fops);
> +       if (master_major < 0) {
> +               ret = master_major;
> +               goto err;
> +       }
> +
> +       master_class = class_create(THIS_MODULE, MASTER_NAME);
> +       if (IS_ERR(master_class)) {
> +               ret = PTR_ERR(master_class);
> +               goto err_class;
> +       }
> +
> +       master_device = device_create(master_class, NULL, MKDEV(master_major, 0),
> +                                     NULL, MASTER_NAME);
> +       if (IS_ERR(master_device)) {
> +               ret = PTR_ERR(master_device);
> +               goto err_device;
> +       }
> +
> +       return ret;
> +
> +err_device:
> +       class_destroy(master_class);
> +err_class:
> +       unregister_chrdev(master_major, MASTER_NAME);
> +err:
> +       return ret;
> +}
> +module_init(master_init);
> +
> +static void __exit master_exit(void)
> +{
> +       device_destroy(master_class, MKDEV(master_major, 0));
> +       class_destroy(master_class);
> +       unregister_chrdev(master_major, MASTER_NAME);
> +}
> +module_exit(master_exit);
> +
> +MODULE_AUTHOR("Hubert CHAUMETTE");
> +MODULE_DESCRIPTION("External kernel module dependency exemple - master module");
> +MODULE_LICENSE("GPL");
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb b/meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb
> new file mode 100644
> index 0000000000..03105d89d1
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb
> @@ -0,0 +1,20 @@
> +SUMMARY = "External kernel module dependency exemple - master module"
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"
> +
> +inherit module
> +
> +PN = "kernel-module-master"
> +PV = "0.1"
> +
> +SRC_URI = "file://Makefile \
> +           file://master.c \
> +           file://include/master.h \
> +           file://COPYING \
> +          "
> +
> +S = "${WORKDIR}"
> +
> +# Where to find the headers to share with dependencies.
> +# Not stricly needed here because it is the default from module.bbclass
> +MODULES_HEADERS_LOCATION = "include"
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING b/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
> new file mode 100644
> index 0000000000..6d45519c8c
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
> @@ -0,0 +1,340 @@
> +                   GNU GENERAL PUBLIC LICENSE
> +                      Version 2, June 1991
> +
> + Copyright (C) 1989, 1991 Free Software Foundation, Inc.
> +                       51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
> + Everyone is permitted to copy and distribute verbatim copies
> + of this license document, but changing it is not allowed.
> +
> +                           Preamble
> +
> +  The licenses for most software are designed to take away your
> +freedom to share and change it.  By contrast, the GNU General Public
> +License is intended to guarantee your freedom to share and change free
> +software--to make sure the software is free for all its users.  This
> +General Public License applies to most of the Free Software
> +Foundation's software and to any other program whose authors commit to
> +using it.  (Some other Free Software Foundation software is covered by
> +the GNU Library General Public License instead.)  You can apply it to
> +your programs, too.
> +
> +  When we speak of free software, we are referring to freedom, not
> +price.  Our General Public Licenses are designed to make sure that you
> +have the freedom to distribute copies of free software (and charge for
> +this service if you wish), that you receive source code or can get it
> +if you want it, that you can change the software or use pieces of it
> +in new free programs; and that you know you can do these things.
> +
> +  To protect your rights, we need to make restrictions that forbid
> +anyone to deny you these rights or to ask you to surrender the rights.
> +These restrictions translate to certain responsibilities for you if you
> +distribute copies of the software, or if you modify it.
> +
> +  For example, if you distribute copies of such a program, whether
> +gratis or for a fee, you must give the recipients all the rights that
> +you have.  You must make sure that they, too, receive or can get the
> +source code.  And you must show them these terms so they know their
> +rights.
> +
> +  We protect your rights with two steps: (1) copyright the software, and
> +(2) offer you this license which gives you legal permission to copy,
> +distribute and/or modify the software.
> +
> +  Also, for each author's protection and ours, we want to make certain
> +that everyone understands that there is no warranty for this free
> +software.  If the software is modified by someone else and passed on, we
> +want its recipients to know that what they have is not the original, so
> +that any problems introduced by others will not reflect on the original
> +authors' reputations.
> +
> +  Finally, any free program is threatened constantly by software
> +patents.  We wish to avoid the danger that redistributors of a free
> +program will individually obtain patent licenses, in effect making the
> +program proprietary.  To prevent this, we have made it clear that any
> +patent must be licensed for everyone's free use or not licensed at all.
> +
> +  The precise terms and conditions for copying, distribution and
> +modification follow.
> +
> +                   GNU GENERAL PUBLIC LICENSE
> +   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
> +
> +  0. This License applies to any program or other work which contains
> +a notice placed by the copyright holder saying it may be distributed
> +under the terms of this General Public License.  The "Program", below,
> +refers to any such program or work, and a "work based on the Program"
> +means either the Program or any derivative work under copyright law:
> +that is to say, a work containing the Program or a portion of it,
> +either verbatim or with modifications and/or translated into another
> +language.  (Hereinafter, translation is included without limitation in
> +the term "modification".)  Each licensee is addressed as "you".
> +
> +Activities other than copying, distribution and modification are not
> +covered by this License; they are outside its scope.  The act of
> +running the Program is not restricted, and the output from the Program
> +is covered only if its contents constitute a work based on the
> +Program (independent of having been made by running the Program).
> +Whether that is true depends on what the Program does.
> +
> +  1. You may copy and distribute verbatim copies of the Program's
> +source code as you receive it, in any medium, provided that you
> +conspicuously and appropriately publish on each copy an appropriate
> +copyright notice and disclaimer of warranty; keep intact all the
> +notices that refer to this License and to the absence of any warranty;
> +and give any other recipients of the Program a copy of this License
> +along with the Program.
> +
> +You may charge a fee for the physical act of transferring a copy, and
> +you may at your option offer warranty protection in exchange for a fee.
> +
> +  2. You may modify your copy or copies of the Program or any portion
> +of it, thus forming a work based on the Program, and copy and
> +distribute such modifications or work under the terms of Section 1
> +above, provided that you also meet all of these conditions:
> +
> +    a) You must cause the modified files to carry prominent notices
> +    stating that you changed the files and the date of any change.
> +
> +    b) You must cause any work that you distribute or publish, that in
> +    whole or in part contains or is derived from the Program or any
> +    part thereof, to be licensed as a whole at no charge to all third
> +    parties under the terms of this License.
> +
> +    c) If the modified program normally reads commands interactively
> +    when run, you must cause it, when started running for such
> +    interactive use in the most ordinary way, to print or display an
> +    announcement including an appropriate copyright notice and a
> +    notice that there is no warranty (or else, saying that you provide
> +    a warranty) and that users may redistribute the program under
> +    these conditions, and telling the user how to view a copy of this
> +    License.  (Exception: if the Program itself is interactive but
> +    does not normally print such an announcement, your work based on
> +    the Program is not required to print an announcement.)
> +
> +These requirements apply to the modified work as a whole.  If
> +identifiable sections of that work are not derived from the Program,
> +and can be reasonably considered independent and separate works in
> +themselves, then this License, and its terms, do not apply to those
> +sections when you distribute them as separate works.  But when you
> +distribute the same sections as part of a whole which is a work based
> +on the Program, the distribution of the whole must be on the terms of
> +this License, whose permissions for other licensees extend to the
> +entire whole, and thus to each and every part regardless of who wrote it.
> +
> +Thus, it is not the intent of this section to claim rights or contest
> +your rights to work written entirely by you; rather, the intent is to
> +exercise the right to control the distribution of derivative or
> +collective works based on the Program.
> +
> +In addition, mere aggregation of another work not based on the Program
> +with the Program (or with a work based on the Program) on a volume of
> +a storage or distribution medium does not bring the other work under
> +the scope of this License.
> +
> +  3. You may copy and distribute the Program (or a work based on it,
> +under Section 2) in object code or executable form under the terms of
> +Sections 1 and 2 above provided that you also do one of the following:
> +
> +    a) Accompany it with the complete corresponding machine-readable
> +    source code, which must be distributed under the terms of Sections
> +    1 and 2 above on a medium customarily used for software interchange; or,
> +
> +    b) Accompany it with a written offer, valid for at least three
> +    years, to give any third party, for a charge no more than your
> +    cost of physically performing source distribution, a complete
> +    machine-readable copy of the corresponding source code, to be
> +    distributed under the terms of Sections 1 and 2 above on a medium
> +    customarily used for software interchange; or,
> +
> +    c) Accompany it with the information you received as to the offer
> +    to distribute corresponding source code.  (This alternative is
> +    allowed only for noncommercial distribution and only if you
> +    received the program in object code or executable form with such
> +    an offer, in accord with Subsection b above.)
> +
> +The source code for a work means the preferred form of the work for
> +making modifications to it.  For an executable work, complete source
> +code means all the source code for all modules it contains, plus any
> +associated interface definition files, plus the scripts used to
> +control compilation and installation of the executable.  However, as a
> +special exception, the source code distributed need not include
> +anything that is normally distributed (in either source or binary
> +form) with the major components (compiler, kernel, and so on) of the
> +operating system on which the executable runs, unless that component
> +itself accompanies the executable.
> +
> +If distribution of executable or object code is made by offering
> +access to copy from a designated place, then offering equivalent
> +access to copy the source code from the same place counts as
> +distribution of the source code, even though third parties are not
> +compelled to copy the source along with the object code.
> +
> +  4. You may not copy, modify, sublicense, or distribute the Program
> +except as expressly provided under this License.  Any attempt
> +otherwise to copy, modify, sublicense or distribute the Program is
> +void, and will automatically terminate your rights under this License.
> +However, parties who have received copies, or rights, from you under
> +this License will not have their licenses terminated so long as such
> +parties remain in full compliance.
> +
> +  5. You are not required to accept this License, since you have not
> +signed it.  However, nothing else grants you permission to modify or
> +distribute the Program or its derivative works.  These actions are
> +prohibited by law if you do not accept this License.  Therefore, by
> +modifying or distributing the Program (or any work based on the
> +Program), you indicate your acceptance of this License to do so, and
> +all its terms and conditions for copying, distributing or modifying
> +the Program or works based on it.
> +
> +  6. Each time you redistribute the Program (or any work based on the
> +Program), the recipient automatically receives a license from the
> +original licensor to copy, distribute or modify the Program subject to
> +these terms and conditions.  You may not impose any further
> +restrictions on the recipients' exercise of the rights granted herein.
> +You are not responsible for enforcing compliance by third parties to
> +this License.
> +
> +  7. If, as a consequence of a court judgment or allegation of patent
> +infringement or for any other reason (not limited to patent issues),
> +conditions are imposed on you (whether by court order, agreement or
> +otherwise) that contradict the conditions of this License, they do not
> +excuse you from the conditions of this License.  If you cannot
> +distribute so as to satisfy simultaneously your obligations under this
> +License and any other pertinent obligations, then as a consequence you
> +may not distribute the Program at all.  For example, if a patent
> +license would not permit royalty-free redistribution of the Program by
> +all those who receive copies directly or indirectly through you, then
> +the only way you could satisfy both it and this License would be to
> +refrain entirely from distribution of the Program.
> +
> +If any portion of this section is held invalid or unenforceable under
> +any particular circumstance, the balance of the section is intended to
> +apply and the section as a whole is intended to apply in other
> +circumstances.
> +
> +It is not the purpose of this section to induce you to infringe any
> +patents or other property right claims or to contest validity of any
> +such claims; this section has the sole purpose of protecting the
> +integrity of the free software distribution system, which is
> +implemented by public license practices.  Many people have made
> +generous contributions to the wide range of software distributed
> +through that system in reliance on consistent application of that
> +system; it is up to the author/donor to decide if he or she is willing
> +to distribute software through any other system and a licensee cannot
> +impose that choice.
> +
> +This section is intended to make thoroughly clear what is believed to
> +be a consequence of the rest of this License.
> +
> +  8. If the distribution and/or use of the Program is restricted in
> +certain countries either by patents or by copyrighted interfaces, the
> +original copyright holder who places the Program under this License
> +may add an explicit geographical distribution limitation excluding
> +those countries, so that distribution is permitted only in or among
> +countries not thus excluded.  In such case, this License incorporates
> +the limitation as if written in the body of this License.
> +
> +  9. The Free Software Foundation may publish revised and/or new versions
> +of the General Public License from time to time.  Such new versions will
> +be similar in spirit to the present version, but may differ in detail to
> +address new problems or concerns.
> +
> +Each version is given a distinguishing version number.  If the Program
> +specifies a version number of this License which applies to it and "any
> +later version", you have the option of following the terms and conditions
> +either of that version or of any later version published by the Free
> +Software Foundation.  If the Program does not specify a version number of
> +this License, you may choose any version ever published by the Free Software
> +Foundation.
> +
> +  10. If you wish to incorporate parts of the Program into other free
> +programs whose distribution conditions are different, write to the author
> +to ask for permission.  For software which is copyrighted by the Free
> +Software Foundation, write to the Free Software Foundation; we sometimes
> +make exceptions for this.  Our decision will be guided by the two goals
> +of preserving the free status of all derivatives of our free software and
> +of promoting the sharing and reuse of software generally.
> +
> +                           NO WARRANTY
> +
> +  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
> +FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
> +OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
> +PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
> +OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
> +MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
> +TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
> +PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
> +REPAIR OR CORRECTION.
> +
> +  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
> +WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
> +REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
> +INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING
> +OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
> +TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
> +YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
> +PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
> +POSSIBILITY OF SUCH DAMAGES.
> +
> +                    END OF TERMS AND CONDITIONS
> +
> +           How to Apply These Terms to Your New Programs
> +
> +  If you develop a new program, and you want it to be of the greatest
> +possible use to the public, the best way to achieve this is to make it
> +free software which everyone can redistribute and change under these terms.
> +
> +  To do so, attach the following notices to the program.  It is safest
> +to attach them to the start of each source file to most effectively
> +convey the exclusion of warranty; and each file should have at least
> +the "copyright" line and a pointer to where the full notice is found.
> +
> +    <one line to give the program's name and a brief idea of what it does.>
> +    Copyright (C) <year>  <name of author>
> +
> +    This program is free software; you can redistribute it and/or modify
> +    it under the terms of the GNU General Public License as published by
> +    the Free Software Foundation; either version 2 of the License, or
> +    (at your option) any later version.
> +
> +    This program is distributed in the hope that it will be useful,
> +    but WITHOUT ANY WARRANTY; without even the implied warranty of
> +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +    GNU General Public License for more details.
> +
> +    You should have received a copy of the GNU General Public License
> +    along with this program; if not, write to the Free Software
> +    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
> +
> +
> +Also add information on how to contact you by electronic and paper mail.
> +
> +If the program is interactive, make it output a short notice like this
> +when it starts in an interactive mode:
> +
> +    Gnomovision version 69, Copyright (C) year name of author
> +    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
> +    This is free software, and you are welcome to redistribute it
> +    under certain conditions; type `show c' for details.
> +
> +The hypothetical commands `show w' and `show c' should show the appropriate
> +parts of the General Public License.  Of course, the commands you use may
> +be called something other than `show w' and `show c'; they could even be
> +mouse-clicks or menu items--whatever suits your program.
> +
> +You should also get your employer (if you work as a programmer) or your
> +school, if any, to sign a "copyright disclaimer" for the program, if
> +necessary.  Here is a sample; alter the names:
> +
> +  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
> +  `Gnomovision' (which makes passes at compilers) written by James Hacker.
> +
> +  <signature of Ty Coon>, 1 April 1989
> +  Ty Coon, President of Vice
> +
> +This General Public License does not permit incorporating your program into
> +proprietary programs.  If your program is a subroutine library, you may
> +consider it more useful to permit linking proprietary applications with the
> +library.  If this is what you want to do, use the GNU Library General
> +Public License instead of this License.
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile b/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
> new file mode 100644
> index 0000000000..4c7decc67e
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
> @@ -0,0 +1,14 @@
> +obj-m := slave.o
> +
> +SRC := $(shell pwd)
> +
> +all:
> +       $(MAKE) -C $(KERNEL_SRC) M=$(SRC)
> +
> +modules_install:
> +       $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
> +
> +clean:
> +       rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
> +       rm -f Module.markers Module.symvers modules.order
> +       rm -rf .tmp_versions Modules.symvers
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c b/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
> new file mode 100644
> index 0000000000..b88aac986d
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
> @@ -0,0 +1,53 @@
> +/*
> + * External kernel module dependency exemple - slave module
> + *
> + * Copyright (C) 2020 Hubert CHAUMETTE
> + */
> +
> +#include <linux/module.h>
> +
> +#include <kernel-module-master/master.h>
> +
> +static int slave_notify(struct notifier_block *self,
> +                       unsigned long action, void *data);
> +
> +static struct notifier_block slave_nb = {
> +       .notifier_call = slave_notify,
> +};
> +
> +static int slave_notify(struct notifier_block *self,
> +                       unsigned long action, void *data)
> +{
> +       struct master_evt_data *d = (struct master_evt_data *)data;
> +
> +       BUG_ON(data == NULL);
> +
> +       switch (action) {
> +       case MASTER_EVT_READ:
> +               pr_info("slave: \"%.*s\" read from master\n", d->count, d->buf);
> +               break;
> +       case MASTER_EVT_WRITE:
> +               pr_info("slave: \"%.*s\" written to master\n", d->count, d->buf);
> +               break;
> +       default:
> +               break;
> +       }
> +
> +       return NOTIFY_DONE;
> +}
> +
> +static int __init slave_init(void)
> +{
> +       return master_notifier_register(&slave_nb);
> +}
> +module_init(slave_init);
> +
> +static void __exit slave_exit(void)
> +{
> +       master_notifier_unregister(&slave_nb);
> +}
> +module_exit(slave_exit);
> +
> +MODULE_AUTHOR("Hubert CHAUMETTE");
> +MODULE_DESCRIPTION("External kernel module dependency exemple - slave module");
> +MODULE_LICENSE("GPL");
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb
> new file mode 100644
> index 0000000000..b0e948c986
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb
> @@ -0,0 +1,17 @@
> +SUMMARY = "External kernel module dependency exemple - slave module"
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"
> +
> +inherit module
> +
> +PN = "kernel-module-slave"
> +PV = "0.1"
> +
> +DEPENDS = "kernel-module-master"
> +
> +SRC_URI = "file://Makefile \
> +           file://slave.c \
> +           file://COPYING \
> +          "
> +
> +S = "${WORKDIR}"
> diff --git a/meta/classes/module.bbclass b/meta/classes/module.bbclass
> index c0dfa35061..677d00ea60 100644
> --- a/meta/classes/module.bbclass
> +++ b/meta/classes/module.bbclass
> @@ -4,14 +4,18 @@ EXTRA_OEMAKE += "KERNEL_SRC=${STAGING_KERNEL_DIR}"
>
>  MODULES_INSTALL_TARGET ?= "modules_install"
>  MODULES_MODULE_SYMVERS_LOCATION ?= ""
> +MODULES_HEADERS_LOCATION ?= "include"
>
>  python __anonymous () {
>      depends = d.getVar('DEPENDS')
>      extra_symbols = []
> +    extra_cflags = []
>      for dep in depends.split():
>          if dep.startswith("kernel-module-"):
>              extra_symbols.append("${STAGING_INCDIR}/" + dep + "/Module.symvers")
> +            extra_cflags.append("-I${STAGING_INCDIR}/")
>      d.setVar('KBUILD_EXTRA_SYMBOLS', " ".join(extra_symbols))
> +    d.setVar('EXTRA_CFLAGS', " ".join(extra_cflags))

See my comments on how this variable is dangerous in the naming.

>  }
>
>  python do_devshell_prepend () {
> @@ -32,6 +36,11 @@ python do_devshell_prepend () {
>          os.environ['KBUILD_EXTRA_SYMBOLS'] = kbuild_extra_symbols
>      else:
>          os.environ['KBUILD_EXTRA_SYMBOLS'] = ''
> +    extra_cflags = d.getVar('EXTRA_CFLAGS')
> +    if extra_cflags:
> +        os.environ['EXTRA_CFLAGS'] = extra_cflags
> +    else:
> +        os.environ['EXTRA_CFLAGS'] = ''
>  }
>
>  module_do_compile() {
> @@ -40,18 +49,19 @@ module_do_compile() {
>                    KERNEL_VERSION=${KERNEL_VERSION}    \
>                    CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
>                    AR="${KERNEL_AR}" \
> -                  O=${STAGING_KERNEL_BUILDDIR} \
> +                  O=${STAGING_KERNEL_BUILDDIR} \

Whitespace damange, this shouldn't be in the patch.

>                    KBUILD_EXTRA_SYMBOLS="${KBUILD_EXTRA_SYMBOLS}" \
> +                  EXTRA_CFLAGS="${EXTRA_CFLAGS}" \

EXTRA_CFLAGS is a really generic name for the variable. I'd suggest
that it should be namespaced to the use case.

But also, I have to point out that we by design do not pass CFLAGS to
the kernel build or to module builds. The required flags and options
are done by the kbuild system, we don't want our external flags
leaking into the kernel build. Something named like this, and used
like this, has the potential to leak flags and options.

>                    ${MAKE_TARGETS}
>  }
>
>  module_do_install() {
>         unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>         oe_runmake DEPMOD=echo MODLIB="${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}" \
> -                  INSTALL_FW_PATH="${D}${nonarch_base_libdir}/firmware" \
> -                  CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
> -                  O=${STAGING_KERNEL_BUILDDIR} \
> -                  ${MODULES_INSTALL_TARGET}
> +                  INSTALL_FW_PATH="${D}${nonarch_base_libdir}/firmware" \
> +                  CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
> +                  O=${STAGING_KERNEL_BUILDDIR} \
> +                  ${MODULES_INSTALL_TARGET}

What are you actually changing here ? Looks like whitespace changes.
It needs to be dropped from the patch.

>
>         if [ ! -e "${B}/${MODULES_MODULE_SYMVERS_LOCATION}/Module.symvers" ] ; then
>                 bbwarn "Module.symvers not found in ${B}/${MODULES_MODULE_SYMVERS_LOCATION}"
> @@ -64,6 +74,16 @@ module_do_install() {
>                 # clear them out to avoid confusion
>                 sed -e 's:${B}/::g' -i ${D}${includedir}/${BPN}/Module.symvers
>         fi
> +
> +       if [ ! -n "$(ls ${S}/${MODULES_HEADERS_LOCATION}/*.h 2>/dev/null)" ] ; then
> +               bbwarn "No headers found in ${S}/${MODULES_HEADERS_LOCATION}"
> +               bbwarn "Please consider setting MODULES_HEADERS_LOCATION to a"
> +               bbwarn "directory below S to get correct inter-module dependencies"
> +       else
> +               for file in ${S}/${MODULES_HEADERS_LOCATION}/*.h ; do
> +                       install -Dm0644 $file ${D}${includedir}/${BPN}/
> +               done

So here's the final question. Why doesn't the way that this is
normally done work here ? Module A depends on module B and we stage
the headers into the sysroot of module B ?

The construct that you are putting into the bbclass is only for
modules that are aware of the need, and hence you can just stage the
headers and have a custom include path using existing mechanisms.

Bruce

> +       fi
>  }
>
>  EXPORT_FUNCTIONS do_compile do_install
> --
> 2.27.0
>
> 



--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
