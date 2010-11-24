Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 88B3B4C80052
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 10:53:06 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2010 08:52:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,249,1288594800"; d="scan'208";a="577223240"
Received: from unknown (HELO [10.255.13.150]) ([10.255.13.150])
	by orsmga002.jf.intel.com with ESMTP; 24 Nov 2010 08:52:54 -0800
Message-ID: <4CED42E6.50703@intel.com>
Date: Wed, 24 Nov 2010 08:52:54 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <1290573970.1858.83.camel@eric-desktop>
	<4CED1DE9.9020208@windriver.com>
In-Reply-To: <4CED1DE9.9020208@windriver.com>
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 2/3] Add new package libxml-perl in order to enable graphic LSB test(OLVER-Core test).
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
X-List-Received-Date: Wed, 24 Nov 2010 16:53:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/2010 06:15 AM, Mark Hatle wrote:
> I don't see a DESCRIPTION or SUMMARY field in this new package.
>
It's also missing the checksums LIC_FILES_CHKSUM, SRC_URI[md5] and 
SRC_URI[sha256].

The checksums can be generated via their respective programs md5sum and 
sha256sum.

Please add these to all new recipes.

Thanks
   Sau!

> --Mark
>
> On 11/23/10 10:46 PM, Lu Jingdong wrote:
>> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
>> ---
>>   meta/recipes-devtools/perl/libxml-perl_0.08.bb |   15 +++++++++++++++
>>   1 files changed, 15 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/recipes-devtools/perl/libxml-perl_0.08.bb
>>
>> diff --git a/meta/recipes-devtools/perl/libxml-perl_0.08.bb
>> b/meta/recipes-devtools/perl/libxml-perl_0.08.bb
>> new file mode 100644
>> index 0000000..6c3c9c7
>> --- /dev/null
>> +++ b/meta/recipes-devtools/perl/libxml-perl_0.08.bb
>> @@ -0,0 +1,15 @@
>> +SECTION = "libs"
>> +LICENSE = "Artistic"
>> +DEPENDS += "libxml-parser-perl"
>> +
>> +SRC_URI =
>> "http://www.cpan.org/modules/by-module/XML/${PN}-${PV}.tar.gz"
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


