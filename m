Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1FB54C80050
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 02:44:49 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Dec 2010 00:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,335,1288594800"; d="scan'208";a="360789264"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 13 Dec 2010 00:44:35 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 16:44:14 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 13 Dec 2010 16:43:59 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Mon, 13 Dec 2010 16:43:58 +0800
Thread-Topic: [poky] [PATCH] rm_work.bbclass: allow a shell var to override
	rm_work
Thread-Index: AcuaDZsIZLMdkxujSUe93ElUnT4vtQAk4+XA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1627@shsmsx502.ccr.corp.intel.com>
References: <1292166132-23035-1-git-send-email-fransmeulenbroeks@gmail.com>
In-Reply-To: <1292166132-23035-1-git-send-email-fransmeulenbroeks@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH] rm_work.bbclass: allow a shell var to override	rm_work
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
X-List-Received-Date: Mon, 13 Dec 2010 08:44:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Frans Meulenbroeks
>Sent: Sunday, December 12, 2010 11:02 PM
>
>Sometimes one is building with rm_work, but for a specific build you want =
to
>keep the work even if the build is successful.
>One way to achieve this is to comment the INHERIT +=3D "rm_work" from your
>local.conf file, but this means that all recipes need to be reparsed which=
 takes some time.
>
>This patch introduces a variable KEEP_WORK
>If this variable is set the work will not be removed.
>Intended use is
>KEEP_WORK=3D1 bitbake yourrecipe.bb
>Default behaviour is kept the same (in case KEEP_WORK is not set)
>
>Note that in order for this to work KEEP_WORK needs to be added to the env=
 var
>BB_ENV_EXTRAWHITE
>e.g. export BB_ENV_EXTRAWHITE=3D"KEEP_WORK"
>
>We still might want to improve the test so it only keeps the work if KEEP_=
WORK is > 0
>(or do not execute the task at all if KEEP_WORK is not set).
>Also we might want to add KEEP_WORK to the whitelist of vars that are alwa=
ys ok

Is it useful to further extend this KEEP_WORK option to allow task-based se=
lection?
For example, I may only be interested on the sysroot installation path, and=
 thus:

KEEP_WORK=3D"install populate_sysroot" bitbake yourrecipe.bb

Currently the scope of rm_work is just binary: keep all or remove all. A fi=
ner granule
control gives us flexibility to concentrate on several tasks which most lik=
ely causes
trouble while still able to reduce the footprint.

Comment? :-)

Thanks
Kevin

