Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id ADC914C81015
	for <poky@yoctoproject.org>; Wed,  4 May 2011 10:31:15 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 632A8166028C; Wed,  4 May 2011 09:31:15 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8F25B1660253;
	Wed,  4 May 2011 09:31:14 -0600 (MDT)
Message-ID: <4DC17142.5080402@mlbassoc.com>
Date: Wed, 04 May 2011 09:31:14 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1304520272.git.paul.eggleton@linux.intel.com>
	<a6ff3eaba2e8868cf24775725be334f3479d905c.1304520272.git.paul.eggleton@linux.intel.com>
	<4DC16BA5.1090508@mlbassoc.com>
	<201105041621.25113.paul.eggleton@linux.intel.com>
In-Reply-To: <201105041621.25113.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [PATCH 1/3] Remove machine-specific metadata for machines no longer in oe-core
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
X-List-Received-Date: Wed, 04 May 2011 15:31:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/04/2011 09:21 AM, Paul Eggleton wrote:
> On Wednesday 04 May 2011 16:07:17 Gary Thomas wrote:
>> Perhaps it makes sense to always package netbase in ${MACHINE_ARCH} since
>> it almost always will have machine specific data?
>
> I'll let someone else comment on this, I don't have a hard opinion either way.
>
>> Also, what about these overrides?  (There may be others, I just noticed
>> these)
>> ./meta/recipes-core/base-passwd/base-passwd_3.5.22.bb:do_install_append_op
>> enmn() {
>> ./meta/recipes-core/netbase/netbase_4.45.bb:INITSCRIPT_PARAMS_openmn =
>> "start 85 1 2 3 4 5 . stop 85 0 6 1 ."
>> ./meta/recipes-core/busybox/busybox.inc:INITSCRIPT_PARAMS_${PN}-syslog_slu
>> gos = "start 20 ."
>> ./meta/recipes-core/netbase/netbase_4.45.bb:INITSCRIPT_PARAMS_slugos =
>> "start 42 S 0 6 ."
>> ./meta/recipes-core/base-files/base-files_3.0.14.bb:hostname_slugos =
>> "nslu2"
>> ./meta/recipes-core/base-files/base-files_3.0.14.bb:do_install_append_slug
>> os() {
>> ./meta/recipes-core/base-files/base-files_3.0.14.bb:CONFFILES_${PN}_slugos
>> = "${sysconfdir}/resolv.conf ${sysconfdir}/fstab ${sysconfdir}/hostname"
>> ./meta/recipes-devtools/dpkg/dpkg.inc:DPKG_INIT_POSITION_slugos = "41"
>
> These are all distro overrides and unless I'm mistaken these are all removed
> by the second patch in the series.

Sorry, I missed that.  Good work!

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

