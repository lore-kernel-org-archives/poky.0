Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1F59E008B4; Mon, 10 Nov 2014 18:07:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 997BEE007C0
	for <poky@yoctoproject.org>; Mon, 10 Nov 2014 18:07:19 -0800 (PST)
Received: by mail-pd0-f175.google.com with SMTP id y13so9097029pdi.20
	for <poky@yoctoproject.org>; Mon, 10 Nov 2014 18:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=F7q7XNXgEqMPPSDAfMEXMpVWPDXGr62GrNUSwasqRjg=;
	b=s/ZPYHFkba536M8OCPRQcP8snWVl00PqtzXFwh1d5/GFg2E4iE80f+u52BLfLlcaOV
	hTgsVRCMT/+6Kxpk+NOYbqK2cNWS3Veq3bmu0HHUf4CYp9oM7CES+qLk49nnBt8Koqu3
	gKQ1QAUJhrZNgcnbuOuKzAdu3ncbsiQxMKJ5iufdq4oeKrr6VeziV7K2yHs4RoVOQB5Q
	X9a66k7EuWeR1JgdWljbGWjIhXQpfjA7cIygStfLiqQUSIPsPtDYGNTjk8KNK5Lzam3c
	1XldilwVafgCzTIR7FQstQevkeVqNvzslYMoB89V8jVIzuZr+A1MzvFmN1bI8tCpNdlb
	Sujg==
X-Received: by 10.70.93.104 with SMTP id ct8mr36615107pdb.72.1415671639463;
	Mon, 10 Nov 2014 18:07:19 -0800 (PST)
Received: from ?IPv6:2601:c:9380:601:f59d:c376:faf3:398e?
	([2601:c:9380:601:f59d:c376:faf3:398e])
	by mx.google.com with ESMTPSA id s6sm13896296pdr.95.2014.11.10.18.07.17
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Nov 2014 18:07:18 -0800 (PST)
Message-ID: <54616F51.4070509@gmail.com>
Date: Mon, 10 Nov 2014 18:07:13 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Bob Cochran <yocto@mindchasers.com>, Saul Wold <sgw@linux.intel.com>, 
	Poky Project <poky@yoctoproject.org>
References: <1415634297-5665-1-git-send-email-sgw@linux.intel.com>
	<54616575.3080101@mindchasers.com>
In-Reply-To: <54616575.3080101@mindchasers.com>
Subject: Re: [PATCH v2] maintainers: Update per replies on OE-Core
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Nov 2014 02:07:23 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Bob,

I most cases there is a README that should list the maintainers for a 
layer, the branch maintainers should be listed if not on Master.

The main layer maintainers are:
  Koen Kooi <koen@dominion.thruhere.net>
  Martin Jansa <martin.jansa@gmail.com>


hope this helps.
Armin

