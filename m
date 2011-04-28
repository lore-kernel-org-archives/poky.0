Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B124E4C80337
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 02:08:38 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2011 00:08:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,278,1301900400"; d="scan'208";a="915476268"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 28 Apr 2011 00:08:37 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 28 Apr 2011 15:08:06 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 28 Apr 2011 15:08:04 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 28 Apr 2011 15:08:03 +0800
Thread-Topic: RFC: design of network based PR service
Thread-Index: AcwFcwPnj5OvtJH1RnGl3JHxZee3MQ==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F2311C1C837@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: RFC: design of network based PR service
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
X-List-Received-Date: Thu, 28 Apr 2011 07:08:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

Here is the design of network based PR service, please help to review and=20
give you comment. Thanks a lot!

By changing the BB_SIGNATURE_HANDLER from "basic" to "basichash", the=20
task checksum will be in the stamp file, so this implies the end of PR bump=
s=20
since whenever a recipe change happens, the checksum of the appropriate=20
tasks will change so everything depends on that tasks will automatically go=
t=20
rebuilt. (The checksum mechanism was introduced here at https://lists.yocto=
project.org/pipermail/yocto/2011-March/001157.html).

But there is one piece of building block missing there. Because the package=
=20
feeds needs the PR bumps because some relevant fields in the package file(i=
.e.=20
Version field in .ipk and .deb file, Release field in .rpm file) need it so=
 the=20
generated package feeds can be used to upgrade/install new packages in the=
=20
user's linux distribution. So RP proposed this network based PR service at=
=20
https://lists.yoctoproject.org/pipermail/poky/2011-January/002123.html.=20

Each embedded linux distribution entity using Yocto to build their distribu=
tions=20
should have a single network based PR service. Multiple build sources could=
 send=20
the tuple (PN, task checksum) to this network based PR service. If the PR s=
ervice=20
finds the corresponding (PN, task checksum) in its database, it will return=
 the PR=20
values to the client. If not, it will bump the PR for that PN and return th=
e new value=20
to the client. The returned value will only goes into the generated package=
 files.

The PR network service will be a separate process other than bitbake, using=
 the=20
XMLPRC to communicate with the client(i.e. bitbake process) and sqlite3 as =
the=20
backend database. The table definition would be something like
(
  PN TEXT,
  CheckSum TEXT PRIMARY KEY,
  PR INT
)

Because different type of package files are generated in different tasks, (=
e.g.
do_package_write_ipk, do_package_write_rpm), we will use the task checksum=
=20
of do_package to ask for PR value, so all the package files will have the s=
ame PR value.

To be backward compatible, if the PR value is already set in the recipe, th=
e final PR value=20
that goes into the package files will be "PR in recipe.PR returned by the s=
ervice".

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Lianhao Lu
OTC SSG, Intel APAC R&D Ltd.
86-21-61167139






