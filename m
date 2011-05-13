Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85C0F4C811F8
	for <poky@yoctoproject.org>; Fri, 13 May 2011 11:54:22 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4DGsLOo013553
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 13 May 2011 09:54:21 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 13 May 2011 09:54:21 -0700
Message-ID: <4DCD623C.1050101@windriver.com>
Date: Fri, 13 May 2011 11:54:20 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1305266909.git.kai.kang@windriver.com>	<7d8bd25d3d5664125484582160518ce857cac2f5.1305266909.git.kai.kang@windriver.com>
	<4DCD6128.6030506@linux.intel.com>
In-Reply-To: <4DCD6128.6030506@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/4] foomatic-filters: add a link to pass LSB printing test
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
X-List-Received-Date: Fri, 13 May 2011 16:54:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 5/13/11 11:49 AM, Saul Wold wrote:
> On 05/13/2011 12:56 AM, Kang Kai wrote:
>> From: Kang Kai<kai.kang@windriver.com>
>>
>> LSB printing test will test a foomatic-rip under cups' directory,
>> so add it as link.
>> Part fixes [Yocto 904]
>>
>> Signed-off-by: Kang Kai<kai.kang@windriver.com>
>> ---
>>   .../foomatic/foomatic-filters_4.0.7.bb             |    9 ++++++++-
>>   1 files changed, 8 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
>> index 8d70400..43e9c8d 100644
>> --- a/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
>> +++ b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
>> @@ -10,7 +10,7 @@ format using a printer-specific, but spooler-independent PPD file. \
>>   "
>>
>>   DEPENDS += "cups perl libxml2"
>> -PR = "r0"
>> +PR = "r1"
>>
>>   LICENSE = "GPLv2+"
>>   LIC_FILES_CHKSUM = "file://${WORKDIR}/foomatic-filters-${PV}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
>> @@ -20,4 +20,11 @@ SRC_URI = "http://www.openprinting.org/download/foomatic/foomatic-filters-${PV}.
>>   SRC_URI[md5sum] = "20abd25c1c98b2dae68709062a132a7d"
>>   SRC_URI[sha256sum] = "090313fae40b177f505d9c9b93d7a4d7188b6d5d18b6ae41ab24903ac983478d"
>>
>> +do_install_append_linuxstdbase() {
>> +    install -d ${D}${libdir}/cups/filter
>> +    ln -sf ../../../bin/foomatic-rip ${D}${libdir}/cups/filter
> Kai Kang:
> 
> This should really be an absolute patch instead of a relative, there are 
> distros that might have a different exec_prefix

We should likely audit our environments for these items.  I know at Wind River
our policy is all links are relative, we do not allow absolute links as the
values usually cause problems in sysroots, or external SDK environments.

(Note, pseudo has a mechanism internal to it that ensures that absolute links
don't point off to system files.. but we still avoid it.)

--Mark

>> +}
>> +
>> +FILES_${PN} += "${libdir}/cups/filter/foomatic-rip"
> 
> Should this be _linuxstdbase also?
> 
>> +
>>   inherit autotools
> Sau!
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