On 11/10/2014 05:25 PM, Bob Cochran wrote:
> Hi,
>
> How do I determine the maintainer for something not on this list but in
> meta-openembedded, specifically postgresql?
>
> Thanks
>
> Bob
>
>
>
> On 11/10/2014 10:44 AM, Saul Wold wrote:
>> Signed-off-by: Saul Wold <sgw@linux.intel.com>
>> ---
>> fixed Paul Barker's opkg* entries
>>
>>   meta-yocto/conf/distro/include/maintainers.inc | 21
>> +++++++++++++++------
>>   1 file changed, 15 insertions(+), 6 deletions(-)
>>
>> diff --git a/meta-yocto/conf/distro/include/maintainers.inc
>> b/meta-yocto/conf/distro/include/maintainers.inc
>> index b2554fb..0121791 100644
>> --- a/meta-yocto/conf/distro/include/maintainers.inc
>> +++ b/meta-yocto/conf/distro/include/maintainers.inc
>> @@ -279,7 +279,7 @@ RECIPE_MAINTAINER_pn-less = "Saul Wold
>> <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-liba52 = "Cristian Iorga
>> <cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-libacpi = "Aníbal Limón
>> <anibal.limon@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libaio = "Saul Wold <sgw@linux.intel.com>"
>> -RECIPE_MAINTAINER_pn-libarchive = "Kai Kang <kai.kang@windriver.com>"
>> +RECIPE_MAINTAINER_pn-libarchive = "Paul Barker <paul@paulbarker.me.uk>"
>>   RECIPE_MAINTAINER_pn-libart-lgpl = "Ross Burton
>> <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-libassuan = "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libatomics-ops = "Cristian Iorga
>> <cristian.iorga@intel.com>"
>> @@ -297,6 +297,7 @@ RECIPE_MAINTAINER_pn-libdrm = "Richard Purdie
>> <richard.purdie@linuxfoundation.or
>>   RECIPE_MAINTAINER_pn-libdumpvalue-perl = "Saul Wold
>> <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libenv-perl = "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-liberation-fonts = "Ross Burton
>> <ross.burton@intel.com>"
>> +RECIPE_MAINTAINER_pn-libevdev = "Paul Eggleton
>> <paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libevent = "Paul Eggleton
>> <paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libexif = "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libfakekey = "Ross Burton <ross.burton@intel.com>"
>> @@ -321,6 +322,7 @@ RECIPE_MAINTAINER_pn-libmad = "Saul Wold
>> <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libmatchbox = "Ross Burton
>> <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-libmpc = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-libnewt = "Hongxu Jia <hongxu.jia@windriver.com>"
>> +RECIPE_MAINTAINER_pn-libnewt-python = "Hongxu Jia
>> <hongxu.jia@windriver.com>"
>>   RECIPE_MAINTAINER_pn-libnfsidmap = "Paul Eggleton
>> <paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libnl = "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libnotify = "Ross Burton <ross.burton@intel.com>"
>> @@ -420,7 +422,7 @@ RECIPE_MAINTAINER_pn-lttng-tools = "Richard Purdie
>> <richard.purdie@linuxfoundati
>>   RECIPE_MAINTAINER_pn-lttng-ust = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-lzop = "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-lzo = "Saul Wold <sgw@linux.intel.com>"
>> -RECIPE_MAINTAINER_pn-lz4 = "Armin Kuster <akuster@mvista.com>"
>> +RECIPE_MAINTAINER_pn-lz4 = "Armin Kuster <akuster808@gmail.com>"
>>   RECIPE_MAINTAINER_pn-m4 = "Robert Yang <liezhi.yang@windriver.com>"
>>   RECIPE_MAINTAINER_pn-mailx = "Kai Kang <kai.kang@windriver.com>"
>>   RECIPE_MAINTAINER_pn-make = "Robert Yang <liezhi.yang@windriver.com>"
>> @@ -487,10 +489,10 @@ RECIPE_MAINTAINER_pn-openjade = "Paul Eggleton
>> <paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-opensp = "Paul Eggleton
>> <paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-openssh = "Paul Eggleton
>> <paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-openssl = "Saul Wold <sgw@linux.intel.com>"
>> -RECIPE_MAINTAINER_pn-opkg-collateral = "Saul Wold <sgw@linux.intel.com>"
>> -RECIPE_MAINTAINER_pn-opkg-config-base = "Saul Wold
>> <sgw@linux.intel.com>"
>> -RECIPE_MAINTAINER_pn-opkg = "Saul Wold <sgw@linux.intel.com>"
>> -RECIPE_MAINTAINER_pn-opkg-utils = "Saul Wold <sgw@linux.intel.com>"
>> +RECIPE_MAINTAINER_pn-opkg-collateral = "Paul Barker
>> <paul@paulbarker.me.uk>"
>> +RECIPE_MAINTAINER_pn-opkg-config-base = "Paul Barker
>> <paul@paulbarker.me.uk>"
>> +RECIPE_MAINTAINER_pn-opkg = "Paul Barker <paul@paulbarker.me.uk>"
>> +RECIPE_MAINTAINER_pn-opkg-utils = "Paul Barker <paul@paulbarker.me.uk>"
>>   RECIPE_MAINTAINER_pn-oprofile = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-oprofileui = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-oprofileui-server = "Saul Wold
>> <sgw@linux.intel.com>"
>> @@ -533,6 +535,7 @@ RECIPE_MAINTAINER_pn-perf = "Saul Wold
>> <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-perl = "Hongxu Jia <hongxu.jia@windriver.com>"
>>   RECIPE_MAINTAINER_pn-piglit = "Ross Burton <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-pigz = "Saul Wold <sgw@linux.intel.com>"
>> +RECIPE_MAINTAINER_pn-pinentry = "Armin Kuster <akuster808@gmail.com>"
>>   RECIPE_MAINTAINER_pn-pixman = "Ross Burton <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-pkgconfig = "Aníbal Limón
>> <anibal.limon@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-pm-utils = "Cristian Iorga
>> <cristian.iorga@intel.com>"
>> @@ -560,6 +563,9 @@ RECIPE_MAINTAINER_pn-python-distribute = "Richard
>> Purdie <richard.purdie@linuxfo
>>   RECIPE_MAINTAINER_pn-python-docutils = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-python-gst = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-python-imaging = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>> +RECIPE_MAINTAINER_pn-python-mako = "Khem Raj <raj.khem@gmail.com>"
>> +RECIPE_MAINTAINER_pn-python-nose = "Khem Raj <raj.khem@gmail.com>"
>> +RECIPE_MAINTAINER_pn-python-numpy = "Khem Raj <raj.khem@gmail.com>"
>>   RECIPE_MAINTAINER_pn-python-pycairo = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-python-pycurl = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-python-pygobject = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>> @@ -569,6 +575,7 @@ RECIPE_MAINTAINER_pn-python-scons = "Richard
>> Purdie <richard.purdie@linuxfoundat
>>   RECIPE_MAINTAINER_pn-python-setuptools = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-python-smartpm = "Paul Eggleton
>> <paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-python3 = "Richard Purdie
>> <richard.purdie@linuxfoundation.org>"
>> +RECIPE_MAINTAINER_pn-python3-distribute = "Khem Raj
>> <raj.khem@gmail.com>"
>>   RECIPE_MAINTAINER_pn-qemu-helper-native = "Cristian Iorga
>> <cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-qemu = "Cristian Iorga <cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-qmmp = "Hongxu Jia <hongxu.jia@windriver.com>"
>> @@ -710,6 +717,7 @@ RECIPE_MAINTAINER_pn-xf86-input-vmmouse = "Ross
>> Burton <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-xf86miscproto = "Ross Burton
>> <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-xf86-video-fbdev = "Ross Burton
>> <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-xf86-video-intel = "Ross Burton
>> <ross.burton@intel.com>"
>> +RECIPE_MAINTAINER_pn-xf86-video-modesetting = "Ross Burton
>> <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-xf86-video-omapfb = "Ross Burton
>> <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-xf86-video-omap = "Ross Burton
>> <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-xf86-video-vesa = "Ross Burton
>> <ross.burton@intel.com>"
>> @@ -723,6 +731,7 @@ RECIPE_MAINTAINER_pn-xinput = "Ross Burton
>> <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-xinput-calibrator = "Ross Burton
>> <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-xkbcomp = "Ross Burton <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-xkeyboard-config = "Ross Burton
>> <ross.burton@intel.com>"
>> +RECIPE_MAINTAINER_pn-xmlto = "Hongxu Jia <hongxu.jia@windriver.com>"
>>   RECIPE_MAINTAINER_pn-xmodmap = "Ross Burton <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-xorg-minimal-fonts = "Ross Burton
>> <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-xprop = "Ross Burton <ross.burton@intel.com>"
>>
>>
>>
>

