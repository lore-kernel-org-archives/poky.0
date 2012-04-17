Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CCBFE013A8
	for <poky@yoctoproject.org>; Tue, 17 Apr 2012 08:59:17 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 42599F81223; Tue, 17 Apr 2012 09:59:17 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8B9E3F8120A;
	Tue, 17 Apr 2012 09:59:09 -0600 (MDT)
Message-ID: <4F8D934D.9070704@mlbassoc.com>
Date: Tue, 17 Apr 2012 09:59:09 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4F8493BB.5070400@mlbassoc.com> <1334100422.10826.99.camel@ted>
	<4F84CCE3.1060504@mlbassoc.com> <4F84E00D.7030302@mlbassoc.com>
	<4F8D5F61.1010002@mlbassoc.com> <1334674913.616.98.camel@ted>
	<4F8D8A73.3030408@mlbassoc.com> <1334677494.616.101.camel@ted>
In-Reply-To: <1334677494.616.101.camel@ted>
Cc: poky@yoctoproject.org
Subject: Re: SRC checksum checking broken
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
X-List-Received-Date: Tue, 17 Apr 2012 15:59:17 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-17 09:44, Richard Purdie wrote:
> On Tue, 2012-04-17 at 09:21 -0600, Gary Thomas wrote:
>> On 2012-04-17 09:01, Richard Purdie wrote:
>>> On Tue, 2012-04-17 at 06:17 -0600, Gary Thomas wrote:
>>>> On 2012-04-10 19:36, Gary Thomas wrote:
>>>>> On 2012-04-10 18:14, Gary Thomas wrote:
>>>>>> On 2012-04-10 17:27, Richard Purdie wrote:
>>>>>>> On Tue, 2012-04-10 at 14:10 -0600, Gary Thomas wrote:
>>>>>>>> I'm not sure how, but this revision broke the checking of checksums:
>>>>>>>>
>>>>>>>> commit 3d69d9462d550ce4e00e14768cc616bc9ad7e8a5
>>>>>>>> Author: Richard Purdie<richard.purdie@linuxfoundation.org>
>>>>>>>> Date: Fri Mar 23 14:52:23 2012 +0000
>>>>>>>>
>>>>>>>> bitbake/fetch2: Ensure mirror tarballs have .done stamps so we don't redownload and corrupt them
>>>>>>>>
>>>>>>>> [YOCTO #2154]
>>>>>>>>
>>>>>>>> (Bitbake rev: 521d6b14151d3bf934b9597557f7ae46e50a3d7a)
>>>>>>>>
>>>>>>>> Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>>>>>>>>
>>>>>>>> The attached log shows this failure - I've modified the busybox_1.19.4.bb
>>>>>>>> recipe to have incorrect checksums. With revision 67c83a8, the failure
>>>>>>>> is correctly identified. With revision 3d69d94, it is not.
>>>>>>>>
>>>>>>>> The error happens with direct downloads (using DL_DIR) and also
>>>>>>>> with a mirror setup (using own-mirrors).
>>>>>>>>
>>>>>>>> I've reviewed the change and I don't see how/why this happens.
>>>>>>>
>>>>>>> There was a patch just merged for something that sounds very similar. I
>>>>>>> was going to give you a link and realised something has gone wrong with
>>>>>>> the commit:
>>>>>>>
>>>>>>> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=a46aafb8b27bd86d046385a569deee6b4c9b8bb6
>>>>>>>
>>>>>>> as its been squashed with a subsequent commit I had to resolve a
>>>>>>> conflict with.
>>>>>>>
>>>>>>> Regardless, could you see whether that change solves your problem
>>>>>>> please?
>>>>>>
>>>>>> No change, sorry.
>>>>>>
>>>>>
>>>>> I think the problem is this part of the change:
>>>>> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
>>>>> index 7524fa9..e5c4b34 100644
>>>>> --- a/bitbake/lib/bb/fetch2/__init__.py
>>>>> +++ b/bitbake/lib/bb/fetch2/__init__.py
>>>>> @@ -476,6 +476,7 @@ def try_mirrors(d, origud, mirrors, check = False):
>>>>>
>>>>> if not os.path.exists(ud.donestamp) or ud.method.need_update(newuri, ud, ld):
>>>>> ud.method.download(newuri, ud, ld)
>>>>> + open(ud.donestamp, 'w').close()
>>>>> if hasattr(ud.method,"build_mirror_data"):
>>>>> ud.method.build_mirror_data(newuri, ud, ld)
>>>>>
>>>>> I think the call to open() that creates the .done stamp file should really
>>>>> be a call to the update_stamp() function. This is the only place checksums
>>>>> are being checked (as far as I can tell) and the fact that the .done file
>>>>> has already been created is getting in the way. I'd suggest a patch, but I don't
>>>>> understand enough of the context to figure out the parameters to call update_stamp() with
>>>>> [parameters named u, ud&   d don't help me much]
>>>>
>>>> This is still broken, both in master (04d6aa1) and 1.2_M4.rc4 (4d9f4d6)
>>>> Filed as https://bugzilla.yoctoproject.org/show_bug.cgi?id=2311
>>>
>>> Does this help?:
>>>
>>> bitbake/fetch2: Ensure directly mirrored files have their checksum validated
>>>
>>> Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>>> ---
>>> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
>>> index 414cc2b..e36d3ec 100644
>>> --- a/bitbake/lib/bb/fetch2/__init__.py
>>> +++ b/bitbake/lib/bb/fetch2/__init__.py
>>> @@ -477,7 +477,10 @@ def try_mirrors(d, origud, mirrors, check = False):
>>>                if not os.path.exists(ud.donestamp) or ud.method.need_update(newuri, ud, ld):
>>>                    ud.method.download(newuri, ud, ld)
>>>                    if os.path.exists(ud.localpath):
>>> -                    open(ud.donestamp, 'w').close()
>>> +                    if ud.localpath == origud.localpath:
>>> +                        update_stamp(newuri, origud, ld)
>>> +                    else:
>>> +                        open(ud.donestamp, 'w').close()
>>>                        if hasattr(ud.method,"build_mirror_data"):
>>>                            ud.method.build_mirror_data(newuri, ud, ld)
>>
>> It does fix the case when using DL_DIR, but own-mirrors is still broken.
>> Note: both used to work correctly.
>
> Can you give more details of the configuration please? Is this using
> file:// urls?

Here's what I use.  I've not tried any other transport method:
   SOURCE_MIRROR_URL ?= "file:///work/misc/Poky/sources/"
   INHERIT += "own-mirrors"

>
> For example in the bug you said you did "-c cleansstate" and I'd not
> expect that to recheck checksums, you'd need to use a "cleanall" for
> that.

I manually removed the ${BUILD}/downloads/busybox* - tarballs and stamps
to force it.  I didn't think to use cleanall.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

