Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D6D014C80578
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 22:10:27 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Apr 2011 20:10:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,284,1301900400"; d="scan'208";a="740002539"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 28 Apr 2011 20:10:27 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Thu, 28 Apr 2011 20:10:27 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 28 Apr 2011 20:10:25 -0700
Thread-Topic: RFC: design of network based PR service
Thread-Index: AcwFcwPnj5OvtJH1RnGl3JHxZee3MQAp8Vtw
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA950116D5891D@orsmsx504.amr.corp.intel.com>
References: <C10D3FB0CD45994C8A51FEC1227CE22F2311C1C837@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F2311C1C837@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: RFC: design of network based PR service
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
X-List-Received-Date: Fri, 29 Apr 2011 03:10:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Lianhao,

I thought RP mentioned that checksum already contains PN so in your db tabl=
e, do we still need the PN?

- Jessica

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Lu, Lianhao
Sent: Thursday, April 28, 2011 12:08 AM
To: poky@yoctoproject.org
Subject: [poky] RFC: design of network based PR service

Hi Guys,

Here is the design of network based PR service, please help to review and
give you comment. Thanks a lot!

By changing the BB_SIGNATURE_HANDLER from "basic" to "basichash", the
task checksum will be in the stamp file, so this implies the end of PR bump=
s
since whenever a recipe change happens, the checksum of the appropriate
tasks will change so everything depends on that tasks will automatically go=
t
rebuilt. (The checksum mechanism was introduced here at https://lists.yocto=
project.org/pipermail/yocto/2011-March/001157.html).

But there is one piece of building block missing there. Because the package
feeds needs the PR bumps because some relevant fields in the package file(i=
.e.
Version field in .ipk and .deb file, Release field in .rpm file) need it so=
 the
generated package feeds can be used to upgrade/install new packages in the
user's linux distribution. So RP proposed this network based PR service at
https://lists.yoctoproject.org/pipermail/poky/2011-January/002123.html.

Each embedded linux distribution entity using Yocto to build their distribu=
tions
should have a single network based PR service. Multiple build sources could=
 send
the tuple (PN, task checksum) to this network based PR service. If the PR s=
ervice
finds the corresponding (PN, task checksum) in its database, it will return=
 the PR
values to the client. If not, it will bump the PR for that PN and return th=
e new value
to the client. The returned value will only goes into the generated package=
 files.

The PR network service will be a separate process other than bitbake, using=
 the
XMLPRC to communicate with the client(i.e. bitbake process) and sqlite3 as =
the
backend database. The table definition would be something like
(
  PN TEXT,
  CheckSum TEXT PRIMARY KEY,
  PR INT
)

Because different type of package files are generated in different tasks, (=
e.g.
do_package_write_ipk, do_package_write_rpm), we will use the task checksum
of do_package to ask for PR value, so all the package files will have the s=
ame PR value.

To be backward compatible, if the PR value is already set in the recipe, th=
e final PR value
that goes into the package files will be "PR in recipe.PR returned by the s=
ervice".

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Lianhao Lu
OTC SSG, Intel APAC R&D Ltd.
86-21-61167139





_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

