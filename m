Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BAF754C800A0
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 15:01:39 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Feb 2011 13:01:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,182,1297065600"; d="scan'208";a="658833786"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 17 Feb 2011 13:01:35 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 17 Feb 2011 13:01:32 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Thu, 17 Feb 2011 13:01:31 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "perl5-porters@perl.org" <perl5-porters@perl.org>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 17 Feb 2011 13:01:31 -0800
Thread-Topic: [Patch] fix for perl parallel build issue
Thread-Index: AcvO5dpvjTojUWDXRH6F5iaf6BhUbw==
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE941238E8D6@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [Patch] fix for perl parallel build issue
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
X-List-Received-Date: Thu, 17 Feb 2011 21:01:40 -0000
X-Groupsio-MsgNum: 3744
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_9DA5872FEF993D41B7173F58FCF6BE941238E8D6orsmsx504amrcor_"

--_002_9DA5872FEF993D41B7173F58FCF6BE941238E8D6orsmsx504amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

   While building perl recipe in our yocto environment, we found that perl=
=20
parallel build (make -j 32) on a 40 way system was failing. As the=20
non-parallel (make -j 1) build was succeeding it was a build dependency iss=
ue.=20
Looking  at the errors I came up with the attached patch which fixed the=20
parallel build.

  This patch was made for perl version 5.12.2, but I see the latest perl gi=
t=20
tree can also take this fix.
 =20
Signed-Off-By: Nitin A Kamble <nitin.a.kamble@intel.com>
Index: perl-5.12.2/Makefile.SH
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- perl-5.12.2.orig/Makefile.SH	2010-09-06 16:30:32.000000000 -0700
+++ perl-5.12.2/Makefile.SH	2011-02-16 16:21:30.744143773 -0800
@@ -198,6 +198,8 @@
 $this_target: uni.data" ;;
 	Text/ParseWords) extra_dep=3D"$extra_dep
 $this_target: lib/auto/Scalar/Util.$dlext" ;;
+	POSIX) extra_dep=3D"$extra_dep
+$this_target: lib/auto/Cwd/Cwd.$dlext" ;;
     esac
 done

Thanks,
Nitin=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Nitin A Kamble <nitin.a.kamble@intel.com>
Yocto Embedded Linux project http://www.yoctoproject.org

--_002_9DA5872FEF993D41B7173F58FCF6BE941238E8D6orsmsx504amrcor_
Content-Type: application/octet-stream; name="parallel_build_fix.patch"
Content-Description: parallel_build_fix.patch
Content-Disposition: attachment; filename="parallel_build_fix.patch";
	size=581; creation-date="Thu, 17 Feb 2011 12:39:08 GMT";
	modification-date="Wed, 16 Feb 2011 21:51:56 GMT"
Content-Transfer-Encoding: base64

VGhpcyBwYXRjaCBmaXhlcyB0aGUgcGFyYWxsZWwgbWFrZSBpc3N1ZSBvbiBhIDQwIHdheSBidWls
ZCBzeXN0ZW0KCk5pdGluIEEgS2FtYmxlIDxuaXRpbi5hLmthbWJsZUBpbnRlbC5jb20+CjIwMTEt
MDItMTYKCkluZGV4OiBwZXJsLTUuMTIuMi9NYWtlZmlsZS5TSAo9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Ci0tLSBwZXJs
LTUuMTIuMi5vcmlnL01ha2VmaWxlLlNICTIwMTAtMDktMDYgMTY6MzA6MzIuMDAwMDAwMDAwIC0w
NzAwCisrKyBwZXJsLTUuMTIuMi9NYWtlZmlsZS5TSAkyMDExLTAyLTE2IDE2OjIxOjMwLjc0NDE0
Mzc3MyAtMDgwMApAQCAtMTk4LDYgKzE5OCw4IEBACiAkdGhpc190YXJnZXQ6IHVuaS5kYXRhIiA7
OwogCVRleHQvUGFyc2VXb3JkcykgZXh0cmFfZGVwPSIkZXh0cmFfZGVwCiAkdGhpc190YXJnZXQ6
IGxpYi9hdXRvL1NjYWxhci9VdGlsLiRkbGV4dCIgOzsKKwlQT1NJWCkgZXh0cmFfZGVwPSIkZXh0
cmFfZGVwCiskdGhpc190YXJnZXQ6IGxpYi9hdXRvL0N3ZC9Dd2QuJGRsZXh0IiA7OwogICAgIGVz
YWMKIGRvbmUKIAo=

--_002_9DA5872FEF993D41B7173F58FCF6BE941238E8D6orsmsx504amrcor_--
