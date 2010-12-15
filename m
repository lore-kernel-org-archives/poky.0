Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4821D4C80FA4
	for <poky@pokylinux.org>; Wed, 15 Dec 2010 05:24:07 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Dec 2010 03:24:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,347,1288594800"; d="scan'208";a="361972000"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 03:24:06 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 15 Dec 2010 19:24:05 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 15 Dec 2010 19:24:04 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Wed, 15 Dec 2010 19:24:02 +0800
Thread-Topic: question about task override
Thread-Index: AcucSpOR9FXeyMLQQfOgPKrITVVUOw==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F4091FC@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	"paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>
Subject: question about task override
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
X-List-Received-Date: Wed, 15 Dec 2010 11:24:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm not sure whether "task override" is the right term here. Let me describ=
e it:

It's possible to have multiple places define same task, e.g:

a.bbclass:
	do_install () {
     ...
     }

b.bbclass:
     b_do_install() {
     ...
     }

c.bb:
	inherit a b
    =20
I know that if c.bb defines its own do_install, that would be the one being=
 used which
simply overrides a.bbclass and b.bbclass.

However I don't know if c.bb doesn't define its own do_install, which one f=
rom a.bbclass
or b.bbclass will take effect here? In inherit order?=20

A second question is how and where b_do_install is converted into a plain d=
o_install. I tried
to search the source but failed to locate the exact lines. For example, pat=
ch_do_patch is
one mysterious function which I don't how it becomes do_patch.

Then comes the third question. How to reference a specific version of do_in=
stall from=20
another place? I want to add one exclusive variable dependency for do_deplo=
y in=20
kernel.bbclass, however neither of below works:

(meta/conf/distro/poky.conf)
do_deploy[vardepsexclude] =3D "DATE TIME"
kernel_do_deploy[vardepsexclude] =3D "DATE TIME"

There's one example in poky.conf:

patch_do_patch[vardepsexclude] =3D "DATE SRCDATE"

which works. Does that mean I have to change do_deploy in kernel.bbclass to
kernel_do_deploy which is unique in global namespace and then can be refere=
nced
from other places?

Thanks
Kevin


