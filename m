Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 33C194C8009D
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 02:41:45 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Mar 2011 00:41:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,204,1299484800"; d="scan'208";a="721513941"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 18 Mar 2011 00:41:44 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 18 Mar 2011 15:40:39 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 18 Mar 2011 15:40:38 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 18 Mar 2011 15:40:37 +0800
Thread-Topic: A problem of siteconfig mismatch 
Thread-Index: AcvlP8WfCF6RDs/AQ9qwV6fC20dSUQ==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F21A67862DE@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: A problem of siteconfig mismatch
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
X-List-Received-Date: Fri, 18 Mar 2011 07:41:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

We recently found a bug #892(http://bugzilla.pokylinux.org/show_bug.cgi?id=
=3D892) of the siteconfig mismatch problem in meta-environment package. The=
 site config file is used by autoconf during cross compiling to provide def=
ault configuration values.=20

In current poky, each package will use the function siteconfig_do_siteconfi=
g_gencache() in siteconfig.bbclass to populate its own siteconfig file suit=
able for cross compiling into SITECONFIG_SYSROOTCACHE. And the function sit=
einfo_get_files() in siteinfo.bbclass will dump content of all the siteconf=
ig files from SITECONFIG_SYSROOTCACHE into the final siteconfig file which =
will be used by the host autoconf during cross compilation.=20

This requires all the siteconfig files must be available in SITECONFIG_SYSR=
OOTCACHE when siteinfo_get_files() is being called. That's the reason for b=
ug #892.

Since we now allow the user to specify the sysroot during cross compile, I =
think the siteconfig file should be consistent with the target sysroot, not=
 with the SITECONFIG_SYSROOTCACHE. Otherwise there might be problems.

Any comment?

Best Regards,
-Lianhao Lu =20

