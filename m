Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3246D4C80BCF
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 08:32:40 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0QEWdnN009353;
	Wed, 26 Jan 2011 06:32:39 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 26 Jan 2011 06:32:39 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 26 Jan 2011 06:32:37 -0800
Message-ID: <4D403085.6000708@windriver.com>
Date: Wed, 26 Jan 2011 08:32:37 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Lu, Lianhao" <lianhao.lu@intel.com>
References: <C10D3FB0CD45994C8A51FEC1227CE22F20A83390A3@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F20A83390A3@shsmsx502.ccr.corp.intel.com>
X-OriginalArrivalTime: 26 Jan 2011 14:32:38.0980 (UTC)
	FILETIME=[E1EAD040:01CBBD65]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Why rpm install process is not working out of the pseudo context
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
X-List-Received-Date: Wed, 26 Jan 2011 14:32:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 1/26/11 12:57 AM, Lu, Lianhao wrote:
> Hi guys,
> 
> Does anyone know why the RPM install process should be all executed in the pseudo context? Thank you!
> 
> I found that the rpm install process is not working when I manually enter the rpm command in the terminal (without pseudo).
> 
> The install process for rpm is:
> 1. generate db from solved db
>         ${RPM} -D "_rpmds_sysinfo_path ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/etc/rpm/sysinfo" \
>                 -D "_dbpath ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/install" -D "`cat ${RPMCONF_TARGET_BASE}.macro`" \
>                 -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
>                 -U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
>                 ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/install/install.manifest
> 
> 2. pull out a list of what to install
> 	${RPM} -D "_dbpath ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/install" -qa --yaml \
>                 | grep -i 'Packageorigin' | cut -d : -f 2 > ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/install/install_solution.manifest

The above two can be run without pseudo.

> 3. actual install
> 	${RPM} --root ${SDK_OUTPUT}/${SDKTARGETSYSROOT} \
>                 -D "_rpmds_sysinfo_path ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/etc/rpm/sysinfo" \
>                 -D "_dbpath ${rpmlibdir}" \
>                 --noscripts --notriggers --noparentdirs --nolinktos \
>                 -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
>                 -Uhv ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/install/install_solution.manifest

The above item DOES require pseudo.  The --root tells RPM to chroot into a
specific directory before an install begins.  chroot is a command that only root
(or pseudo) can execute.  This is why pseudo content is required.

> If we put all the 3 steps under pseudo context, it works fine. But if all the 3 steps are out of pseudo context, the step 2) would fail complaining about:
> rpmdb: configured environment flags incompatible with existing environment
> error: cannot open Package(0) index using db3 - Invalid argument (22)
> error: cannot open Package database in /home/lulianhao/poky-build/meta-toolchain/tmp/work/mips-poky-linux/meta-toolchain-sdk-1.0-r1/sdk/image//opt/poky/0.9+snapshot/sysroots/mips-poky-linux/install

I'm surprised the first two fail.  It's possible that something in the berkley
db setup (unique to RPMs usage) is also attempting to use chroot or a similar
root only command of some type.

> If I add -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" options to step 2), it would succeed. But in step 3), nothing actually gets installed though the rpm doesn't report any error in step 3).

The second step should have the same __dbi_cdb as the first step.. If it doesn't
(or doesn't work) then it looks like you discovered a bug in the original
implementation.

I can look into this a big today.  (Hopefully this complex mechanism of doing
dependency resolution can go away with Zypper.. but we're not yet there.)

--Mark

> Best Regards,
> -Lianhao Lu
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


