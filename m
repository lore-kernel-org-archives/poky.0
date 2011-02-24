Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4748E4C8004D
	for <poky@lists.pokylinux.org>; Wed, 23 Feb 2011 18:30:13 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id C0DEE16601F6; Wed, 23 Feb 2011 17:29:57 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D054E16603BA;
	Wed, 23 Feb 2011 17:29:07 -0700 (MST)
Message-ID: <4D65A653.2060204@mlbassoc.com>
Date: Wed, 23 Feb 2011 17:29:07 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D652570.1030409@mlbassoc.com> <1298505424.26736.75.camel@rex>
In-Reply-To: <1298505424.26736.75.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: git and BB_NO_NETWORK
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
X-List-Received-Date: Thu, 24 Feb 2011 00:30:13 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/23/2011 04:57 PM, Richard Purdie wrote:
> On Wed, 2011-02-23 at 08:19 -0700, Gary Thomas wrote:
>> This is related to bug #752
>>
>> Richard has made some changes which nearly fixes that bug, except
>> for the mtd-utils_1.4.1.bb recipe.  The problem with this recipe
>> is that it specifies a git tag, not a fixed revision.  The fetcher
>> fails in this case as it has to interrogate the git tree to find
>> the tag and that's not allowed because of BB_NO_NETWORK=1
>>
>> I tried to move this to a fixed revision which corresponds to tag v1.4.1
>> like this:
>>
>> diff --git a/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb b/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
>> index 5e6db0e..2c4e276 100644
>> --- a/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
>> +++ b/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
>> @@ -6,11 +6,12 @@ LICENSE = "GPLv2+"
>>    LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
>>                        file://include/common.h;beginline=1;endline=17;md5=ba05b07912a44ea2bf81ce409380049c"
>>
>> -SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git;tag=v${PV} \
>> +SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git \
>>                   file://add-exclusion-to-mkfs-jffs2-git-2.patch;patch=1"
>>
>>    S = "${WORKDIR}/git/"
>>
>> +PV = "1.4.1${SRCPV}"
>>    PR = "r1"
>>
>>    EXTRA_OEMAKE = "'CC=${CC}' 'CFLAGS=${CFLAGS} -I${S}/include -DWITHOUT_XATTR' 'BUILDDIR=${S}'"
>>
>> I also added this to my fixed-revisions.inc
>> SRCREV_pn-mtd-utils ??= "3c3674a6e1d3f59554b0ff68ca59be2fd4134e0c"
>>
>> Finally, I had to move recipes-devtools/mtd/mtd-utils-1.4.1/add-exclusion-to-mkfs-jffs2-git-2.patch
>> to recipes-devtools/mtd/mtd-utils or else it could not be found.
>>
>> Is there an easier way to solve these issues?  Once I understand the whole process, I can
>> propose a patch.
>
> I think these issues were discussed and resolved in the bugzilla?
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=752
>
> In future please try and keep the discussions in one place, not both, or
> state on the bugzilla you're moving it to email.

Of course.  Actually, it was the other way around, I first
send this to the list in case someone other than you (overworked,
I'm sure) had an idea.  I copied it to the bug just for reference.

Both bugs #752 & 753 seem to be taken care of now.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

