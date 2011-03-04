Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 26F9D4C800BA
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 16:29:01 -0600 (CST)
Received: by wwi18 with SMTP id 18so3068551wwi.11
	for <poky@yoctoproject.org>; Fri, 04 Mar 2011 14:29:01 -0800 (PST)
Received: by 10.216.17.202 with SMTP id j52mr1032969wej.36.1299277741001;
	Fri, 04 Mar 2011 14:29:01 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id r6sm1432868weq.44.2011.03.04.14.29.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 04 Mar 2011 14:29:00 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D715D30.3030608@linux.intel.com>
Date: Fri, 4 Mar 2011 23:28:59 +0100
Message-Id: <EEFD338A-726B-4502-B995-442E9AB37B9D@dominion.thruhere.net>
References: <cover.1299267630.git.sgw@linux.intel.com>	<e807fc977770cb64a217768672c18437ea8f3057.1299267630.git.sgw@linux.intel.com>
	<A53A0FEC-74B3-483C-916C-EB87748A1AC8@dominion.thruhere.net>
	<4D715D30.3030608@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: openembedded-core@lists.openembedded.org, poky@yoctoproject.org
Subject: Re: [PATCH 04/13] module: build hostprogs for each module
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
X-List-Received-Date: Fri, 04 Mar 2011 22:29:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 4 mrt 2011, om 22:44 heeft Darren Hart het volgende geschreven:

> On 03/04/2011 12:04 PM, Koen Kooi wrote:
>>=20
>> Op 4 mrt 2011, om 20:42 heeft Saul Wold het volgende geschreven:
>>=20
>>> From: Darren Hart<dvhart@linux.intel.com>
>>>=20
>>> This fixes [BUGID #241]
>>>=20
>>> The kernel hostprogs are built for the host architecture. They =
should not be
>>> deployed to the target, and they should not be included in an sstate =
package
>>> which might get reused on a host of a different architecture.
>>>=20
>>> As we don't build many out-of-tree modules, this patch takes the =
approach of
>>> building the hostprogs as part of the module compile process with a
>>> do_compile_prepend() routine in module.bbclass.
>>>=20
>>> We don't have to clean the hostprogs as modules depend on the kernel =
being
>>> populate_staging, so its done with the staging directory by the time =
we run.
>>>=20
>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>> CC: Gary Thomas<gary@mlbassoc.com>
>>> ---
>>> meta/classes/module.bbclass |   12 +++++++++++-
>>> 1 files changed, 11 insertions(+), 1 deletions(-)
>>>=20
>>> diff --git a/meta/classes/module.bbclass =
b/meta/classes/module.bbclass
>>> index d16d462..bbceaf7 100644
>>> --- a/meta/classes/module.bbclass
>>> +++ b/meta/classes/module.bbclass
>>> @@ -3,6 +3,13 @@ DEPENDS +=3D "virtual/kernel"
>>>=20
>>> inherit module-base
>>>=20
>>> +# Ensure the hostprogs are available for module compilation
>>> +module_do_compile_prepend() {
>>> +	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>>> +	oe_runmake CC=3D"${KERNEL_CC}" LD=3D"${KERNEL_LD}" =
AR=3D"${KERNEL_AR}" \
>>> +	           -C ${STAGING_KERNEL_DIR} scripts
>>> +}
>>> +
>>> module_do_compile() {
>>> 	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>>> 	oe_runmake KERNEL_PATH=3D${STAGING_KERNEL_DIR}   \
>>> @@ -15,7 +22,10 @@ module_do_compile() {
>>=20
>> Why not put it in do_compile itself?
>=20
> My rationale was that a module recipe may override do_compile for one =
reason or another, but they will still need the hostprogs which we =
stripped in kernel.bbclass. This way, even if they override do_compile, =
the _prepend will still get run and prepare the hostprogs.

Are you sure that actually works? AIUI bitbake will fold the compile and =
prepend into one when you try to override it.

regards,

Koen=

