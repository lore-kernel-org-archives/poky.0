Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B48D84C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 08:16:40 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p13EGdb4000963;
	Thu, 3 Feb 2011 06:16:39 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 06:16:39 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 06:16:38 -0800
Message-ID: <4D4AB8C5.2020003@windriver.com>
Date: Thu, 03 Feb 2011 08:16:37 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1296672559.git.mark.hatle@windriver.com>
	<bbfc7a63de022aaca825fb051b944eac796640fc.1296672559.git.mark.hatle@windriver.com>
	<4D4A5F26.7090906@intel.com>
In-Reply-To: <4D4A5F26.7090906@intel.com>
X-OriginalArrivalTime: 03 Feb 2011 14:16:38.0947 (UTC)
	FILETIME=[F8FF6730:01CBC3AC]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/3] bitbake.conf & package.bbclass: Use default SUMMARY and DESCRIPTION
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
X-List-Received-Date: Thu, 03 Feb 2011 14:16:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2/3/11 1:54 AM, Saul Wold wrote:
> On 02/02/2011 10:52 AM, Mark Hatle wrote:
>> A new default SUMMARY and DESCRIPTION was defined for any package that
>> previously did not contain one.  This value is based on the original
>> SUMMARY_${PN} value.
>>
>> The new default SUMMARY and DESCRIPTION is used as a basis for all of
>> the automatic summary and descriptions for the various package splits,
>> include ${PN}, ${PN}-dbg, ${PN}-dev, ${PN}-doc, and locales.
>>
>> A recipe may also override any of the automatic summaries by simply
>> specifying the value.
>>
>> Signed-off-by: Mark Hatle<mark.hatle@windriver.com>
>> ---
>>   meta/classes/package.bbclass |    5 ++++-
>>   meta/conf/bitbake.conf       |   27 +++++++++++++++++++--------
>>   2 files changed, 23 insertions(+), 9 deletions(-)
>>
>> diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
>> index bdc5d93..e64e441 100644
>> --- a/meta/classes/package.bbclass
>> +++ b/meta/classes/package.bbclass
>> @@ -289,6 +289,8 @@ python package_do_split_locales() {
>>   	if mainpkg.find('-dev'):
>>   		mainpkg = mainpkg.replace('-dev', '')
>>
>> +	summary = bb.data.getVar('SUMMARY', d, True) or pn
>> +	description = bb.data.getVar('DESCRIPTION', d, True) or ""
>>   	for l in locales:
>>   		ln = legitimize_package_name(l)
>>   		pkg = pn + '-locale-' + ln
>> @@ -296,7 +298,8 @@ python package_do_split_locales() {
>>   		bb.data.setVar('FILES_' + pkg, os.path.join(datadir, 'locale', l), d)
>>   		bb.data.setVar('RDEPENDS_' + pkg, '%s virtual-locale-%s' % (mainpkg, ln), d)
>>   		bb.data.setVar('RPROVIDES_' + pkg, '%s-locale %s-translation' % (pn, ln), d)
>> -		bb.data.setVar('DESCRIPTION_' + pkg, '%s translation for %s' % (l, pn), d)
>> +		bb.data.setVar('SUMMARY_' + pkg, '%s - %s translations' % (summary, l), d)
>> +		bb.data.setVar('DESCRIPTION_' + pkg, '%s  This package contains language translation files for the %s locale.' % (description, l), d)
>>
>>   	bb.data.setVar('PACKAGES', ' '.join(packages), d)
>>
>> diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
>> index 3292a49..668f250 100644
>> --- a/meta/conf/bitbake.conf
>> +++ b/meta/conf/bitbake.conf
>> @@ -166,14 +166,25 @@ BP = "${BPN}-${PV}"
>>
>>   SECTION = "base"
>>   PRIORITY = "optional"
>> -SUMMARY_${PN} ?= "${PN} version ${PV}-${PR}"
>> -SUMMARY_${PN}-dbg ?= "Debugging files for ${PN}"
>> -SUMMARY_${PN}-dev ?= "Development files for ${PN}"
>> -SUMMARY_${PN}-doc ?= "Documentation files for ${PN}"
>> -DESCRIPTION_${PN} ?= "${SUMMARY_${PN}}"
>> -DESCRIPTION_${PN}-dbg ?= "${SUMMARY_${PN}-dbg}"
>> -DESCRIPTION_${PN}-dev ?= "${SUMMARY_${PN}-dev}"
>> -DESCRIPTION_${PN}-doc ?= "${SUMMARY_${PN}-doc}"
>> +SUMMARY ?= "${PN} version ${PV}-${PR}"
>> +DESCRIPTION ?= "${SUMMARY}"
>> +
>> +SUMMARY_${PN} ?= "${SUMMARY}"
>> +DESCRIPTION_${PN} ?= "${DESCRIPTION}"
>> +
> Mark,
> 
> I am not sure about this change a from scratch build show the following 
> failure:
> Pseudo is not present but is required, building this first before the 
> main build
> Parsing recipes...NOTE: Error expanding variable SUMMARY
> ERROR: Error parsing 
> /vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/meta/recipes-kernel/linux/linux_2.6.23.bb: 
> variable SUMMARY references itself!
> ERROR: Command execution failed: Exited with 1

In my testing I did not get this.  I'm not sure how the SUMMARY variable
references itself though.

SUMMARY ?= "${PN} version ${PV}-${PR}"
SUMMARY_${PN} ?= "${SUMMARY}"

The above are always defined, so this should not be a circular reference as
SUMMARY not the same as SUMMARY_${PN}.

The only thing I can think of is the DESCRIPTION ?= "${SUMMARY}"... and
something else in the system is trying to make SUMMARY = DESCRIPTION.

An easy solution to try would simply to avoid the DESCRIPTION = SUMMARY, and
instead duplicate the SUMMARY text.

Since I'm not able to reproduce this problem on my system can you try it?

--Mark

> I think your odering needs to have the SUMMARY_${PN} first and then set 
> SUMMARY from the ${SUMMARY_${PN}}, same for DESCRIPTION, maybe Richard 
> can comment on this.
> 
> Sau!
> 
> 
>> +SUMMARY_${PN}-dbg ?= "${SUMMARY} - Debugging files"
>> +DESCRIPTION_${PN}-dbg ?= "${DESCRIPTION}  \
>> +This package contains ELF symbols and related sources for debugging purposes."
>> +
>> +SUMMARY_${PN}-dev ?= "${SUMMARY} - Development files"
>> +DESCRIPTION_${PN}-dev ?= "${DESCRIPTION}  \
>> +This package contains symbolic links, static binaries, header files, and \
>> +related items necessary for software development."
>> +
>> +SUMMARY_${PN}-doc ?= "${SUMMARY} - Documentation files"
>> +DESCRIPTION_${PN}-doc ?= "${DESCRIPTION}  \
>> +This package contains documentation."
>> +
>>   LICENSE = "INVALID"
>>   MAINTAINER = "Yocto Project Team<poky@yoctoproject.org>"
>>   HOMEPAGE = "unknown"
> 


