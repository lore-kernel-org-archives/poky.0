Received: from mx.kolabnow.com (mx.kolabnow.com [95.128.36.41])
 by mx.groups.io with SMTP id smtpd.web10.8404.1591885268529249610
 for <poky@lists.yoctoproject.org>;
 Thu, 11 Jun 2020 07:21:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@kolabnow.com header.s=dkim20160331 header.b=cYq7WWrv;
 spf=pass (domain: kolabnow.com, ip: 95.128.36.41, mailfrom: hubert.chaumette@kolabnow.com)
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out003.mykolab.com (Postfix) with ESMTP id 0FEF740B55
	for <poky@lists.yoctoproject.org>; Thu, 11 Jun 2020 16:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:message-id:date:date:subject:subject:from:from:received
	:received:received; s=dkim20160331; t=1591885264; x=1593699665;
	 bh=eiSjc24LEJ4TBQQ6HrVZFOpEbPf07GMUu06KH72bFOA=; b=cYq7WWrvNRSX
	cZe+vrOgGSPmFFXjXFRHSAipcp1g4Ks+N68n506uSNhmiwlJeFbACjGlQfrQQMDD
	bBuUT3g1rWcsM9VJ9Sm29GmnkZyLxZBpwtGGm7+gaxrUcrwnf9ysKc27lFWmaI3X
	zKUi1jMSYQMbO1Vvlv2Jz0293E6RCOXndT7WanW/rMIP/5+P3rXL6xvMDZvYRYRa
	Nwq8qCkUZj7bwBfGG/IajtQe3Xd03X72QvXrk1Q7mkp61pAQ2cycPfuhcV+Wncia
	MMVCSTr0u5k0e2yynkUCR0Hrp6WSCHMUVnsARYUZs555LeT/xP3QeGSNJ1MODhjP
	W+qSqIlGE+k79T/F5l49nx4IK5JJNRQUoPVB3rFLuQG/g7V8JB5l5xQe74JPM8AE
	WinKBSPQgzLdR6iTFFeor48is6ORddS8Fut1vawgHk8qC1mFCPrtz714gzvGCkK6
	RDhF+aMv0ipN1yJav9QXXTJ7ErUrp/nfv0fP8iRUOA5gjqffi28cwpepT1CUVXyp
	/gUGhqotQT+hfdR9Yjl24FOuiI8wMbNQULA9b2g7Yl9sELwyN9Efw28ieryFdgvP
	91eT2k0ySykTf4BrXlchEN47edt+N9f2gKiL49LP35rdcZTXyIhAI6sEcipck8xi
	aHRAF4FEDfT0dUBqoErO+kyajeSjnOE=
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Flag: NO
X-Spam-Score: -1.899
X-Spam-Level: 
X-Spam-Status: No, score=-1.899 tagged_above=-10 required=5
	tests=[BAYES_00=-1.9, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out003.mykolab.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t-csfEXDLtO7 for <poky@lists.yoctoproject.org>;
	Thu, 11 Jun 2020 16:21:04 +0200 (CEST)
Received: from int-mx002.mykolab.com (unknown [10.9.13.2])
	by ext-mx-out003.mykolab.com (Postfix) with ESMTPS id 255B3404EE
	for <poky@lists.yoctoproject.org>; Thu, 11 Jun 2020 16:21:03 +0200 (CEST)
Received: from ext-subm003.mykolab.com (unknown [10.9.6.3])
	by int-mx002.mykolab.com (Postfix) with ESMTPS id C492F25FC;
	Thu, 11 Jun 2020 16:21:03 +0200 (CEST)
From: "Hubert CHAUMETTE" <hubert.chaumette@kolabnow.com>
To: poky@lists.yoctoproject.org
Cc: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
Subject: [RFC PATCH 1/1] module.bbclass: manage include files like Module.symvers
Date: Thu, 11 Jun 2020 16:20:55 +0200
Message-Id: <42f34a29fec2330fa138b2a69a8681cce26f6bfe.1591881869.git.hubert.chaumette@kolabnow.com>
In-Reply-To: <cover.1591881869.git.hubert.chaumette@kolabnow.com>
References: <cover.1591881869.git.hubert.chaumette@kolabnow.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Manage automatically the installation and include path of headers for
dependencies between external modules, based on the way Module.symvers
is handled.
Add two demonstration modules "slave" and "master" to meta-skeleton.

Signed-off-by: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
---
 .../kernel-module-master/files/COPYING        | 340 ++++++++++++++++++
 .../kernel-module-master/files/Makefile       |  14 +
 .../files/include/master.h                    |  25 ++
 .../kernel-module-master/files/master.c       | 154 ++++++++
 .../kernel-module-master.bb                   |  20 ++
 .../kernel-module-slave/files/COPYING         | 340 ++++++++++++++++++
 .../kernel-module-slave/files/Makefile        |  14 +
 .../kernel-module-slave/files/slave.c         |  53 +++
 .../kernel-module-slave.bb                    |  17 +
 meta/classes/module.bbclass                   |  30 +-
 10 files changed, 1002 insertions(+), 5 deletions(-)
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/COPYING
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/Makefile
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/include/master.h
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/master.c
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/ker=
nel-module-master.bb
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/file=
s/COPYING
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/file=
s/Makefile
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/file=
s/slave.c
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/kern=
el-module-slave.bb

diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/COPY=
ING b/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
new file mode 100644
index 0000000000..6d45519c8c
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
@@ -0,0 +1,340 @@
+		    GNU GENERAL PUBLIC LICENSE
+		       Version 2, June 1991
+
+ Copyright (C) 1989, 1991 Free Software Foundation, Inc.
+                       51 Franklin St, Fifth Floor, Boston, MA  02110-13=
01  USA
+ Everyone is permitted to copy and distribute verbatim copies
+ of this license document, but changing it is not allowed.
+
+			    Preamble
+
+  The licenses for most software are designed to take away your
+freedom to share and change it.  By contrast, the GNU General Public
+License is intended to guarantee your freedom to share and change free
+software--to make sure the software is free for all its users.  This
+General Public License applies to most of the Free Software
+Foundation's software and to any other program whose authors commit to
+using it.  (Some other Free Software Foundation software is covered by
+the GNU Library General Public License instead.)  You can apply it to
+your programs, too.
+
+  When we speak of free software, we are referring to freedom, not
+price.  Our General Public Licenses are designed to make sure that you
+have the freedom to distribute copies of free software (and charge for
+this service if you wish), that you receive source code or can get it
+if you want it, that you can change the software or use pieces of it
+in new free programs; and that you know you can do these things.
+
+  To protect your rights, we need to make restrictions that forbid
+anyone to deny you these rights or to ask you to surrender the rights.
+These restrictions translate to certain responsibilities for you if you
+distribute copies of the software, or if you modify it.
+
+  For example, if you distribute copies of such a program, whether
+gratis or for a fee, you must give the recipients all the rights that
+you have.  You must make sure that they, too, receive or can get the
+source code.  And you must show them these terms so they know their
+rights.
+
+  We protect your rights with two steps: (1) copyright the software, and
+(2) offer you this license which gives you legal permission to copy,
+distribute and/or modify the software.
+
+  Also, for each author's protection and ours, we want to make certain
+that everyone understands that there is no warranty for this free
+software.  If the software is modified by someone else and passed on, we
+want its recipients to know that what they have is not the original, so
+that any problems introduced by others will not reflect on the original
+authors' reputations.
+
+  Finally, any free program is threatened constantly by software
+patents.  We wish to avoid the danger that redistributors of a free
+program will individually obtain patent licenses, in effect making the
+program proprietary.  To prevent this, we have made it clear that any
+patent must be licensed for everyone's free use or not licensed at all.
+
+  The precise terms and conditions for copying, distribution and
+modification follow.
+
+		    GNU GENERAL PUBLIC LICENSE
+   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
+
+  0. This License applies to any program or other work which contains
+a notice placed by the copyright holder saying it may be distributed
+under the terms of this General Public License.  The "Program", below,
+refers to any such program or work, and a "work based on the Program"
+means either the Program or any derivative work under copyright law:
+that is to say, a work containing the Program or a portion of it,
+either verbatim or with modifications and/or translated into another
+language.  (Hereinafter, translation is included without limitation in
+the term "modification".)  Each licensee is addressed as "you".
+
+Activities other than copying, distribution and modification are not
+covered by this License; they are outside its scope.  The act of
+running the Program is not restricted, and the output from the Program
+is covered only if its contents constitute a work based on the
+Program (independent of having been made by running the Program).
+Whether that is true depends on what the Program does.
+
+  1. You may copy and distribute verbatim copies of the Program's
+source code as you receive it, in any medium, provided that you
+conspicuously and appropriately publish on each copy an appropriate
+copyright notice and disclaimer of warranty; keep intact all the
+notices that refer to this License and to the absence of any warranty;
+and give any other recipients of the Program a copy of this License
+along with the Program.
+
+You may charge a fee for the physical act of transferring a copy, and
+you may at your option offer warranty protection in exchange for a fee.
+
+  2. You may modify your copy or copies of the Program or any portion
+of it, thus forming a work based on the Program, and copy and
+distribute such modifications or work under the terms of Section 1
+above, provided that you also meet all of these conditions:
+
+    a) You must cause the modified files to carry prominent notices
+    stating that you changed the files and the date of any change.
+
+    b) You must cause any work that you distribute or publish, that in
+    whole or in part contains or is derived from the Program or any
+    part thereof, to be licensed as a whole at no charge to all third
+    parties under the terms of this License.
+
+    c) If the modified program normally reads commands interactively
+    when run, you must cause it, when started running for such
+    interactive use in the most ordinary way, to print or display an
+    announcement including an appropriate copyright notice and a
+    notice that there is no warranty (or else, saying that you provide
+    a warranty) and that users may redistribute the program under
+    these conditions, and telling the user how to view a copy of this
+    License.  (Exception: if the Program itself is interactive but
+    does not normally print such an announcement, your work based on
+    the Program is not required to print an announcement.)
+
+These requirements apply to the modified work as a whole.  If
+identifiable sections of that work are not derived from the Program,
+and can be reasonably considered independent and separate works in
+themselves, then this License, and its terms, do not apply to those
+sections when you distribute them as separate works.  But when you
+distribute the same sections as part of a whole which is a work based
+on the Program, the distribution of the whole must be on the terms of
+this License, whose permissions for other licensees extend to the
+entire whole, and thus to each and every part regardless of who wrote it=
.
+
+Thus, it is not the intent of this section to claim rights or contest
+your rights to work written entirely by you; rather, the intent is to
+exercise the right to control the distribution of derivative or
+collective works based on the Program.
+
+In addition, mere aggregation of another work not based on the Program
+with the Program (or with a work based on the Program) on a volume of
+a storage or distribution medium does not bring the other work under
+the scope of this License.
+
+  3. You may copy and distribute the Program (or a work based on it,
+under Section 2) in object code or executable form under the terms of
+Sections 1 and 2 above provided that you also do one of the following:
+
+    a) Accompany it with the complete corresponding machine-readable
+    source code, which must be distributed under the terms of Sections
+    1 and 2 above on a medium customarily used for software interchange;=
 or,
