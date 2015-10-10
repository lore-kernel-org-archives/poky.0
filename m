Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB958E00FEE; Fri,  9 Oct 2015 23:24:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE1C6E00343
	for <poky@yoctoproject.org>; Fri,  9 Oct 2015 23:24:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t9A6On1r019148
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 9 Oct 2015 23:24:49 -0700 (PDT)
Received: from [128.224.162.200] (128.224.162.200) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 9 Oct 2015 23:24:49 -0700
Message-ID: <5618AF2F.6040200@windriver.com>
Date: Sat, 10 Oct 2015 14:24:47 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <1444357146-7070-1-git-send-email-liezhi.yang@windriver.com>
	<5618AEC8.8040604@windriver.com>
In-Reply-To: <5618AEC8.8040604@windriver.com>
Subject: Re: [PATCH] libsepol: DEPENDS on flex-native
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
X-List-Received-Date: Sat, 10 Oct 2015 06:24:57 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit



On 10/10/2015 02:23 PM, Robert Yang wrote:
>
> Please ignore this one, it should go into poky@yoctoproject.org.

Sorry, should be: yocto@yoctoproject.org :-(.

// Robert

>
> // Robert
>
> On 10/09/2015 10:19 AM, Robert Yang wrote:
>> Fixed when build libsepol-native:
>> /bin/sh: 1: flex: not found
>>
>> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>> ---
>>   recipes-security/selinux/libsepol.inc | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/recipes-security/selinux/libsepol.inc
>> b/recipes-security/selinux/libsepol.inc
>> index b24ed28..a8ee749 100644
>> --- a/recipes-security/selinux/libsepol.inc
>> +++ b/recipes-security/selinux/libsepol.inc
>> @@ -12,4 +12,6 @@ inherit lib_package
>>   # local ranlib.
>>   EXTRA_OEMAKE += "RANLIB='$(AR) s'"
>>
>> +DEPENDS += "flex-native"
>> +
>>   BBCLASSEXTEND = "native"
>>

