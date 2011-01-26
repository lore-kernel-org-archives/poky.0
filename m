Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B76B84C811A5
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 00:57:49 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jan 2011 22:57:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,379,1291622400"; d="scan'208";a="881065960"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jan 2011 22:57:48 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 26 Jan 2011 14:57:09 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 26 Jan 2011 14:57:02 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 26 Jan 2011 14:57:01 +0800
Thread-Topic: Why rpm install process is not working out of the pseudo context
Thread-Index: Acu9JjuLI8miowHOR+qESRPa0p/KZw==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F20A83390A3@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Why rpm install process is not working out of the pseudo context
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
X-List-Received-Date: Wed, 26 Jan 2011 06:57:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

Does anyone know why the RPM install process should be all executed in the =
pseudo context? Thank you!

I found that the rpm install process is not working when I manually enter t=
he rpm command in the terminal (without pseudo).

The install process for rpm is:
1. generate db from solved db
        ${RPM} -D "_rpmds_sysinfo_path ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/et=
c/rpm/sysinfo" \
                -D "_dbpath ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/install" -D "=
`cat ${RPMCONF_TARGET_BASE}.macro`" \
                -D "__dbi_cdb create mp_mmapsize=3D128Mb mp_size=3D1Mb nofs=
ync" \
                -U --justdb --noscripts --notriggers --noparentdirs --nolin=
ktos --ignoresize \
                ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/install/install.manifest

2. pull out a list of what to install
	${RPM} -D "_dbpath ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/install" -qa --yaml \
                | grep -i 'Packageorigin' | cut -d : -f 2 > ${SDK_OUTPUT}/$=
{SDKTARGETSYSROOT}/install/install_solution.manifest

3. actual install
	${RPM} --root ${SDK_OUTPUT}/${SDKTARGETSYSROOT} \
                -D "_rpmds_sysinfo_path ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/e=
tc/rpm/sysinfo" \
                -D "_dbpath ${rpmlibdir}" \
                --noscripts --notriggers --noparentdirs --nolinktos \
                -D "__dbi_cdb create mp_mmapsize=3D128Mb mp_size=3D1Mb nofs=
ync private" \
                -Uhv ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/install/install_solu=
tion.manifest

If we put all the 3 steps under pseudo context, it works fine. But if all t=
he 3 steps are out of pseudo context, the step 2) would fail complaining ab=
out:
rpmdb: configured environment flags incompatible with existing environment
error: cannot open Package(0) index using db3 - Invalid argument (22)
error: cannot open Package database in /home/lulianhao/poky-build/meta-tool=
chain/tmp/work/mips-poky-linux/meta-toolchain-sdk-1.0-r1/sdk/image//opt/pok=
y/0.9+snapshot/sysroots/mips-poky-linux/install

If I add -D "__dbi_cdb create mp_mmapsize=3D128Mb mp_size=3D1Mb nofsync" op=
tions to step 2), it would succeed. But in step 3), nothing actually gets i=
nstalled though the rpm doesn't report any error in step 3).

Best Regards,
-Lianhao Lu

