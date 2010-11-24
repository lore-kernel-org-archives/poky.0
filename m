Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17E414C80052
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 10:55:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Nov 2010 08:55:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,249,1288594800"; d="scan'208";a="577223998"
Received: from unknown (HELO [10.255.13.150]) ([10.255.13.150])
	by orsmga002.jf.intel.com with ESMTP; 24 Nov 2010 08:55:26 -0800
Message-ID: <4CED437D.8040202@intel.com>
Date: Wed, 24 Nov 2010 08:55:25 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <1290574021.1858.84.camel@eric-desktop>
	<4CED1E00.5030205@windriver.com>
In-Reply-To: <4CED1E00.5030205@windriver.com>
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 3/3] Add new package perl-uri in order to enable graphic LSB test(OLVER-Core test).
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
X-List-Received-Date: Wed, 24 Nov 2010 16:55:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/2010 06:15 AM, Mark Hatle wrote:
> Same as the previous no DESCRIPTION or SUMMARY
>
Also missing checksums, please see my previous email.
Looks like they might also be missing PR = "r0"

Sau!

> On 11/23/10 10:47 PM, Lu Jingdong wrote:
>> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
>> ---
>>   meta/recipes-devtools/perl/perl-uri_1.56.bb |   17 +++++++++++++++++
>>   1 files changed, 17 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/recipes-devtools/perl/perl-uri_1.56.bb
>>
>> diff --git a/meta/recipes-devtools/perl/perl-uri_1.56.bb
>> b/meta/recipes-devtools/perl/perl-uri_1.56.bb
>> new file mode 100644
>> index 0000000..9e2cfc7
>> --- /dev/null
>> +++ b/meta/recipes-devtools/perl/perl-uri_1.56.bb
>> @@ -0,0 +1,17 @@
>> +SECTION = "libs"
>> +LICENSE = "Artistic"
>> +DEPENDS += "perl"
>> +
>> +SRC_URI = "http://www.cpan.org/authors/id/G/GA/GAAS/URI-${PV}.tar.gz"
>> +
>> +S = "${WORKDIR}/URI-${PV}"
>> +
>> +EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=
>> ${STAGING_INCDIR}"
>> +
>> +inherit cpan
>> +
>> +do_compile() {
>> +       export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name
>> 'libc-*.so')"
>> +       cpan_do_compile
>> +}
>> +
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


