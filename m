Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8C00E0132F
	for <poky@yoctoproject.org>; Tue, 17 Apr 2012 09:59:55 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 46471F81233; Tue, 17 Apr 2012 10:59:55 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7B3B2F81231;
	Tue, 17 Apr 2012 10:59:45 -0600 (MDT)
Message-ID: <4F8DA181.9070005@mlbassoc.com>
Date: Tue, 17 Apr 2012 10:59:45 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4F8493BB.5070400@mlbassoc.com> <1334100422.10826.99.camel@ted>
	<4F84CCE3.1060504@mlbassoc.com> <4F84E00D.7030302@mlbassoc.com>
	<4F8D5F61.1010002@mlbassoc.com> <1334674913.616.98.camel@ted>
	<4F8D8A73.3030408@mlbassoc.com> <1334677494.616.101.camel@ted>
	<4F8D934D.9070704@mlbassoc.com> <1334679589.616.106.camel@ted>
In-Reply-To: <1334679589.616.106.camel@ted>
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
X-List-Received-Date: Tue, 17 Apr 2012 16:59:56 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-17 10:19, Richard Purdie wrote:
> On Tue, 2012-04-17 at 09:59 -0600, Gary Thomas wrote:
>> On 2012-04-17 09:44, Richard Purdie wrote:
>>> On Tue, 2012-04-17 at 09:21 -0600, Gary Thomas wrote:
>>>> On 2012-04-17 09:01, Richard Purdie wrote:
>>>>> On Tue, 2012-04-17 at 06:17 -0600, Gary Thomas wrote:
>>>>>> On 2012-04-10 19:36, Gary Thomas wrote:
>>>>>> This is still broken, both in master (04d6aa1) and 1.2_M4.rc4 (4d9f4d6)
>>>>>> Filed as https://bugzilla.yoctoproject.org/show_bug.cgi?id=2311
>>>>>
>>>>> Does this help?:
>>>>>
>>>>> bitbake/fetch2: Ensure directly mirrored files have their checksum validated
>>>>>
>>>>> Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>>>>> ---
>>>>> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
>>>>> index 414cc2b..e36d3ec 100644
>>>>> --- a/bitbake/lib/bb/fetch2/__init__.py
>>>>> +++ b/bitbake/lib/bb/fetch2/__init__.py
>>>>> @@ -477,7 +477,10 @@ def try_mirrors(d, origud, mirrors, check = False):
>>>>>                 if not os.path.exists(ud.donestamp) or ud.method.need_update(newuri, ud, ld):
>>>>>                     ud.method.download(newuri, ud, ld)
>>>>>                     if os.path.exists(ud.localpath):
>>>>> -                    open(ud.donestamp, 'w').close()
>>>>> +                    if ud.localpath == origud.localpath:
>>>>> +                        update_stamp(newuri, origud, ld)
>>>>> +                    else:
>>>>> +                        open(ud.donestamp, 'w').close()
>>>>>                         if hasattr(ud.method,"build_mirror_data"):
>>>>>                             ud.method.build_mirror_data(newuri, ud, ld)
>>>>
>>>> It does fix the case when using DL_DIR, but own-mirrors is still broken.
>>>> Note: both used to work correctly.
>>>
>>> Can you give more details of the configuration please? Is this using
>>> file:// urls?
>>
>> Here's what I use.  I've not tried any other transport method:
>>     SOURCE_MIRROR_URL ?= "file:///work/misc/Poky/sources/"
>>     INHERIT += "own-mirrors"
>
> Part of me wants to argue that its not expected to check checksums for
> file:// urls, as indicated for example by the code:
>
> def verify_checksum(u, ud, d):
>      [...]
>      if not ud.type in ["http", "https", "ftp", "ftps"]:
>          return
>
> but I can see a case for wanting to check the checksums I guess.

Well, it seems that the checksums are encouraged, if not required, these days.
I was just making sure that they actually work & in my opinion, it shouldn't
matter how you got the file, the checksums should still be checked and match.

>
> Perhaps this will work better?
>
> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
> index 414cc2b..329b5bc 100644
> --- a/bitbake/lib/bb/fetch2/__init__.py
> +++ b/bitbake/lib/bb/fetch2/__init__.py
> @@ -477,7 +477,6 @@ def try_mirrors(d, origud, mirrors, check = False):
>               if not os.path.exists(ud.donestamp) or ud.method.need_update(newuri, ud, ld):
>                   ud.method.download(newuri, ud, ld)
>                   if os.path.exists(ud.localpath):
> -                    open(ud.donestamp, 'w').close()
>                       if hasattr(ud.method,"build_mirror_data"):
>                           ud.method.build_mirror_data(newuri, ud, ld)
>
> @@ -492,12 +491,14 @@ def try_mirrors(d, origud, mirrors, check = False):
>               dldir = ld.getVar("DL_DIR", True)
>               if os.path.basename(ud.localpath) != os.path.basename(origud.localpath):
>                   dest = os.path.join(dldir, os.path.basename(ud.localpath))
> +                open(ud.donestamp, 'w').close()
>                   if not os.path.exists(dest):
>                       os.symlink(ud.localpath, dest)
>                   return None
>               # Otherwise the result is a local file:// and we symlink to it
>               if not os.path.exists(origud.localpath):
>                    os.symlink(ud.localpath, origud.localpath)
> +            update_stamp(newuri, origud, ld)
>               return ud.localpath
>
>           except bb.fetch2.NetworkAccess:

Sadly, this is much worse.  It even [somehow] reached "through" my
mirror setup and deleted the file on the backing store (i.e. the
file /work/misc/Poky/sources/busybox-1.19.4.tar.bz2 gets deleted
when the checksum fails even though it's part of the own-mirror)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