+
+    b) Accompany it with a written offer, valid for at least three
+    years, to give any third party, for a charge no more than your
+    cost of physically performing source distribution, a complete
+    machine-readable copy of the corresponding source code, to be
+    distributed under the terms of Sections 1 and 2 above on a medium
+    customarily used for software interchange; or,
+
+    c) Accompany it with the information you received as to the offer
+    to distribute corresponding source code.  (This alternative is
+    allowed only for noncommercial distribution and only if you
+    received the program in object code or executable form with such
+    an offer, in accord with Subsection b above.)
+
+The source code for a work means the preferred form of the work for
+making modifications to it.  For an executable work, complete source
+code means all the source code for all modules it contains, plus any
+associated interface definition files, plus the scripts used to
+control compilation and installation of the executable.  However, as a
+special exception, the source code distributed need not include
+anything that is normally distributed (in either source or binary
+form) with the major components (compiler, kernel, and so on) of the
+operating system on which the executable runs, unless that component
+itself accompanies the executable.
+
+If distribution of executable or object code is made by offering
+access to copy from a designated place, then offering equivalent
+access to copy the source code from the same place counts as
+distribution of the source code, even though third parties are not
+compelled to copy the source along with the object code.
+
+  4. You may not copy, modify, sublicense, or distribute the Program
+except as expressly provided under this License.  Any attempt
+otherwise to copy, modify, sublicense or distribute the Program is
+void, and will automatically terminate your rights under this License.
+However, parties who have received copies, or rights, from you under
+this License will not have their licenses terminated so long as such
+parties remain in full compliance.
+
+  5. You are not required to accept this License, since you have not
+signed it.  However, nothing else grants you permission to modify or
+distribute the Program or its derivative works.  These actions are
+prohibited by law if you do not accept this License.  Therefore, by
+modifying or distributing the Program (or any work based on the
+Program), you indicate your acceptance of this License to do so, and
+all its terms and conditions for copying, distributing or modifying
+the Program or works based on it.
+
+  6. Each time you redistribute the Program (or any work based on the
+Program), the recipient automatically receives a license from the
+original licensor to copy, distribute or modify the Program subject to
+these terms and conditions.  You may not impose any further
+restrictions on the recipients' exercise of the rights granted herein.
+You are not responsible for enforcing compliance by third parties to
+this License.
+
+  7. If, as a consequence of a court judgment or allegation of patent
+infringement or for any other reason (not limited to patent issues),
+conditions are imposed on you (whether by court order, agreement or
+otherwise) that contradict the conditions of this License, they do not
+excuse you from the conditions of this License.  If you cannot
+distribute so as to satisfy simultaneously your obligations under this
+License and any other pertinent obligations, then as a consequence you
+may not distribute the Program at all.  For example, if a patent
+license would not permit royalty-free redistribution of the Program by
+all those who receive copies directly or indirectly through you, then
+the only way you could satisfy both it and this License would be to
+refrain entirely from distribution of the Program.
+
+If any portion of this section is held invalid or unenforceable under
+any particular circumstance, the balance of the section is intended to
+apply and the section as a whole is intended to apply in other
+circumstances.
+
+It is not the purpose of this section to induce you to infringe any
+patents or other property right claims or to contest validity of any
+such claims; this section has the sole purpose of protecting the
+integrity of the free software distribution system, which is
+implemented by public license practices.  Many people have made
+generous contributions to the wide range of software distributed
+through that system in reliance on consistent application of that
+system; it is up to the author/donor to decide if he or she is willing
+to distribute software through any other system and a licensee cannot
+impose that choice.
+
+This section is intended to make thoroughly clear what is believed to
+be a consequence of the rest of this License.
+
+  8. If the distribution and/or use of the Program is restricted in
+certain countries either by patents or by copyrighted interfaces, the
+original copyright holder who places the Program under this License
+may add an explicit geographical distribution limitation excluding
+those countries, so that distribution is permitted only in or among
+countries not thus excluded.  In such case, this License incorporates
+the limitation as if written in the body of this License.
+
+  9. The Free Software Foundation may publish revised and/or new version=
s
+of the General Public License from time to time.  Such new versions will
+be similar in spirit to the present version, but may differ in detail to
+address new problems or concerns.
+
+Each version is given a distinguishing version number.  If the Program
+specifies a version number of this License which applies to it and "any
+later version", you have the option of following the terms and condition=
s
+either of that version or of any later version published by the Free
+Software Foundation.  If the Program does not specify a version number o=
f
+this License, you may choose any version ever published by the Free Soft=
ware
+Foundation.
+
+  10. If you wish to incorporate parts of the Program into other free
+programs whose distribution conditions are different, write to the autho=
r
+to ask for permission.  For software which is copyrighted by the Free
+Software Foundation, write to the Free Software Foundation; we sometimes
+make exceptions for this.  Our decision will be guided by the two goals
+of preserving the free status of all derivatives of our free software an=
d
+of promoting the sharing and reuse of software generally.
+
+			    NO WARRANTY
+
+  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRAN=
TY
+FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
+OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
+PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS=
ED
+OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK A=
S
+TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
+PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
+REPAIR OR CORRECTION.
+
+  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRIT=
ING
+WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
+REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGE=
S,
+INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARIS=
ING
+OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITE=
D
+TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
+YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTH=
ER
+PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
+POSSIBILITY OF SUCH DAMAGES.
+
+		     END OF TERMS AND CONDITIONS
+
+	    How to Apply These Terms to Your New Programs
+
+  If you develop a new program, and you want it to be of the greatest
+possible use to the public, the best way to achieve this is to make it
+free software which everyone can redistribute and change under these ter=
ms.
+
+  To do so, attach the following notices to the program.  It is safest
+to attach them to the start of each source file to most effectively
+convey the exclusion of warranty; and each file should have at least
+the "copyright" line and a pointer to where the full notice is found.
+
+    <one line to give the program's name and a brief idea of what it doe=
s.>
+    Copyright (C) <year>  <name of author>
+
+    This program is free software; you can redistribute it and/or modify
+    it under the terms of the GNU General Public License as published by
+    the Free Software Foundation; either version 2 of the License, or
+    (at your option) any later version.
+
+    This program is distributed in the hope that it will be useful,
+    but WITHOUT ANY WARRANTY; without even the implied warranty of
+    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+    GNU General Public License for more details.
+
+    You should have received a copy of the GNU General Public License
+    along with this program; if not, write to the Free Software
+    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-130=
1  USA
+
+
+Also add information on how to contact you by electronic and paper mail.
+
+If the program is interactive, make it output a short notice like this
+when it starts in an interactive mode:
+
+    Gnomovision version 69, Copyright (C) year name of author
+    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `sho=
w w'.
+    This is free software, and you are welcome to redistribute it
+    under certain conditions; type `show c' for details.
+
+The hypothetical commands `show w' and `show c' should show the appropri=
ate
+parts of the General Public License.  Of course, the commands you use ma=
y
+be called something other than `show w' and `show c'; they could even be
+mouse-clicks or menu items--whatever suits your program.
+
+You should also get your employer (if you work as a programmer) or your
+school, if any, to sign a "copyright disclaimer" for the program, if
+necessary.  Here is a sample; alter the names:
+
+  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
+  `Gnomovision' (which makes passes at compilers) written by James Hacke=
r.
+
+  <signature of Ty Coon>, 1 April 1989
+  Ty Coon, President of Vice
+
+This General Public License does not permit incorporating your program i=
nto
+proprietary programs.  If your program is a subroutine library, you may
+consider it more useful to permit linking proprietary applications with =
the
+library.  If this is what you want to do, use the GNU Library General
+Public License instead of this License.
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/Make=
file b/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
new file mode 100644
index 0000000000..664e966a86
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
@@ -0,0 +1,14 @@
+obj-m :=3D master.o
+
+SRC :=3D $(PWD)
+
+all:
+	$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC)
+
+modules_install:
+	$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install
+
+clean:
+	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
+	rm -f Module.markers Module.symvers modules.order
+	rm -rf .tmp_versions Modules.symvers
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/incl=
ude/master.h b/meta-skeleton/recipes-kernel/kernel-module-master/files/in=
clude/master.h
new file mode 100644
index 0000000000..b7b61b109a
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/include/mas=
ter.h
@@ -0,0 +1,25 @@
+/*
+ * External kernel module dependency exemple - master module
+ *
+ * Copyright (C) 2020 Hubert CHAUMETTE
+ */
+
+#ifndef MASTER_H
+#define MASTER_H
+
+#include <linux/notifier.h>
+
+enum master_evt_type {
+	MASTER_EVT_READ,
+	MASTER_EVT_WRITE,
+};
+
+struct master_evt_data {
+	char __user *buf;
+	size_t count;
+};
+
+int master_notifier_register(struct notifier_block *nb);
+int master_notifier_unregister(struct notifier_block *nb);
+
+#endif /* MASTER_H */
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/mast=
er.c b/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
new file mode 100644
index 0000000000..c94c468abf
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
@@ -0,0 +1,154 @@
+/*
+ * External kernel module dependency exemple - master module
+ *
+ * Copyright (C) 2020 Hubert CHAUMETTE
+ */
+
+#include <linux/cdev.h>
+#include <linux/fs.h>
+#include <linux/uaccess.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/types.h>
+
+#include "include/master.h"
+
+#define MASTER_NAME	"master"
+#define MASTER_BUF_SZ	128
+
+static DEFINE_MUTEX(master_lock);
+static BLOCKING_NOTIFIER_HEAD(master_chain_head);
+static int master_major;
+static struct class *master_class;
+static char master_buf[MASTER_BUF_SZ] =3D { 0 };
+static int master_count =3D 0;
+static struct device *master_device;
+
+int master_notifier_register(struct notifier_block *nb)
+{
+	return blocking_notifier_chain_register(&master_chain_head, nb);
+}
+EXPORT_SYMBOL(master_notifier_register);
+
+int master_notifier_unregister(struct notifier_block *nb)
+{
+	return blocking_notifier_chain_unregister(&master_chain_head, nb);
+}
+EXPORT_SYMBOL(master_notifier_unregister);
+
+static ssize_t master_read(struct file *fp, char __user *buf,
+			   size_t count, loff_t *offset)
+{
+	(void)fp;
+
+	ssize_t ret;
+	size_t read_count =3D min(master_count - *offset, count);
+	struct master_evt_data data =3D {
+		.buf =3D buf,
+		.count =3D read_count,
+	};
+
+	if (*offset >=3D master_count - 1)
+		return 0;
+
+	mutex_lock(&master_lock);
+
+	if (copy_to_user(buf, master_buf + *offset, read_count)) {
+		ret =3D -EFAULT;
+		goto unlock;
+	}
+	*offset +=3D read_count;
+	ret =3D read_count;
+
+	blocking_notifier_call_chain(&master_chain_head, MASTER_EVT_READ, &data=
);
+
+unlock:
+	mutex_unlock(&master_lock);
+
+	return ret;
+}
+
+static ssize_t master_write(struct file *fp, const char __user *buf,
+			    size_t count, loff_t *offset)
+{
+	(void)offset;
+	(void)fp;
+
+	ssize_t ret;
+	struct master_evt_data data =3D {
+		.buf =3D buf,
+		.count =3D count,
+	};
+
+	if (count > MASTER_BUF_SZ)
+		return -EFBIG;
+
+	mutex_lock(&master_lock);
+
+	if (copy_from_user(master_buf, buf, count)) {
+		ret =3D -EFAULT;
+		goto unlock;
+	}
+	ret =3D count;
+	master_count =3D count;
+
+	blocking_notifier_call_chain(&master_chain_head, MASTER_EVT_WRITE, &dat=
a);
+
+unlock:
+	mutex_unlock(&master_lock);
+
+	return ret;
+}
+
+static const struct file_operations master_fops =3D {
+	.owner =3D	THIS_MODULE,
+	.write =3D	master_write,
+	.read =3D		master_read,
+	.llseek =3D	no_llseek,
+};
+
+static int __init master_init(void)
+{
+	int ret =3D 0;
+
+	master_major =3D register_chrdev(0, MASTER_NAME, &master_fops);
+	if (master_major < 0) {
+		ret =3D master_major;
+		goto err;
+	}
+
+	master_class =3D class_create(THIS_MODULE, MASTER_NAME);
+	if (IS_ERR(master_class)) {
+		ret =3D PTR_ERR(master_class);
+		goto err_class;
+	}
+
+	master_device =3D device_create(master_class, NULL, MKDEV(master_major,=
 0),
+				      NULL, MASTER_NAME);
+	if (IS_ERR(master_device)) {
+		ret =3D PTR_ERR(master_device);
+		goto err_device;
+	}
+
+	return ret;
+
+err_device:
+	class_destroy(master_class);
+err_class:
+	unregister_chrdev(master_major, MASTER_NAME);
+err:
+	return ret;
+}
+module_init(master_init);
+
+static void __exit master_exit(void)
+{
+	device_destroy(master_class, MKDEV(master_major, 0));
+	class_destroy(master_class);
+	unregister_chrdev(master_major, MASTER_NAME);
+}
+module_exit(master_exit);
+
+MODULE_AUTHOR("Hubert CHAUMETTE");
+MODULE_DESCRIPTION("External kernel module dependency exemple - master m=
odule");
+MODULE_LICENSE("GPL");
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/kernel-mod=
ule-master.bb b/meta-skeleton/recipes-kernel/kernel-module-master/kernel-=
module-master.bb
new file mode 100644
index 0000000000..03105d89d1
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-mas=
ter.bb
@@ -0,0 +1,20 @@
+SUMMARY =3D "External kernel module dependency exemple - master module"
+LICENSE =3D "GPLv2"
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D12f884d2ae1ff87c09e5b7ccc2c4c=
a7e"
+
+inherit module
+
+PN =3D "kernel-module-master"
+PV =3D "0.1"
+
+SRC_URI =3D "file://Makefile \
+           file://master.c \
+           file://include/master.h \
+           file://COPYING \
+          "
+
+S =3D "${WORKDIR}"
+
+# Where to find the headers to share with dependencies.
+# Not stricly needed here because it is the default from module.bbclass
+MODULES_HEADERS_LOCATION =3D "include"
diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYI=
NG b/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
new file mode 100644
index 0000000000..6d45519c8c
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
@@ -0,0 +1,340 @@
+		    GNU GENERAL PUBLIC LICENSE
+		       Version 2, June 1991
+
+ Copyright (C) 1989, 1991 Free Software Foundation, Inc.
+                       51 Franklin St, Fifth Floor, Boston, MA  02110-13=
01  USA
+ Everyone is permitted to copy and distribute verbatim copies
+ of this license document, but changing it is not allowed.
+
+			    Preamble
+
+  The licenses for most software are designed to take away your
+freedom to share and change it.  By contrast, the GNU General Public
+License is intended to guarantee your freedom to share and change free
+software--to make sure the software is free for all its users.  This
+General Public License applies to most of the Free Software
+Foundation's software and to any other program whose authors commit to
+using it.  (Some other Free Software Foundation software is covered by
+the GNU Library General Public License instead.)  You can apply it to
+your programs, too.
+
+  When we speak of free software, we are referring to freedom, not
+price.  Our General Public Licenses are designed to make sure that you
+have the freedom to distribute copies of free software (and charge for
+this service if you wish), that you receive source code or can get it
+if you want it, that you can change the software or use pieces of it
+in new free programs; and that you know you can do these things.
+
+  To protect your rights, we need to make restrictions that forbid
+anyone to deny you these rights or to ask you to surrender the rights.
+These restrictions translate to certain responsibilities for you if you
+distribute copies of the software, or if you modify it.
+
+  For example, if you distribute copies of such a program, whether
+gratis or for a fee, you must give the recipients all the rights that
+you have.  You must make sure that they, too, receive or can get the
+source code.  And you must show them these terms so they know their
+rights.
+
+  We protect your rights with two steps: (1) copyright the software, and
+(2) offer you this license which gives you legal permission to copy,
+distribute and/or modify the software.
+
+  Also, for each author's protection and ours, we want to make certain
+that everyone understands that there is no warranty for this free
+software.  If the software is modified by someone else and passed on, we
+want its recipients to know that what they have is not the original, so
+that any problems introduced by others will not reflect on the original
+authors' reputations.
+
+  Finally, any free program is threatened constantly by software
+patents.  We wish to avoid the danger that redistributors of a free
+program will individually obtain patent licenses, in effect making the
+program proprietary.  To prevent this, we have made it clear that any
+patent must be licensed for everyone's free use or not licensed at all.
+
+  The precise terms and conditions for copying, distribution and
+modification follow.
+
+		    GNU GENERAL PUBLIC LICENSE
+   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
+
+  0. This License applies to any program or other work which contains
+a notice placed by the copyright holder saying it may be distributed
+under the terms of this General Public License.  The "Program", below,
+refers to any such program or work, and a "work based on the Program"
+means either the Program or any derivative work under copyright law:
+that is to say, a work containing the Program or a portion of it,
+either verbatim or with modifications and/or translated into another
+language.  (Hereinafter, translation is included without limitation in
+the term "modification".)  Each licensee is addressed as "you".
+
+Activities other than copying, distribution and modification are not
+covered by this License; they are outside its scope.  The act of
+running the Program is not restricted, and the output from the Program
+is covered only if its contents constitute a work based on the
+Program (independent of having been made by running the Program).
+Whether that is true depends on what the Program does.
+
+  1. You may copy and distribute verbatim copies of the Program's
+source code as you receive it, in any medium, provided that you
+conspicuously and appropriately publish on each copy an appropriate
+copyright notice and disclaimer of warranty; keep intact all the
+notices that refer to this License and to the absence of any warranty;
+and give any other recipients of the Program a copy of this License
+along with the Program.
+
+You may charge a fee for the physical act of transferring a copy, and
+you may at your option offer warranty protection in exchange for a fee.
+
+  2. You may modify your copy or copies of the Program or any portion
+of it, thus forming a work based on the Program, and copy and
+distribute such modifications or work under the terms of Section 1
+above, provided that you also meet all of these conditions:
+
+    a) You must cause the modified files to carry prominent notices
+    stating that you changed the files and the date of any change.
+
+    b) You must cause any work that you distribute or publish, that in
+    whole or in part contains or is derived from the Program or any
+    part thereof, to be licensed as a whole at no charge to all third
+    parties under the terms of this License.
+
+    c) If the modified program normally reads commands interactively
+    when run, you must cause it, when started running for such
+    interactive use in the most ordinary way, to print or display an
+    announcement including an appropriate copyright notice and a
+    notice that there is no warranty (or else, saying that you provide
+    a warranty) and that users may redistribute the program under
+    these conditions, and telling the user how to view a copy of this
+    License.  (Exception: if the Program itself is interactive but
+    does not normally print such an announcement, your work based on
+    the Program is not required to print an announcement.)
+
+These requirements apply to the modified work as a whole.  If
+identifiable sections of that work are not derived from the Program,
+and can be reasonably considered independent and separate works in
+themselves, then this License, and its terms, do not apply to those
+sections when you distribute them as separate works.  But when you
+distribute the same sections as part of a whole which is a work based
+on the Program, the distribution of the whole must be on the terms of
+this License, whose permissions for other licensees extend to the
+entire whole, and thus to each and every part regardless of who wrote it=
.
+
+Thus, it is not the intent of this section to claim rights or contest
+your rights to work written entirely by you; rather, the intent is to
+exercise the right to control the distribution of derivative or
+collective works based on the Program.
+
+In addition, mere aggregation of another work not based on the Program
+with the Program (or with a work based on the Program) on a volume of
+a storage or distribution medium does not bring the other work under
+the scope of this License.
+
+  3. You may copy and distribute the Program (or a work based on it,
+under Section 2) in object code or executable form under the terms of
+Sections 1 and 2 above provided that you also do one of the following:
+
+    a) Accompany it with the complete corresponding machine-readable
+    source code, which must be distributed under the terms of Sections
+    1 and 2 above on a medium customarily used for software interchange;=
 or,
+
+    b) Accompany it with a written offer, valid for at least three
+    years, to give any third party, for a charge no more than your
+    cost of physically performing source distribution, a complete
+    machine-readable copy of the corresponding source code, to be
+    distributed under the terms of Sections 1 and 2 above on a medium
+    customarily used for software interchange; or,
+
+    c) Accompany it with the information you received as to the offer
+    to distribute corresponding source code.  (This alternative is
+    allowed only for noncommercial distribution and only if you
+    received the program in object code or executable form with such
+    an offer, in accord with Subsection b above.)
+
+The source code for a work means the preferred form of the work for
+making modifications to it.  For an executable work, complete source
+code means all the source code for all modules it contains, plus any
+associated interface definition files, plus the scripts used to
+control compilation and installation of the executable.  However, as a
+special exception, the source code distributed need not include
+anything that is normally distributed (in either source or binary
+form) with the major components (compiler, kernel, and so on) of the
+operating system on which the executable runs, unless that component
+itself accompanies the executable.
+
+If distribution of executable or object code is made by offering
+access to copy from a designated place, then offering equivalent
+access to copy the source code from the same place counts as
+distribution of the source code, even though third parties are not
+compelled to copy the source along with the object code.
+
+  4. You may not copy, modify, sublicense, or distribute the Program
+except as expressly provided under this License.  Any attempt
+otherwise to copy, modify, sublicense or distribute the Program is
+void, and will automatically terminate your rights under this License.
+However, parties who have received copies, or rights, from you under
+this License will not have their licenses terminated so long as such
+parties remain in full compliance.
+
+  5. You are not required to accept this License, since you have not
+signed it.  However, nothing else grants you permission to modify or
+distribute the Program or its derivative works.  These actions are
+prohibited by law if you do not accept this License.  Therefore, by
+modifying or distributing the Program (or any work based on the
+Program), you indicate your acceptance of this License to do so, and
+all its terms and conditions for copying, distributing or modifying
+the Program or works based on it.
+
+  6. Each time you redistribute the Program (or any work based on the
+Program), the recipient automatically receives a license from the
+original licensor to copy, distribute or modify the Program subject to
+these terms and conditions.  You may not impose any further
+restrictions on the recipients' exercise of the rights granted herein.
+You are not responsible for enforcing compliance by third parties to
+this License.
+
+  7. If, as a consequence of a court judgment or allegation of patent
+infringement or for any other reason (not limited to patent issues),
+conditions are imposed on you (whether by court order, agreement or
+otherwise) that contradict the conditions of this License, they do not
+excuse you from the conditions of this License.  If you cannot
+distribute so as to satisfy simultaneously your obligations under this
+License and any other pertinent obligations, then as a consequence you
+may not distribute the Program at all.  For example, if a patent
+license would not permit royalty-free redistribution of the Program by
+all those who receive copies directly or indirectly through you, then
+the only way you could satisfy both it and this License would be to
+refrain entirely from distribution of the Program.
+
+If any portion of this section is held invalid or unenforceable under
+any particular circumstance, the balance of the section is intended to
+apply and the section as a whole is intended to apply in other
+circumstances.
+
+It is not the purpose of this section to induce you to infringe any
+patents or other property right claims or to contest validity of any
+such claims; this section has the sole purpose of protecting the
+integrity of the free software distribution system, which is
+implemented by public license practices.  Many people have made
+generous contributions to the wide range of software distributed
+through that system in reliance on consistent application of that
+system; it is up to the author/donor to decide if he or she is willing
+to distribute software through any other system and a licensee cannot
+impose that choice.
+
+This section is intended to make thoroughly clear what is believed to
+be a consequence of the rest of this License.
+
+  8. If the distribution and/or use of the Program is restricted in
+certain countries either by patents or by copyrighted interfaces, the
+original copyright holder who places the Program under this License
+may add an explicit geographical distribution limitation excluding
+those countries, so that distribution is permitted only in or among
+countries not thus excluded.  In such case, this License incorporates
+the limitation as if written in the body of this License.
+
+  9. The Free Software Foundation may publish revised and/or new version=
s
+of the General Public License from time to time.  Such new versions will
+be similar in spirit to the present version, but may differ in detail to
+address new problems or concerns.
+
+Each version is given a distinguishing version number.  If the Program
+specifies a version number of this License which applies to it and "any
+later version", you have the option of following the terms and condition=
s
+either of that version or of any later version published by the Free
+Software Foundation.  If the Program does not specify a version number o=
f
+this License, you may choose any version ever published by the Free Soft=
ware
+Foundation.
+
+  10. If you wish to incorporate parts of the Program into other free
+programs whose distribution conditions are different, write to the autho=
r
+to ask for permission.  For software which is copyrighted by the Free
+Software Foundation, write to the Free Software Foundation; we sometimes
+make exceptions for this.  Our decision will be guided by the two goals
+of preserving the free status of all derivatives of our free software an=
d
+of promoting the sharing and reuse of software generally.
+
+			    NO WARRANTY
+
+  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRAN=
TY
+FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
+OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
+PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS=
ED
+OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK A=
S
+TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
+PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
+REPAIR OR CORRECTION.
+
+  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRIT=
ING
+WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
+REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGE=
S,
+INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARIS=
ING
+OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITE=
D
+TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
+YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTH=
ER
+PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
+POSSIBILITY OF SUCH DAMAGES.
+
+		     END OF TERMS AND CONDITIONS
+
+	    How to Apply These Terms to Your New Programs
+
+  If you develop a new program, and you want it to be of the greatest
+possible use to the public, the best way to achieve this is to make it
+free software which everyone can redistribute and change under these ter=
ms.
+
+  To do so, attach the following notices to the program.  It is safest
+to attach them to the start of each source file to most effectively
+convey the exclusion of warranty; and each file should have at least
+the "copyright" line and a pointer to where the full notice is found.
+
+    <one line to give the program's name and a brief idea of what it doe=
s.>
+    Copyright (C) <year>  <name of author>
+
+    This program is free software; you can redistribute it and/or modify
+    it under the terms of the GNU General Public License as published by
+    the Free Software Foundation; either version 2 of the License, or
+    (at your option) any later version.
+
+    This program is distributed in the hope that it will be useful,
+    but WITHOUT ANY WARRANTY; without even the implied warranty of
+    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+    GNU General Public License for more details.
+
+    You should have received a copy of the GNU General Public License
+    along with this program; if not, write to the Free Software
+    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-130=
1  USA
+
+
+Also add information on how to contact you by electronic and paper mail.
+
+If the program is interactive, make it output a short notice like this
+when it starts in an interactive mode:
+
+    Gnomovision version 69, Copyright (C) year name of author
+    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `sho=
w w'.
+    This is free software, and you are welcome to redistribute it
+    under certain conditions; type `show c' for details.
+
+The hypothetical commands `show w' and `show c' should show the appropri=
ate
+parts of the General Public License.  Of course, the commands you use ma=
y
+be called something other than `show w' and `show c'; they could even be
+mouse-clicks or menu items--whatever suits your program.
+
+You should also get your employer (if you work as a programmer) or your
+school, if any, to sign a "copyright disclaimer" for the program, if
+necessary.  Here is a sample; alter the names:
+
+  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
+  `Gnomovision' (which makes passes at compilers) written by James Hacke=
r.
+
+  <signature of Ty Coon>, 1 April 1989
+  Ty Coon, President of Vice
+
+This General Public License does not permit incorporating your program i=
nto
+proprietary programs.  If your program is a subroutine library, you may
+consider it more useful to permit linking proprietary applications with =
the
+library.  If this is what you want to do, use the GNU Library General
+Public License instead of this License.
diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makef=
ile b/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
new file mode 100644
index 0000000000..4c7decc67e
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
@@ -0,0 +1,14 @@
+obj-m :=3D slave.o
+
+SRC :=3D $(shell pwd)
+
+all:
+	$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC)
+
+modules_install:
+	$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install
+
+clean:
+	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
+	rm -f Module.markers Module.symvers modules.order
+	rm -rf .tmp_versions Modules.symvers
diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave=
.c b/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
new file mode 100644
index 0000000000..b88aac986d
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
@@ -0,0 +1,53 @@
+/*
+ * External kernel module dependency exemple - slave module
+ *
+ * Copyright (C) 2020 Hubert CHAUMETTE
+ */
+
+#include <linux/module.h>
+
+#include <kernel-module-master/master.h>
+
+static int slave_notify(struct notifier_block *self,
+			unsigned long action, void *data);
+
+static struct notifier_block slave_nb =3D {
+	.notifier_call =3D slave_notify,
+};
+
+static int slave_notify(struct notifier_block *self,
+			unsigned long action, void *data)
+{
+	struct master_evt_data *d =3D (struct master_evt_data *)data;
+
+	BUG_ON(data =3D=3D NULL);
+
+	switch (action) {
+	case MASTER_EVT_READ:
+		pr_info("slave: \"%.*s\" read from master\n", d->count, d->buf);
+		break;
+	case MASTER_EVT_WRITE:
+		pr_info("slave: \"%.*s\" written to master\n", d->count, d->buf);
+		break;
+	default:
+		break;
+	}
+
+	return NOTIFY_DONE;
+}
+
+static int __init slave_init(void)
+{
+	return master_notifier_register(&slave_nb);
+}
+module_init(slave_init);
+
+static void __exit slave_exit(void)
+{
+	master_notifier_unregister(&slave_nb);
+}
+module_exit(slave_exit);
+
+MODULE_AUTHOR("Hubert CHAUMETTE");
+MODULE_DESCRIPTION("External kernel module dependency exemple - slave mo=
dule");
+MODULE_LICENSE("GPL");
diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-modu=
le-slave.bb b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-mod=
ule-slave.bb
new file mode 100644
index 0000000000..b0e948c986
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slav=
e.bb
@@ -0,0 +1,17 @@
+SUMMARY =3D "External kernel module dependency exemple - slave module"
+LICENSE =3D "GPLv2"
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D12f884d2ae1ff87c09e5b7ccc2c4c=
a7e"
+
+inherit module
+
+PN =3D "kernel-module-slave"
+PV =3D "0.1"
+
+DEPENDS =3D "kernel-module-master"
+
+SRC_URI =3D "file://Makefile \
+           file://slave.c \
+           file://COPYING \
+          "
+
+S =3D "${WORKDIR}"
diff --git a/meta/classes/module.bbclass b/meta/classes/module.bbclass
index c0dfa35061..677d00ea60 100644
--- a/meta/classes/module.bbclass
+++ b/meta/classes/module.bbclass
@@ -4,14 +4,18 @@ EXTRA_OEMAKE +=3D "KERNEL_SRC=3D${STAGING_KERNEL_DIR}"
=20
 MODULES_INSTALL_TARGET ?=3D "modules_install"
 MODULES_MODULE_SYMVERS_LOCATION ?=3D ""
+MODULES_HEADERS_LOCATION ?=3D "include"
=20
 python __anonymous () {
     depends =3D d.getVar('DEPENDS')
     extra_symbols =3D []
+    extra_cflags =3D []
     for dep in depends.split():
         if dep.startswith("kernel-module-"):
             extra_symbols.append("${STAGING_INCDIR}/" + dep + "/Module.s=
ymvers")
+            extra_cflags.append("-I${STAGING_INCDIR}/")
     d.setVar('KBUILD_EXTRA_SYMBOLS', " ".join(extra_symbols))
+    d.setVar('EXTRA_CFLAGS', " ".join(extra_cflags))
 }
=20
 python do_devshell_prepend () {
@@ -32,6 +36,11 @@ python do_devshell_prepend () {
         os.environ['KBUILD_EXTRA_SYMBOLS'] =3D kbuild_extra_symbols
     else:
         os.environ['KBUILD_EXTRA_SYMBOLS'] =3D ''
+    extra_cflags =3D d.getVar('EXTRA_CFLAGS')
+    if extra_cflags:
+        os.environ['EXTRA_CFLAGS'] =3D extra_cflags
+    else:
+        os.environ['EXTRA_CFLAGS'] =3D ''
 }
=20
 module_do_compile() {
@@ -40,18 +49,19 @@ module_do_compile() {
 		   KERNEL_VERSION=3D${KERNEL_VERSION}    \
 		   CC=3D"${KERNEL_CC}" LD=3D"${KERNEL_LD}" \
 		   AR=3D"${KERNEL_AR}" \
-	           O=3D${STAGING_KERNEL_BUILDDIR} \
+		   O=3D${STAGING_KERNEL_BUILDDIR} \
 		   KBUILD_EXTRA_SYMBOLS=3D"${KBUILD_EXTRA_SYMBOLS}" \
+		   EXTRA_CFLAGS=3D"${EXTRA_CFLAGS}" \
 		   ${MAKE_TARGETS}
 }
=20
 module_do_install() {
 	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
 	oe_runmake DEPMOD=3Decho MODLIB=3D"${D}${nonarch_base_libdir}/modules/$=
{KERNEL_VERSION}" \
-	           INSTALL_FW_PATH=3D"${D}${nonarch_base_libdir}/firmware" \
-	           CC=3D"${KERNEL_CC}" LD=3D"${KERNEL_LD}" \
-	           O=3D${STAGING_KERNEL_BUILDDIR} \
-	           ${MODULES_INSTALL_TARGET}
+		   INSTALL_FW_PATH=3D"${D}${nonarch_base_libdir}/firmware" \
+		   CC=3D"${KERNEL_CC}" LD=3D"${KERNEL_LD}" \
+		   O=3D${STAGING_KERNEL_BUILDDIR} \
+		   ${MODULES_INSTALL_TARGET}
=20
 	if [ ! -e "${B}/${MODULES_MODULE_SYMVERS_LOCATION}/Module.symvers" ] ; =
then
 		bbwarn "Module.symvers not found in ${B}/${MODULES_MODULE_SYMVERS_LOCA=
TION}"
@@ -64,6 +74,16 @@ module_do_install() {
 		# clear them out to avoid confusion
 		sed -e 's:${B}/::g' -i ${D}${includedir}/${BPN}/Module.symvers
 	fi
+
+	if [ ! -n "$(ls ${S}/${MODULES_HEADERS_LOCATION}/*.h 2>/dev/null)" ] ; =
then
+		bbwarn "No headers found in ${S}/${MODULES_HEADERS_LOCATION}"
+		bbwarn "Please consider setting MODULES_HEADERS_LOCATION to a"
+		bbwarn "directory below S to get correct inter-module dependencies"
+	else
+		for file in ${S}/${MODULES_HEADERS_LOCATION}/*.h ; do
+			install -Dm0644 $file ${D}${includedir}/${BPN}/
+		done
+	fi
 }
=20
 EXPORT_FUNCTIONS do_compile do_install
--=20
2.27.0

