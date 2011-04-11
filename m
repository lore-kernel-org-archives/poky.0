Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20DDB4C8043A
	for <poky@yoctoproject.org>; Sun, 10 Apr 2011 22:13:26 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3B3DO0J006489
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 10 Apr 2011 20:13:24 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 10 Apr 2011 20:13:24 -0700
Message-ID: <4DA271CB.2060809@windriver.com>
Date: Mon, 11 Apr 2011 11:13:15 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1302076785.git.kai.kang@windriver.com>
	<4D9F5668.80807@intel.com>
In-Reply-To: <4D9F5668.80807@intel.com>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] LSB: add nspr and nss to pass LSB library check
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
X-List-Received-Date: Mon, 11 Apr 2011 03:13:26 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年04月09日 02:39, Saul Wold wrote:
> On 04/06/2011 01:06 AM, Kang Kai wrote:
>> From: Kang Kai<kai.kang@windriver.com>
>>
>> Hi Saul,
>>
>> I add the exact LICENSE version and update LICENSE files and resend 
>> the patches.
>> Because the license information exists in every file, so just pick 
>> one file's header as LICENSE file.
>>
> Kang,
>
> If the license block is the same as the copyright file, then the 
> correct file is the copyright. What I was looking for if was multiple 
> licensed was a couple of different files that might have had different 
> license headers.
Hi Saul,

There are not separate license files or different license headers, so I 
will resend this patch with the "copyright" file as license file.

Regards,
Kai
>
> Please use the copyright file for both nspr and nss.
>
> Sorry to make this difficult, we just need to get the license 
> information correct.
>
> Sau!
>
>> add nss and nspr to provide libnss3.so, libssl3.so and libnspr4.so
>> to pass LSB library check.
>> Both are imported from oe, rev 6fe7cef27069415f2eba36bc640cf59013d4979b
>> And add header for each patch
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>> Branch: kangkai/bugfix-nss
>> Browse: 
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/bugfix-nss
>>
>> Thanks,
>> Kang Kai<kai.kang@windriver.com>
>> ---
>>
>>
>> Kang Kai (2):
>> nspr: add nspr to pass LSB library test
>> nss: add nss for LSB library check
>>
>> .../mozilla/nspr-4.8.7/30_config_64bits.dpatch | 45 +
>> .../mozilla/nspr-4.8.7/30_pkgconfig.dpatch | 37 +
>> .../mozilla/nspr-4.8.7/81_sonames.dpatch | 233 +
>> .../mozilla/nspr-4.8.7/unbreak-build.diff | 50 +
>> .../recipes-extended/mozilla/nspr-tools-native.inc | 29 +
>> .../mozilla/nspr-tools-native_4.8.7.bb | 16 +
>> meta/recipes-extended/mozilla/nspr.inc | 44 +
>> meta/recipes-extended/mozilla/nspr_4.8.7.bb | 17 +
>> .../mozilla/nss-3.12.6/00_ckbi_1.79.patch | 6390 ++++++++++++++++++++
>> .../mozilla/nss-3.12.6/25_entropy.patch | 26 +
>> .../mozilla/nss-3.12.6/38_hurd.patch | 63 +
>> .../mozilla/nss-3.12.6/38_kbsd.patch | 156 +
>> .../mozilla/nss-3.12.6/38_mips64_build.patch | 31 +
>> .../mozilla/nss-3.12.6/80_security_build.patch | 21 +
>> .../mozilla/nss-3.12.6/80_security_tools.patch | 30 +
>> .../mozilla/nss-3.12.6/81_sonames.patch | 355 ++
>> .../mozilla/nss-3.12.6/85_security_load.patch | 83 +
>> .../mozilla/nss-3.12.6/90_realpath.patch | 39 +
>> .../mozilla/nss-3.12.6/91_build_pwdecrypt.patch | 21 +
>> .../nss-3.12.6/95_add_spi+cacert_ca_certs.patch | 1172 ++++
>> .../mozilla/nss-3.12.6/96_NSS_VersionCheck.patch | 23 +
>> .../97_SSL_RENEGOTIATE_TRANSITIONAL.patch | 25 +
>> .../mozilla/nss-3.12.6/build-fix.patch | 67 +
>> meta/recipes-extended/mozilla/nss-3.12.6/nss.pc.in | 11 +
>> meta/recipes-extended/mozilla/nss-3.12.6/series | 14 +
>> meta/recipes-extended/mozilla/nss_3.12.6.bb | 116 +
>> 26 files changed, 9114 insertions(+), 0 deletions(-)
>> create mode 100644 
>> meta/recipes-extended/mozilla/nspr-4.8.7/30_config_64bits.dpatch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nspr-4.8.7/30_pkgconfig.dpatch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nspr-4.8.7/81_sonames.dpatch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nspr-4.8.7/unbreak-build.diff
>> create mode 100644 meta/recipes-extended/mozilla/nspr-tools-native.inc
>> create mode 100644 
>> meta/recipes-extended/mozilla/nspr-tools-native_4.8.7.bb
>> create mode 100644 meta/recipes-extended/mozilla/nspr.inc
>> create mode 100644 meta/recipes-extended/mozilla/nspr_4.8.7.bb
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/00_ckbi_1.79.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/25_entropy.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/38_hurd.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/38_kbsd.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/38_mips64_build.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/80_security_build.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/80_security_tools.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/81_sonames.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/85_security_load.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/90_realpath.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/91_build_pwdecrypt.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/95_add_spi+cacert_ca_certs.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/96_NSS_VersionCheck.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/97_SSL_RENEGOTIATE_TRANSITIONAL.patch
>> create mode 100644 
>> meta/recipes-extended/mozilla/nss-3.12.6/build-fix.patch
>> create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/nss.pc.in
>> create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/series
>> create mode 100644 meta/recipes-extended/mozilla/nss_3.12.6.bb
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>


