Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 882F54C80AC3
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 15:59:14 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 Mar 2011 13:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,278,1299484800"; d="scan'208";a="673892941"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 31 Mar 2011 13:59:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 31 Mar 2011 13:59:06 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Thu, 31 Mar 2011 13:59:06 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Scott Rifenbark <srifenbark@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 31 Mar 2011 13:59:05 -0700
Thread-Topic: [poky] [PATCH 0/8] [DOCS] YP Quick Start PDF generation
Thread-Index: Acvv0erd9H2WURUWSrqvm460e5WEhQAFHWJA
Message-ID: <DE8BA75F34A0404282AC5E15F691BC7650D94823@orsmsx504.amr.corp.intel.com>
References: <cover.1301596085.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301596085.git.scott.m.rifenbark@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Re: [PATCH 0/8] [DOCS] YP Quick Start PDF generation
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
X-List-Received-Date: Thu, 31 Mar 2011 20:59:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This pull request can be ignored.  Do not merge it with master.=20

Thanks,=20
Scott

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Scott Rifenbark
Sent: Thursday, March 31, 2011 11:31 AM
To: poky@yoctoproject.org
Subject: [poky] [PATCH 0/8] [DOCS] YP Quick Start PDF generation

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

These commits accomplish PDF generation for the Yocto Project=20
Quick Start.  Prior to this release this manual was generated=20
as an HTML document only.  Release 1.0 of YP saw the need for=20
a PDF version as well.  To accomplish this several new files=20
had to be introduced and the make structure altered. =20

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/qs-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dsrifenbar=
k/qs-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (8):
  documentation/yocto-project-qs/yocto-project-qs.xml:  cleaned out
    another "YP"
  documentation/yocto-project-qs/yocto-project-qs.xml: Edits plus Matt
    Madison note regarding older host systems
  documentation/yocto-project-qs/Makefile: Updated to create a PDF
  documentation/yocto-project-qs/figures/ypqs-title.png: New title
    image
  documentation/yocto-project-qs/ypqs.xml: New high-level file for PDF
  documentation/yocto-project-qs/style.css: Updates for PDF generation
  documentation/yocto-project-qs/yocto-project-qs-customization.xsl:
    Updated for PDF creation
  documentation/yocto-project-qs/yocto-project-qs.xml: Updates for PDF
    creation

 documentation/yocto-project-qs/Makefile            |   25 ++++---
 .../yocto-project-qs/figures/ypqs-title.png        |  Bin 0 -> 11324 bytes
 documentation/yocto-project-qs/style.css           |   10 ++--
 .../yocto-project-qs-customization.xsl             |    2 -
 .../yocto-project-qs/yocto-project-qs.xml          |   39 ++++++++---
 documentation/yocto-project-qs/ypqs.xml            |   67 ++++++++++++++++=
++++
 6 files changed, 114 insertions(+), 29 deletions(-)
 create mode 100644 documentation/yocto-project-qs/figures/ypqs-title.png
 create mode 100644 documentation/yocto-project-qs/ypqs.xml

_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

