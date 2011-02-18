Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id B53854C800A0
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 05:11:21 -0600 (CST)
Received: by wwb31 with SMTP id 31so3710322wwb.11
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 03:11:20 -0800 (PST)
Received: by 10.227.135.129 with SMTP id n1mr512689wbt.19.1298027480399;
	Fri, 18 Feb 2011 03:11:20 -0800 (PST)
Received: from [10.75.16.17] ([192.91.60.179])
	by mx.google.com with ESMTPS id u9sm1521597wbg.12.2011.02.18.03.11.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 18 Feb 2011 03:11:19 -0800 (PST)
References: <AANLkTi==59FW4R15YrsSSR8EHWRgn2Gh9BJ2rUVPMWS+@mail.gmail.com>
	<20110218100117.GY14931@excalibur.local>
In-Reply-To: <20110218100117.GY14931@excalibur.local>
Mime-Version: 1.0 (iPhone Mail 8C148)
Message-Id: <622669A1-2184-459B-A4AE-552A1DF30973@dominion.thruhere.net>
X-Mailer: iPhone Mail (8C148)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Fri, 18 Feb 2011 11:11:08 +0000
To: Stefan Schmidt <stefan@datenfreihafen.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Problem with METADATA_* vars
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
X-List-Received-Date: Fri, 18 Feb 2011 11:11:22 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

that gives me mixed results, let me test a bit more

Op 18 feb. 2011 om 10:01 heeft Stefan Schmidt <stefan@datenfreihafen.org> he=
t volgende geschreven:

> Hello.
>=20
> On Fri, 2011-02-18 at 10:34, Koen Kooi wrote:
>>=20
>> I have a simple recipe that does:
>>=20
>> export METADATA_REVISION
>> export METADATA_BRANCH
>> export TARGET_SYS
>>=20
>> do_install() {
>>    install -d ${D}${sysconfdir}
>>    echo "Angstrom ${DISTRO_VERSION}" > ${D}${sysconfdir}/angstrom-version=

>>    echo "Built from branch: ${METADATA_BRANCH}" >>
>> ${D}${sysconfdir}/angstrom-version
>>    echo "Revision: ${METADATA_REVISION}" >>
>> ${D}${sysconfdir}/angstrom-version
>>    echo "Target system: ${TARGET_SYS}" >>
>> ${D}${sysconfdir}/angstrom-version
>>=20
>>    [..]
>> }
>>=20
>> It builds fine when doing 'bitbake angstrom-version', but when doing
>> 'bitbake console-image', which includes angstrom-version I get:
>>=20
>> tr: write error: Broken pipe
>> ERROR: Error evaluating '${@base_detect_branch(d)}'
>=20
> Hmm, I somehow remeber something like this also in OE. Can you give it a t=
ry
> with removing the explicit export in the recipe? Its a bit of guessing as I=

> don't have all the details in mind anymore. :)
>=20
> regards
> Stefan Schmidt
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

