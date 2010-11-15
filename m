Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id F19DA4C80052
	for <poky@yoctoproject.org>; Mon, 15 Nov 2010 15:14:55 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAFLEtCn003491
	for <poky@yoctoproject.org>; Mon, 15 Nov 2010 13:14:55 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 15 Nov 2010 13:14:55 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 15 Nov 2010 13:14:55 -0800
Message-ID: <4CE1A2CE.70103@windriver.com>
Date: Mon, 15 Nov 2010 15:14:54 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4CDC6E99.4030709@intel.com> <1289537887.1272.3010.camel@rex>
	<alpine.LRH.1.00.1011121008220.9384@oebafba.bjyevire.pbz>
In-Reply-To: <alpine.LRH.1.00.1011121008220.9384@oebafba.bjyevire.pbz>
X-OriginalArrivalTime: 15 Nov 2010 21:14:55.0615 (UTC)
	FILETIME=[26BB08F0:01CB850A]
Subject: Re: Rough timing of rpm vs opkg rootfs builds
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
X-List-Received-Date: Mon, 15 Nov 2010 21:14:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/12/10 9:12 AM, R P Herrold wrote:
> On Fri, 12 Nov 2010, Richard Purdie wrote:
> 
>> I suspect there is an optimisation that can be added for the rpm
>> indexing to make this incremental updating possible.
> 
> Usually naiive ('Rough') timing tests with rpm do not disable 
> un-needed checksum cross checks, key verifications, and such, 
> which are senseless in a closed or protected build environment

RPM resolver db and installation uses minimal options...

Resolver creation:

${RPM} -i --replacepkgs --replacefiles --oldpackage \
 -D "_dbpath $pkgdir/solvedb" --justdb \
 --noaid --nodeps --noorder --noscripts --notriggers --noparentdirs --nolinktos
--stats \
 --ignoresize --nosignature --nodigest \
 -D "_dbi_tags_3 Packages:Name:Basenames:Providename:Nvra" \
 -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
 $pkgdir/solvedb/manifest


Note the --stats, if you look at the log file, you'll see the timing stats for RPM.


ROOTFS creation:

(generating the resolver solution):
${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat
${DEPLOY_DIR_RPM}/solvedb.macro`" \
 -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
 -U --justdb --noscripts --notriggers --noparentdirs --nolinktos \
 ${IMAGE_ROOTFS}/install/install.manifest


Actually doing the install:

${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat
${DEPLOY_DIR_RPM}/solvedb.macro`" \
 -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
 -U --justdb --noscripts --notriggers --noparentdirs --nolinktos \
 $pkg_name >> "${WORKDIR}/temp/log.do_rootfs_attemptonly.${PID}" || true

So we are doing package validation and related work during FS generation, but
NOT suring the resolver setup.  (Note, according to the above we are validating
packages for the resolver solution... which likely is a mistake and causing
extra time.)

I'm hesitant to add the --nosignature --nodigest to the actual install step, but
adding it to the resolver step might be beneficial.

> Publishing the testing harnesses would permit evaluation of 
> such -- absent a second person checking the methodology, it is 
> probably premature to start kinkering.  Publishing final 
> numbers without a reproduceable methodology is just not good 
> science
> 
> -- Russ herrold
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


