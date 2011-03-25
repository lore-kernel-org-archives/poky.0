Return-Path: <david.c.stewart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id F07184C800BA
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 18:57:20 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Mar 2011 16:57:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,246,1299484800"; d="scan'208";a="901978068"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 25 Mar 2011 16:57:20 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 25 Mar 2011 16:57:20 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Fri, 25 Mar 2011 16:57:19 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 25 Mar 2011 16:57:18 -0700
Thread-Topic: [poky] [PATCH 2/2]
	documentation/yocto-project-qs/yocto-project-qs.xml: [BUGID#	931] -
	Removed Fedora 14 bitbake native note
Thread-Index: AcvrC0vu+iFI3E7LRKKBpfKs1VhZeAAPQv8w
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25DBE62BED@orsmsx501.amr.corp.intel.com>
References: <cover.1301070812.git.scott.m.rifenbark@intel.com>
	<658b3d55bb1e3d4967f91636d71bc05066966620.1301070812.git.scott.m.rifenbark@intel.com>
In-Reply-To: <658b3d55bb1e3d4967f91636d71bc05066966620.1301070812.git.scott.m.rifenbark@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 2/2]	documentation/yocto-project-qs/yocto-project-qs.xml: [BUGID#	931] - Removed Fedora 14 bitbake native note
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
X-List-Received-Date: Fri, 25 Mar 2011 23:57:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ooops - ignore my last email - sorry.

>-----Original Message-----
>From: poky-bounces@yoctoproject.org [mailto:poky-
>bounces@yoctoproject.org] On Behalf Of scott.m.rifenbark@intel.com
>Sent: Friday, March 25, 2011 9:41 AM
>To: poky@yoctoproject.org
>Subject: [poky] [PATCH 2/2] documentation/yocto-project-qs/yocto-
>project-qs.xml: [BUGID# 931] - Removed Fedora 14 bitbake native note
>
>From: Scott Rifenbark <scott.m.rifenbark@intel.com>
>
>[BUGID# 931] - I have removed the Note indicating that the user must run
>'bitbake make-native' if running Fedora 14.
>This is no longer a requirement for YP Release 1.0
>
>Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
>---
> .../yocto-project-qs/yocto-project-qs.xml          |   11 -----------
> 1 files changed, 0 insertions(+), 11 deletions(-)
>
>diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml
>b/documentation/yocto-project-qs/yocto-project-qs.xml
>index e6a1da9..b1040a2 100644
>--- a/documentation/yocto-project-qs/yocto-project-qs.xml
>+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
>@@ -288,17 +288,6 @@
>      $ bitbake poky-image-sato
>              </literallayout>
>              <note><para>
>-                 If you are running Fedora 14 or another distribution
>-                 that ships with GNU, run the following two
><filename>BitBake</filename>
>-                 commands.
>-                 For more information, see
>-                 <ulink url=3D'http://www.mail-archive.com/bug-
>make@gnu.org/msg06220.html'></ulink>.
>-                 <literallayout class=3D'monospaced'>
>-     $ bitbake make-native
>-     $ bitbake poky-image-sato
>-                 </literallayout>
>-             </para></note>
>-             <note><para>
>                  BitBake requires Python 2.6.  For more information on
>this requirement,
>                  see the FAQ appendix in the
>                  <ulink url=3D'http://www.yoctoproject.org/docs/poky-ref-
>manual/poky-ref-manual.html'>
>--
>1.7.1
>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

