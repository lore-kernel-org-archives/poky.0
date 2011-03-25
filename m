Return-Path: <david.c.stewart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F3C684C800BA
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 18:55:57 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Mar 2011 16:55:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,246,1299484800"; d="scan'208";a="901977827"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 25 Mar 2011 16:55:55 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Fri, 25 Mar 2011 16:55:55 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 25 Mar 2011 16:55:54 -0700
Thread-Topic: [poky] [PATCH 1/2]
	documentation/yocto-project-qs/yocto-project-qs.xml: Bug	reference
	added courtesy Colin Walters
Thread-Index: AcvrC1WleeuEpOeSRDSyymX1tpFhGgAPKhLw
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25DBE62BEB@orsmsx501.amr.corp.intel.com>
References: <cover.1301070812.git.scott.m.rifenbark@intel.com>
	<22906abaec121c9b6c5bdc6740c58bcf684be82d.1301070812.git.scott.m.rifenbark@intel.com>
In-Reply-To: <22906abaec121c9b6c5bdc6740c58bcf684be82d.1301070812.git.scott.m.rifenbark@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/2]	documentation/yocto-project-qs/yocto-project-qs.xml: Bug	reference added courtesy Colin Walters
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
X-List-Received-Date: Fri, 25 Mar 2011 23:55:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Are you sure that you even need to use make-native? I am building fine on F=
edora 14 without running it.

>-----Original Message-----
>From: poky-bounces@yoctoproject.org [mailto:poky-
>bounces@yoctoproject.org] On Behalf Of scott.m.rifenbark@intel.com
>Sent: Friday, March 25, 2011 9:41 AM
>To: poky@yoctoproject.org
>Subject: [poky] [PATCH 1/2] documentation/yocto-project-qs/yocto-
>project-qs.xml: Bug reference added courtesy Colin Walters
>
>From: Scott Rifenbark <scott.m.rifenbark@intel.com>
>
>In the Quick Start there is a note indicating that you should run
>'bitbake make-native' followed by 'bitbake poky-image-sato' if you
>are running Fedora 14 or another distribution that ships with GNU.
>Colin Walters submitted a patch that offerred an URL for further
>explanation on a Make Bug.  The URL is
>http://www.mail-archive.com/bug-make@gnu.org/msg06220.html.  Rather
>than submit Colin's patch verbatim I updated the note to include the
>reference with a little different wording.
>
>This extra information submitted by Colin will be very helpful.
>
>Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
>---
> .../yocto-project-qs/yocto-project-qs.xml          |    6 ++++--
> 1 files changed, 4 insertions(+), 2 deletions(-)
>
>diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml
>b/documentation/yocto-project-qs/yocto-project-qs.xml
>index 4cb50a5..e6a1da9 100644
>--- a/documentation/yocto-project-qs/yocto-project-qs.xml
>+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
>@@ -289,8 +289,10 @@
>              </literallayout>
>              <note><para>
>                  If you are running Fedora 14 or another distribution
>-                 that ships with GNU make v3.82 you need to run the
>following two
>-                 <command>bitbake</command> commands instead:
>+                 that ships with GNU, run the following two
><filename>BitBake</filename>
>+                 commands.
>+                 For more information, see
>+                 <ulink url=3D'http://www.mail-archive.com/bug-
>make@gnu.org/msg06220.html'></ulink>.
>                  <literallayout class=3D'monospaced'>
>      $ bitbake make-native
>      $ bitbake poky-image-sato
>--
>1.7.1
>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

