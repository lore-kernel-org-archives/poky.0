Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 076754C8018D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 04:05:03 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Jan 2011 02:05:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="382060834"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 31 Jan 2011 02:04:58 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 18:03:09 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 31 Jan 2011 18:03:08 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Tian, Kevin"
	<kevin.tian@intel.com>
Date: Mon, 31 Jan 2011 18:03:06 +0800
Thread-Topic: [poky] summary about recent do_populate_sdk failures
Thread-Index: AcvBJrqS6vvvjKatSUWlNT+V4HGOOwABfhtA
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F20F8C32C29@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504E6294E376@shsmsx502.ccr.corp.intel.com>
	<1296465010.13501.12040.camel@rex>
In-Reply-To: <1296465010.13501.12040.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: summary about recent do_populate_sdk failures
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
X-List-Received-Date: Mon, 31 Jan 2011 10:05:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote on 2011-01-31:
> On Mon, 2011-01-31 at 15:18 +0800, Tian, Kevin wrote:
>> Lianhao and I are looking into recent master instability, more
>> specifically starting from reported do_populate_sdk failures. There
>> have been 3 problems revealed:
>>=20
>> 1) unexpected do_package/do_package_write* rebuild
>> 2) change PACKAGE_CLASSES causes more do_package rebuilds
>> 3) do_populate_sdk finally exits due to eglibc not matching expected
>> version
>>=20
>> We've root caused 1), and the patch has been sent out:
>> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dtk/mas
>> te r1&id=3D68ad8ead1a83161afb8c2a65a28dfc205181d80e
>>=20
>> We're not sure whether 3) is caused by too many unexpected
>> do_package rebuilds, and is now testing whether 3) will disappear
>> with the fix for 1). We'll also look into original failure to see
>> whether real cause of 3) may
> be hidden with the fix.
>=20
> I think there is a race and we need to adjust the packaging process
> for libgcc/libc as I mentioned in the other email.
>=20
> To reproduce I'm guessing something like:
>=20
> "bitbake libgcc virtual/libc -c package -f" will consistently break
> rootfs builds after that command is run.
>=20
> (This relies on the fact that libc will take much longer than libgcc to
> package.)
>=20

Yes, we think the cause 1) & 2) mentioned above somehow exposed the race pr=
oblem to us. We guess it might be that the libgcc's do_package_write_xxx ta=
sk started before the eglibc's do_package task finished. Richard, I'll try =
to reproduce this using your method tonight, but I have to build from scrat=
ch, because my building environment is totally messed up(I even saw a "do_i=
nstall" error for libgcc when trying the 'bitbake libgcc virtual/libc -c pa=
ckage -f').

Best Regards,
Lianhao



