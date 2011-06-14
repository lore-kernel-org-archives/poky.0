Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE8904C800C1
	for <poky@yoctoproject.org>; Tue, 14 Jun 2011 14:38:39 -0500 (CDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1QWZRf-0004K1-5X from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Tue, 14 Jun 2011 12:38:39 -0700
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Tue, 14 Jun 2011 12:38:39 -0700
Received: from [172.30.80.132] (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.1.289.1;
	Tue, 14 Jun 2011 12:38:38 -0700
Message-ID: <4DF7B8B2.7050709@mentor.com>
Date: Tue, 14 Jun 2011 12:38:26 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <it88ph$j2v$1@dough.gmane.org> <4DF7B675.6050304@linux.intel.com>
In-Reply-To: <4DF7B675.6050304@linux.intel.com>
X-Enigmail-Version: 1.1.1
X-OriginalArrivalTime: 14 Jun 2011 19:38:39.0001 (UTC)
	FILETIME=[A8C2F090:01CC2ACA]
Subject: Re: bernard-5.0.1, poky-image-lsb, beagle, build error
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
X-List-Received-Date: Tue, 14 Jun 2011 19:38:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 06/14/2011 12:28 PM, Saul Wold wrote:
> On 06/14/2011 11:20 AM, Robert Berger wrote:
>> Hi,
>>
>> I hit a build error with the tag: bernard-5.0.1
>> while trying to build poky-image-lsb, which failed, because psmisc could
>> not be downloaded.
>>
>> I fixed it like this:
>>
>> diff --git a/meta/recipes-extended/psmisc/psmisc.inc
>> b/meta/recipes-extended/psmisc/psmisc.inc
>> index 8b391f4..460affc 100644
>> --- a/meta/recipes-extended/psmisc/psmisc.inc
>> +++ b/meta/recipes-extended/psmisc/psmisc.inc
>> @@ -10,8 +10,9 @@ SECTION = "base"
>>   PRIORITY = "required"
>>   DEPENDS = "ncurses virtual/libintl"
>>
>> -SRC_URI = "${SOURCEFORGE_MIRROR}/psmisc/psmisc-${PV}.tar.gz \
>> +SRC_URI =
>> "${SOURCEFORGE_MIRROR}/project/psmisc/psmisc/${PV}/psmisc-${PV}.tar.gz \
>>             file://libintl-link.patch;patch=1"
>> +
>>   S = "${WORKDIR}/psmisc-${PV}"
>>
>> This means that the tag bernard-5.0.1 does not build anymore for the
>> beagle and most likely other platforms won't build as well out of the
>> box.
>>
>> That's just a small issue, but my problem is more generic.
>>
>> Assuming someone makes a distro based on a tag e.g. bernard-5.0.1 and
>> wants to rebuild this distro in a year from now.
>>
>> Packages might have disappeared, or in best case just the URLs changed.
>> In any case the distro will not build anymore out of the box.
>>
>> I would ideally like to be able to reproduce exactly what I have in a
>> couple of years from now, which seems impossible due to dependencies
>> external to poky which are not controlled by this community.
>>
>> I could come up with a solution, where local copies of packages are kept
>> e.g. in a local download directory, but this would mean, that I'll need
>> to build and test all possible platforms just after the releases (where
>> everything still works) and not when I'll actually need them.
>>
>> What's the best way to deal with this?
>>
> Robert,
> 
> This is a know problem with Upstream sources moving, dropping older
> versions or just doing strange behavior.
> 
> Currently, if you have MIRRORS, it should pick up the original upstream
> source tarball from http://autobuilder.yoctoprojecto.org/sources, if you
> want to avoid checking any upstream source, you can set
> PREMIRRORS_prepend for ftp, http, and https URLs to the
> autobuilder/sources location. This location should maintain all tarballs
> for releases.
> 
> We had a similar problem with distcc right about the time we released
> 5.0.1!
> 
> You can use a local solution also with PREMIRRORS_prepend, as well as
> setting the BB_NO_NETWORK, which will force bitbake to not look on the
> network for any upstreams, this assumes you have everything preloaded
> locally.
> 
> Let us know if this is what you are looking for.

I'd suggest making poky look at a poky-mirror as a "last resort" mirror
by default (similar to angstrom and angstrom-mirror.bbclass), at least
for release branches.

-- 
Tom Rini
Mentor Graphics Corporation

