Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.5704.1574860006749758067
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 05:06:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axentia.se header.s=selector2 header.b=KD0Wtdn+;
 spf=fail (domain: axentia.se, ip: 140.211.169.56, mailfrom: du@axentia.se)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A82FE00ECC; Wed, 27 Nov 2019 05:06:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.2.100 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (mail-eopbgr20100.outbound.protection.outlook.com [40.107.2.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80466E00BA3
	for <poky@yoctoproject.org>; Wed, 27 Nov 2019 05:06:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d7uBku2UpxjhLmHRXW0XEMvORaLSIaVZHrl15EoIKS6nXLdC6/NVItJPFd3NdCE0pz3bJMn2H4XjM2+Jg0vlNkJVe+qOop+0F8FRu8GLRGXKgm7uth2vi6Wbhw+MgFRKjMDk7kWFWxn2LHXoQpz9NvVHWBupbOqGjLAiDMGwGlTyHVbOfHEll+0ZltCKJoJzBXtQo5mpzGg/HjSncAiXaQDd8WPj5nWENXxgVMmNIZ63XOygWpGo13ZD9hFr48/Me/dbQDdn+dkRz4R+tGs+AJYPzQQvluhS8Rr7vs1bYMYJB30HVVnTTQYJlJCBWoCD23ZEGytlAeehv/O1hkSpbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHC0Ttk6cvY0Rw0CdvBOJYpnWCXPhhvp6WXkSO7p7pU=;
 b=QlgWY6zU+KjDUhZSxJu0WjwBZ0XOeP6wdj43FsufGelVxRBk7uC7nQrlqT24VIig2MD/E46uQJ36l2fV3Js7ngO0gsKxvm8BEdfRcuMSv07wxAMQLSEWT52yYd2KBnbwYbDSA2rCEKRgg87YmEh11Ep7U1Xa48Z9Cjfkfgo6xWc6KusxACytHJVfPPeJ4frFsr358bXKAIugPL9rXg9ZqRdY7cSrxkOlDc7Y9i5SoonwU758zUor6LNk3Kxz1wyA9baFYVxNt3KoG+/XdIE9bYwBZapeeNGk0X6f5Mpl5lytKdfyOk+X2bmqBLLAWtPKqx4ATd2z6SMxD5dypDkdAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHC0Ttk6cvY0Rw0CdvBOJYpnWCXPhhvp6WXkSO7p7pU=;
 b=KD0Wtdn+vSMJtHEL1i2dP2GM4CrqThnuXclPuPUL62gbXAfHvDNwYKqyHGt++zokcsJZecZpIQVeSLu/YZ9T9uODRGeATfJ3sizAt9pLrVrBCBUgSQB0DWh+nV19KJIRvYkF48X3ZpDSYToKwzp6E44QEyW2ww2znrA/0M/K0oA=
Received: from HE1PR0202MB2714.eurprd02.prod.outlook.com (10.168.189.16) by
 HE1PR0202MB2572.eurprd02.prod.outlook.com (10.168.183.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.25; Wed, 27 Nov 2019 13:06:42 +0000
Received: from HE1PR0202MB2714.eurprd02.prod.outlook.com
 ([fe80::fc30:8b3d:e3b0:60da]) by HE1PR0202MB2714.eurprd02.prod.outlook.com
 ([fe80::fc30:8b3d:e3b0:60da%8]) with mapi id 15.20.2474.023; Wed, 27 Nov 2019
 13:06:42 +0000
From: "Daniels Umanovskis" <du@axentia.se>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
CC: Daniels Umanovskis <du@axentia.se>
Subject: [PULL] [PATCH 1/1] gattlib: add the recipe
Thread-Topic: [PULL] [PATCH 1/1] gattlib: add the recipe
Thread-Index: AQHVpSODXHt3lD+SnEeSNXD/HbHJnA==
Date: Wed, 27 Nov 2019 13:06:42 +0000
Message-ID: 
 <a8c1ab0e22997865b732383b9d7a8b6f64394894.1574858887.git.du@axentia.se>
References: <cover.1574858887.git.du@axentia.se>
In-Reply-To: <cover.1574858887.git.du@axentia.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR07CA0016.eurprd07.prod.outlook.com
 (2603:10a6:7:67::26) To HE1PR0202MB2714.eurprd02.prod.outlook.com
 (2603:10a6:3:9a::16)
authentication-results: spf=none (sender IP is ) smtp.mailfrom=du@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [87.96.186.165]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1d29e47c-0b99-43d3-2161-08d7733aa598
x-ms-traffictypediagnostic: HE1PR0202MB2572:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <HE1PR0202MB257205D5678032E1E00B08C7BD440@HE1PR0202MB2572.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 023495660C
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(396003)(366004)(376002)(346002)(136003)(39830400003)(199004)(189003)(6512007)(19627235002)(8676002)(30864003)(6916009)(66066001)(81156014)(1730700003)(2906002)(5024004)(256004)(3846002)(6116002)(81166006)(316002)(2616005)(11346002)(446003)(14444005)(8936002)(2501003)(99286004)(508600001)(2351001)(4326008)(107886003)(25786009)(86362001)(14454004)(66476007)(6486002)(66556008)(36756003)(66946007)(76176011)(26005)(52116002)(6436002)(118296001)(305945005)(5660300002)(50226002)(186003)(71190400001)(7736002)(386003)(5640700003)(64756008)(66446008)(6506007)(71200400001)(102836004)(2004002)(559001)(579004);DIR:OUT;SFP:1102;SCL:1;SRVR:HE1PR0202MB2572;H:HE1PR0202MB2714.eurprd02.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Tifuzvm5KPy86axmBZxMs8LXBNSTrxIObddWgvuB5LszWur3Uhm6vdZM2hdr7+N4cdh/0H/UE1r+MwdCqsEnDXE2eRngroXJjsa+DF/7Xhg1alw+CA0UVRpPIcV7Znu8za6bTOhkXlSKerGOLbjjyEOOkeNnAQUbdQEDGwJa7mCcm6X/SSIdSyckh1eIyXd/+nEg2fY/GGhiTQmMxAcS+Idakg4MwMctE2A5q9PtHfiiImUTTi8ITOFGyOr0Klbk8FmDHeX+w9dyG2aB8kJ4Bk7hRk1mkRpgugU68pxV426UxLEB1pWVWLknjTeZM54e2yq2NlVeSf6dzeJIa+/45xZ4I+XEh5FNcODy2yyaoV9EChWRbWH9DpE7I9d/41yYK/vmqeJfRpiQxrZCyk+M6r6GOv/mDUZoWyDR8HYg5GdGs/zImJX19TOkK2olQC+i
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d29e47c-0b99-43d3-2161-08d7733aa598
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2019 13:06:42.1331
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kW5fN/GOeTb9OHZqupyaN/KRZrF6MkuQ5dNHoa0Mi/ceLQ8s/VDZ8gpnbcmY72bp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0202MB2572
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

---
 .../gattlib/files/LICENSE                     | 339 ++++++++++++++++++
 ...oid-strange-chars-from-the-build-dir.patch |  70 ++++
 .../gattlib/gattlib_git.bb                    |  31 ++
 3 files changed, 440 insertions(+)
 create mode 100644 meta/recipes-connectivity/gattlib/files/LICENSE
 create mode 100644 meta/recipes-connectivity/gattlib/files/dbus-avoid-stra=
nge-chars-from-the-build-dir.patch
 create mode 100644 meta/recipes-connectivity/gattlib/gattlib_git.bb

diff --git a/meta/recipes-connectivity/gattlib/files/LICENSE b/meta/recipes=
-connectivity/gattlib/files/LICENSE
new file mode 100644
index 0000000000..d159169d10
--- /dev/null
+++ b/meta/recipes-connectivity/gattlib/files/LICENSE
@@ -0,0 +1,339 @@
+                    GNU GENERAL PUBLIC LICENSE
+                       Version 2, June 1991
+
+ Copyright (C) 1989, 1991 Free Software Foundation, Inc.,
+ 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
+ Everyone is permitted to copy and distribute verbatim copies
+ of this license document, but changing it is not allowed.
+
+                            Preamble
+
+  The licenses for most software are designed to take away your
+freedom to share and change it.  By contrast, the GNU General Public
+License is intended to guarantee your freedom to share and change free
+software--to make sure the software is free for all its users.  This
+General Public License applies to most of the Free Software
+Foundation's software and to any other program whose authors commit to
+using it.  (Some other Free Software Foundation software is covered by
+the GNU Lesser General Public License instead.)  You can apply it to
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
+                    GNU GENERAL PUBLIC LICENSE
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
+entire whole, and thus to each and every part regardless of who wrote it.
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
+    1 and 2 above on a medium customarily used for software interchange; o=
r,
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
+  9. The Free Software Foundation may publish revised and/or new versions
+of the General Public License from time to time.  Such new versions will
+be similar in spirit to the present version, but may differ in detail to
+address new problems or concerns.
+
+Each version is given a distinguishing version number.  If the Program
+specifies a version number of this License which applies to it and "any
+later version", you have the option of following the terms and conditions
+either of that version or of any later version published by the Free
+Software Foundation.  If the Program does not specify a version number of
+this License, you may choose any version ever published by the Free Softwa=
re
+Foundation.
+
+  10. If you wish to incorporate parts of the Program into other free
+programs whose distribution conditions are different, write to the author
+to ask for permission.  For software which is copyrighted by the Free
+Software Foundation, write to the Free Software Foundation; we sometimes
+make exceptions for this.  Our decision will be guided by the two goals
+of preserving the free status of all derivatives of our free software and
+of promoting the sharing and reuse of software generally.
+
+                            NO WARRANTY
+
+  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
+FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
+OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
+PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
+OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
+TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
+PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
+REPAIR OR CORRECTION.
+
+  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITIN=
G
+WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
+REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
+INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISIN=
G
+OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
+TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
+YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
+PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
+POSSIBILITY OF SUCH DAMAGES.
+
+                     END OF TERMS AND CONDITIONS
+
+            How to Apply These Terms to Your New Programs
+
+  If you develop a new program, and you want it to be of the greatest
+possible use to the public, the best way to achieve this is to make it
+free software which everyone can redistribute and change under these terms=
.
+
+  To do so, attach the following notices to the program.  It is safest
+to attach them to the start of each source file to most effectively
+convey the exclusion of warranty; and each file should have at least
+the "copyright" line and a pointer to where the full notice is found.
+
+    <one line to give the program's name and a brief idea of what it does.=
>
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
+    You should have received a copy of the GNU General Public License alon=
g
+    with this program; if not, write to the Free Software Foundation, Inc.=
,
+    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+Also add information on how to contact you by electronic and paper mail.
+
+If the program is interactive, make it output a short notice like this
+when it starts in an interactive mode:
+
+    Gnomovision version 69, Copyright (C) year name of author
+    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show =
w'.
+    This is free software, and you are welcome to redistribute it
+    under certain conditions; type `show c' for details.
+
+The hypothetical commands `show w' and `show c' should show the appropriat=
e
+parts of the General Public License.  Of course, the commands you use may
+be called something other than `show w' and `show c'; they could even be
+mouse-clicks or menu items--whatever suits your program.
+
+You should also get your employer (if you work as a programmer) or your
+school, if any, to sign a "copyright disclaimer" for the program, if
+necessary.  Here is a sample; alter the names:
+
+  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
+  `Gnomovision' (which makes passes at compilers) written by James Hacker.
+
+  <signature of Ty Coon>, 1 April 1989
+  Ty Coon, President of Vice
+
+This General Public License does not permit incorporating your program int=
o
+proprietary programs.  If your program is a subroutine library, you may
+consider it more useful to permit linking proprietary applications with th=
e
+library.  If this is what you want to do, use the GNU Lesser General
+Public License instead of this License.
diff --git a/meta/recipes-connectivity/gattlib/files/dbus-avoid-strange-cha=
rs-from-the-build-dir.patch b/meta/recipes-connectivity/gattlib/files/dbus-=
avoid-strange-chars-from-the-build-dir.patch
new file mode 100644
index 0000000000..96e4f8d6fa
--- /dev/null
+++ b/meta/recipes-connectivity/gattlib/files/dbus-avoid-strange-chars-from=
-the-build-dir.patch
@@ -0,0 +1,70 @@
+From 87df05c3f83c563af76ab00567e7a1ab7a6ebc88 Mon Sep 17 00:00:00 2001
+From: Peter Rosin <peda@axentia.se>
+Date: Sat, 9 Nov 2019 15:42:03 +0100
+Subject: [PATCH] dbus: avoid 'strange' chars from the build dir in #define=
s
+
+gdbus-codegen uses include guards with the full path dir, and if there
+are "bad" characters, such as '+', this fails miserably. E.g. Yocto has a
+tendency to build in directories named from the Yocto package version and
+that package version containing a '+' are not uncommon, and even the
+standard in certain scenarios such as when using ${SRCPV}.
+
+Avoid the problem of the full path "leaking" into the source by avoiding
+the normal include guards and request "#pragma once" instead.
+
+Signed-off-by: Peter Rosin <peda@axentia.se>
+---
+ dbus/CMakeLists.txt | 12 ++++++------
+ 1 file changed, 6 insertions(+), 6 deletions(-)
+
+diff --git a/dbus/CMakeLists.txt b/dbus/CMakeLists.txt
+index f5096ce10ecd..013c32239e12 100644
+--- a/dbus/CMakeLists.txt
++++ b/dbus/CMakeLists.txt
+@@ -43,37 +43,37 @@ else()
+ endif()
+=20
+ add_custom_command(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-adaptater=
1.c
+-                   COMMAND gdbus-codegen --interface-prefix org.bluez.Ada=
pter1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-adaptater1 $=
{CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/org.bluez.Adapter1.xml
++                   COMMAND gdbus-codegen --pragma-once --interface-prefix=
 org.bluez.Adapter1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/org-blue=
z-adaptater1 ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/org.bluez.Adapte=
r1.xml
+                    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/=
org.bluez.Adapter1.xml
+                    COMMENT "Generate D-Bus 'org.bluez.Adapter1.xml'"
+                    )
+
+ add_custom_command(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-device1.c
+-                   COMMAND gdbus-codegen --interface-prefix org.bluez.Dev=
ice1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-device1 ${CMA=
KE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/org.bluez.Device1.xml
++                   COMMAND gdbus-codegen --pragma-once --interface-prefix=
 org.bluez.Device1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/org-bluez=
-device1 ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/org.bluez.Device1.xm=
l
+                    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/=
org.bluez.Device1.xml
+                    COMMENT "Generate D-Bus 'org.bluez.Device1.xml'"
+                    )
+
+ add_custom_command(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-gattservi=
ce1.c
+-                   COMMAND gdbus-codegen --interface-prefix org.bluez.Gat=
tService1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-gattserv=
ice1 ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/org.bluez.GattService1.x=
ml
++                   COMMAND gdbus-codegen --pragma-once --interface-prefix=
 org.bluez.GattService1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/org-=
bluez-gattservice1 ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/org.bluez.=
GattService1.xml
+                    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/=
org.bluez.GattService1.xml
+                    COMMENT "Generate D-Bus 'org.bluez.GattService1.xml'"
+                    )
+
+ add_custom_command(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-gattchara=
cteristic1.c
+-                   COMMAND gdbus-codegen --interface-prefix org.bluez.Cha=
racteristic1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-gattc=
haracteristic1 ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/org.bluez.Gatt=
Characteristic1.xml
++                   COMMAND gdbus-codegen --pragma-once --interface-prefix=
 org.bluez.Characteristic1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/o=
rg-bluez-gattcharacteristic1 ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/=
org.bluez.GattCharacteristic1.xml
+                    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/=
org.bluez.GattCharacteristic1.xml
+                    COMMENT "Generate D-Bus 'org.bluez.GattCharacteristic1=
.xml'"
+                    )
+
+ add_custom_command(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-gattdescr=
iptor1.c
+-                   COMMAND gdbus-codegen --interface-prefix org.bluez.Des=
criptor1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-gattdescr=
iptor1 ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/org.bluez.GattDescript=
or1.xml
++                   COMMAND gdbus-codegen --pragma-once --interface-prefix=
 org.bluez.Descriptor1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/org-b=
luez-gattdescriptor1 ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/org.blue=
z.GattDescriptor1.xml
+                    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/=
org.bluez.GattDescriptor1.xml
+                    COMMENT "Generate D-Bus 'org.bluez.GattDescriptor1.xml=
'"
+                    )
+
+ add_custom_command(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-battery1.=
c
+-                   COMMAND gdbus-codegen --interface-prefix org.bluez.Bat=
tery1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/org-bluez-battery1 ${C=
MAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/org.bluez.Battery1.xml
++                   COMMAND gdbus-codegen --pragma-once --interface-prefix=
 org.bluez.Battery1. --generate-c-code ${CMAKE_CURRENT_BINARY_DIR}/org-blue=
z-battery1 ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/org.bluez.Battery1=
.xml
+                    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${DBUS_BLUEZ_API}/=
org.bluez.Battery1.xml
+                    COMMENT "Generate D-Bus 'org.bluez.Battery1.xml'"
+                    )
+--
+2.11.0
+
diff --git a/meta/recipes-connectivity/gattlib/gattlib_git.bb b/meta/recipe=
s-connectivity/gattlib/gattlib_git.bb
new file mode 100644
index 0000000000..74272ba26f
--- /dev/null
+++ b/meta/recipes-connectivity/gattlib/gattlib_git.bb
@@ -0,0 +1,31 @@
+DESCRIPTION =3D "Bluetooth library with attribute support"
+SECTION =3D "libs/network"
+
+LICENSE =3D "GPLv2+"
+LIC_FILES_CHKSUM =3D "file://${WORKDIR}/LICENSE;md5=3Db234ee4d69f5fce4486a=
80fdaf4a4263"
+
+DEPENDS =3D "bluez5 glib-2.0"
+DEPENDS +=3D "glib-2.0-native"
+
+PV =3D "0.2+git${SRCPV}"
+
+SRC_URI =3D "git://github.com/labapart/gattlib.git"
+SRC_URI +=3D "file://LICENSE"
+SRC_URI +=3D "file://dbus-avoid-strange-chars-from-the-build-dir.patch"
+
+SRCBRANCH =3D "master"
+SRCREV =3D "c6a33252221dff904cf277e085e2ce70aced8788"
+
+S =3D "${WORKDIR}/git"
+
+PACKAGECONFIG[examples] =3D "-DGATTLIB_BUILD_EXAMPLES=3DON,-DGATTLIB_BUILD=
_EXAMPLES=3DOFF"
+
+# Set this to force use of DBus API if Bluez version is older than 5.42
+PACKAGECONFIG[force-dbus] =3D "-DGATTLIB_FORCE_DBUS=3DTRUE,-DGATTLIB_FORCE=
_DBUS=3DFALSE"
+
+EXTRA_OECMAKE +=3D "-DGATTLIB_BUILD_DOCS=3DOFF"
+
+inherit pkgconfig cmake
+
+FILES_${PN} =3D "${libdir}/* ${includedir}/*"
+FILES_${PN}-dev =3D "${includedir}/*"
--=20
2.20.1

