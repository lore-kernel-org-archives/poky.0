Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40D21E00348
	for <poky@yoctoproject.org>; Thu,  6 Dec 2012 13:29:49 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2012 13:29:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,232,1355126400"; d="scan'208";a="258361396"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2012 13:29:48 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 6 Dec 2012 13:29:48 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.43]) with mapi id
	14.01.0355.002; Thu, 6 Dec 2012 13:29:47 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Voicu, Cristiana" <cristiana.voicu@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH] bblayers.conf: Add a new variable to prevent
	certain	layers to be removed
Thread-Index: AQHNy6vAdZv1jjSFtECvAnjfWL7D9JgMWGnA
Date: Thu, 6 Dec 2012 21:29:46 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACB35C@ORSMSX101.amr.corp.intel.com>
References: <1353916805-29483-1-git-send-email-cristiana.voicu@intel.com>
In-Reply-To: <1353916805-29483-1-git-send-email-cristiana.voicu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] bblayers.conf: Add a new variable to prevent certain	layers to be removed
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
X-List-Received-Date: Thu, 06 Dec 2012 21:29:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have made several changes throughout the YP documentation manual set to a=
ddress this fix.  You can examine the commit at http://git.yoctoproject.org=
/cgit.cgi/yocto-docs/commit/?id=3D904b9ec1cd6d823af0e92f6891fc7e434cf2e358.=
  Basically, I have done the following:

* Updated any bblayer.conf example code used throughout
* Removed the note warning of the error (bug) situation when someone takes =
out a core layer from bblayer.conf
* Added more clarifying information on the BBLAYERS and BBLAYERS_NON_REMOVA=
BLE variables
* Created a new glossary entry for the BBLAYERS_NON_REMOVABLE variable

Manuals affected are the development manual, bsp guide, and reference manua=
l.  Links for the manuals are here:

http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html
http://www.yoctoproject.org/docs/1.4/bsp-guide/bsp-guide.html
http://www.yoctoproject.org/docs/1.4/poky-ref-manual/poky-ref-manual.html.

Scott

>-----Original Message-----
>From: poky-bounces@yoctoproject.org [mailto:poky-
>bounces@yoctoproject.org] On Behalf Of Cristiana Voicu
>Sent: Monday, November 26, 2012 12:00 AM
>To: poky@yoctoproject.org
>Subject: [poky] [PATCH] bblayers.conf: Add a new variable to prevent
>certain layers to be removed
>
>[YOCTO #3372]
>Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
>---
> meta-yocto/conf/bblayers.conf.sample |    4 ++++
> 1 file changed, 4 insertions(+)
>
>diff --git a/meta-yocto/conf/bblayers.conf.sample b/meta-
>yocto/conf/bblayers.conf.sample
>index 98bfd70..7fd755d 100644
>--- a/meta-yocto/conf/bblayers.conf.sample
>+++ b/meta-yocto/conf/bblayers.conf.sample
>@@ -10,3 +10,7 @@ BBLAYERS ?=3D " \
>   ##COREBASE##/meta-yocto \
>   ##COREBASE##/meta-yocto-bsp \
>   "
>+BBLAYERS_NON_REMOVABLE ?=3D " \
>+  ##COREBASE##/meta \
>+  ##COREBASE##/meta-yocto \
>+  "
>--
>1.7.9.5
>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

