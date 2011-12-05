Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83277E0030F
	for <poky@yoctoproject.org>; Mon,  5 Dec 2011 09:09:44 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 566E8166014B; Mon,  5 Dec 2011 10:09:42 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3DE4D1660145;
	Mon,  5 Dec 2011 10:09:40 -0700 (MST)
Message-ID: <4EDCFAD4.7060504@mlbassoc.com>
Date: Mon, 05 Dec 2011 10:09:40 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Carl Simonson <simonsonc@gmail.com>
References: <4EDCE652.1040802@mlbassoc.com> <4EDCF1F4.1050304@mlbassoc.com>
	<CANpFMir7fShQw5=QPG+Rn5vD_zown8RFHVxQS54QX77B3kSKNA@mail.gmail.com>
In-Reply-To: <CANpFMir7fShQw5=QPG+Rn5vD_zown8RFHVxQS54QX77B3kSKNA@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Problem building SDK
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
X-List-Received-Date: Mon, 05 Dec 2011 17:09:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-12-05 09:42, Carl Simonson wrote:
> Look at 9eecd86. It looks like that change added an interits for
> lib_package. Doesn't look like you have that built since it looks like
> your PR is 0, not 1.
>
> Maybe you need to update and build the recipe again?
>

Yes, it seems my repo wasn't as up to date as I thought :-(
I updated and rebuilt and at least now it's building the libgdbm package.
I don't know yet if it works because I have a new error - can't build glib
which I'll start a new thread for.

Thanks for the pointer

> On Mon, Dec 5, 2011 at 10:31 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> On 2011-12-05 08:42, Gary Thomas wrote:
>>>
>>> With a recent master (9be6d59b78510443d0944513503d515df13caa45),
>>> the gdbm package version changed from 1.8.3 to 1.10 (notice not 1.10.0).
>>> This causes a problem:
>>> | * satisfy_dependencies_for: Cannot satisfy the following dependencies
>>> for task-core-sdk:
>>> | * libgdbm3 (>= 1.8.3) *
>>>
>>
>> A little more data - previously, the 'gdbm' recipe generated these
>> packages:
>>   armv7a-vfp-neon/libgdbm3_1.8.3-r4_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/libgdbm-dbg_1.8.3-r4_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/libgdbm-dev_1.8.3-r4_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/libgdbm-doc_1.8.3-r4_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/libgdbm-staticdev_1.8.3-r4_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/perl-module-gdbm-file_5.14.2-r0_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/python-gdbm_2.7.2-r0.0_armv7a-vfp-neon.ipk
>>
>> The new recipe generates these:
>>   armv7a-vfp-neon/gdbm_1.10-r0_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/gdbm-dbg_1.10-r0_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/gdbm-dev_1.10-r0_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/gdbm-doc_1.10-r0_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/gdbm-locale-de_1.10-r0_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/gdbm-locale-fi_1.10-r0_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/gdbm-locale-ja_1.10-r0_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/gdbm-locale-pl_1.10-r0_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/gdbm-locale-uk_1.10-r0_armv7a-vfp-neon.ipk
>>   armv7a-vfp-neon/gdbm-staticdev_1.10-r0_armv7a-vfp-neon.ipk
>>
>> Very different, indeed.  I noticed that the old recipe has a couple of
>> patches which were not carried forward that seem to have something to
>> do with this.
>>
>> I also can't figure out where this dependency is coming from.  I ran
>> 'bitbake my-image -g' to get the dependency graphs and I don't see libgdbm
>> mentioned anywhere.  How can I find the [anonymous] dependency?
>>
>> Any ideas how I can fix this?
>>
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

