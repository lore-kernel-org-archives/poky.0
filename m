Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B80744C8006D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 01:18:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Jan 2011 23:18:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="597967569"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 30 Jan 2011 23:18:46 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 15:18:17 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 31 Jan 2011 15:18:15 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 31 Jan 2011 15:18:14 +0800
Thread-Topic: summary about recent do_populate_sdk failures
Thread-Index: AcvBFwaiDJD1F+KhR7CoJJGWi+F6cA==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504E6294E376@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: summary about recent do_populate_sdk failures
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
X-List-Received-Date: Mon, 31 Jan 2011 07:18:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Lianhao and I are looking into recent master instability, more specifically=
 starting
from reported do_populate_sdk failures. There have been 3 problems revealed=
:

1) unexpected do_package/do_package_write* rebuild
2) change PACKAGE_CLASSES causes more do_package rebuilds
3) do_populate_sdk finally exits due to eglibc not matching expected versio=
n

We've root caused 1), and the patch has been sent out:
http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dtk/master1&=
id=3D68ad8ead1a83161afb8c2a65a28dfc205181d80e

We're not sure whether 3) is caused by too many unexpected do_package rebui=
lds,
and is now testing whether 3) will disappear with the fix for 1). We'll als=
o look into
original failure to see whether real cause of 3) may be hidden with the fix=
.

Now the remaining open is about 2). We got the reason, but would like to we=
lcome
Comments on an elegant solution.

The phenomenon is that do_package checksum changes with switching the order
In PACKAGE_CLASSES, e.g:

From
PACKAGE_CLASSES =3D "package_rpm package_ipk"
To
PACKAGE_CLASSES =3D "package_ipk package_rpm"

This is undesired since the order only matters for final rootfs generation.=
 The actual
cause is related to how do_package is generated, which depends on when=20
package.bbclass is first brought in.

Take package_rpm.bbclass for example, which inherit package.bbclass. Bitbak=
e
generates below wrappers implicitly:

Do_package () {
	bb.build.exec_func('package_rpm_do_package', d)
}

Package_rpm_do_package() {
	bb.build.exec_func('package_do_package', d)
}

Above is implicitly created when bitbake parses class files based on inheri=
tance tree,
and once a class file is parsed it's then saved to the cache. When later pa=
ckage_ipk is
parsed, bitbake will simply read from the cache for package.bbclass and the=
n
do_package remains tying to package_rpm_do_package.

If package_ipk is the 1st in PACKAGE_CLASSES, then do_package becomes:

Do_package () {
	bb.build.exec_func('package_ipk_do_package', d)
}

This sure generates different checksum to break sstate installation, but in=
 reality it's
just name difference, no actual functional change. We considered to use var=
deps and=20
varexcldeps which don't help though since it's the do_package itself change=
d.

One possible option is to sort the INHERIT list, which ensures we always pa=
rse
Inherited class files in same order if no content change. We'll test whethe=
r this works,
and also hear your comments.

Thanks
Kevin

