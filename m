Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 503CC4C80AAC
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 22:25:23 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2F3PMqh010695
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 14 Mar 2011 20:25:22 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 14 Mar 2011 20:25:21 -0700
Message-ID: <4D7EDBCA.6060009@windriver.com>
Date: Tue, 15 Mar 2011 11:23:54 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1300083112.git.kai.kang@windriver.com>
	<c5b7a3123701d8cee64c1606643a8ad8709ccbd2.1300083112.git.kai.kang@windriver.com>
	<4D7EBE19.6080603@linux.intel.com>
In-Reply-To: <4D7EBE19.6080603@linux.intel.com>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] PATCH: fix Bug 812 about slang
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
X-List-Received-Date: Tue, 15 Mar 2011 03:25:23 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年03月15日 09:17, Saul Wold wrote:
>
> Kang,
>
> The proper first line of a commit (commit subject line) should contain 
> the package name followed by what you have done in this commit.
>
> Also, the bug # should not be in the first line, it should be in the 
> Body of the commit message in the [YOCTO #XXX] format.
>
> So your commit message should read something like:
>
> slang: Export INST_LIB_DIR in do_install to fix compile problems
>
> Export "INST_LIB_DIR" to slang/slsh to fix cross compile warnings
> Fixes [YOCTO #812]
>
> Signed-off-by: Kang Kai<kai.kang@windriver.com>
>

Sau!

Thank you very much, I will obey the rule next time.
And is there any document about the rules, then I can be more careful 
about my mails' format.

Regards,
Kang Kai

>
>
> On 03/13/2011 11:29 PM, Kang Kai wrote:
>> From: Kang Kai<kai.kang@windriver.com>
>>
>> Export "INST_LIB_DIR" to slang/slsh to fix cross compile warnings
>>
>> Add necessary files to run slsh.
>>
>> Signed-off-by: Kang Kai<kai.kang@windriver.com>
>> ---
>> meta/recipes-extended/slang/slang_2.2.2.bb | 8 +++++++-
>> 1 files changed, 7 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta/recipes-extended/slang/slang_2.2.2.bb 
>> b/meta/recipes-extended/slang/slang_2.2.2.bb
>> index 7fe76af..8459e24 100644
>> --- a/meta/recipes-extended/slang/slang_2.2.2.bb
>> +++ b/meta/recipes-extended/slang/slang_2.2.2.bb
>> @@ -10,7 +10,7 @@ to recode S-Lang procedures in C if you need to."
>> SECTION = "libs"
>> PRIORITY = "optional"
>> DEPENDS = "pcre"
>> -PR = "r0"
>> +PR = "r1"
>>
>> LICENSE = "GPL Artistic"
>> LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
>> @@ -23,3 +23,9 @@ inherit autotools
>>
>> SRC_URI[md5sum] = "974437602a781cfe92ab61433dd16d03"
>> SRC_URI[sha256sum] = 
>> "cfaf8551fa3855f9b0043309bb553ef6d457f931b404df5a6ba6a5a69371fc42"
>> +
>> +do_install() {
>> + oe_runmake install DESTDIR=${D} -e 
>> 'INST_LIB_DIR=${STAGING_DIR_HOST}/usr/lib'
>> +}
>> +
>> +FILES_${PN} += "/usr/share/slsh/"


