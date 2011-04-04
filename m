Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD2524C8026D
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 08:36:24 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 49B7516605A0; Mon,  4 Apr 2011 07:36:24 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 01F1A1660500;
	Mon,  4 Apr 2011 07:36:16 -0600 (MDT)
Message-ID: <4D99C94F.3030004@mlbassoc.com>
Date: Mon, 04 Apr 2011 07:36:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: "Hatle, Mark" <mark.hatle@windriver.com>
References: <4D988A05.2070609@mlbassoc.com> <4D98D0EB.1070802@windriver.com>,
	<4D98D498.10905@mlbassoc.com>
	<FF920C20-664D-4F87-AD4D-079A35003054@windriver.com>
In-Reply-To: <FF920C20-664D-4F87-AD4D-079A35003054@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Missing debug info
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
X-List-Received-Date: Mon, 04 Apr 2011 13:36:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/04/2011 07:07 AM, Hatle, Mark wrote:
>
>
>
>
> On Apr 3, 2011, at 3:12 PM, "Gary Thomas"<gary@mlbassoc.com>  wrote:
>
>> On 04/03/2011 01:56 PM, Mark Hatle wrote:
>>> On 4/3/11 9:53 AM, Gary Thomas wrote:
>>>> I'm trying to debug some code which uses the openssl library, built from
>>>> the Poky mainline.  For some reason (not obvious to me), there is no debug
>>>> info for this library, which makes GDB pretty useless :-(
>>>>
>>>> (gdb) info sharedlibrary
>>>>   From        To          Syms Read   Shared Object Library
>>>> 0x40077790  0x4008f60c  Yes         /tmp/cobra_root/lib/ld-linux.so.3
>>>> 0x401abf80  0x401d57d8  Yes (*)     /tmp/cobra_root/usr/lib/libssl.so.0.9.8
>>>> 0x40225548  0x402cfbfc  Yes (*)     /tmp/cobra_root/usr/lib/libcrypto.so.0.9.8
>>>> 0x400f28f8  0x4010cf90  Yes         /tmp/cobra_root/usr/lib/libpcap.so.1
>>>> 0x40326340  0x4040e8d8  Yes         /tmp/cobra_root/lib/libc.so.6
>>>> 0x401278fc  0x40128614  Yes         /tmp/cobra_root/lib/libdl.so.2
>>>> (*): Shared library is missing debugging information.
>>>>
>>>> Any idea why these libraries don't have debg info?  how to get it?
>>>> Rebuilding that library with printf() is pretty tedious...
>>>>
>>>> Thanks
>>>>
>>>
>>> Do the libraries in question have corresponding -dbg package that are empty?  Or
>>> is there stuff in there, it's just incomplete?
>>>
>>> What I'm trying to understand is were these items stripped during the recipe
>>> build, or when they're supposed to be by the package.bbclass into the regular
>>> and dbg packages.
>>
>> Ah, interesting.  The openssl package does have a -dbg version, but not for
>> libopenssl nor libcrypto (which were built by the same source package).  Any
>> ideas how/why that happened?  I didn't see any magic in the build arguments,
>> but it's a pretty complex package so I might have missed something.
>>
>
> The dbg package is only provided for the corresponding source recipe.  So if libssl, libcrypto both come from the OpenSSL recipe, then installing the openssl-dbg package is the right answer.
>
>> Just to see what I could learn from this, I tried to install openssl-dbg and got this:
>>
>>   Downloading file:/home/local/p60_poky/tmp/deploy/ipk/armv7a/openssl-dbg_0.9.8p-r3_armv7a.ipk.
>>   openssl-dbg: unsatisfied recommendation for libcrypto-dbg
>>   openssl-dbg: unsatisfied recommendation for libssl-dbg
>
> This is a common problem that we'll need to address in a future release, but the dependency can be safely ignored.  There is no libcrypto/libssl dbg specific package.
>
>>   Installing openssl (0.9.8p-r3) to root...
>>   Downloading file:/home/local/p60_poky/tmp/deploy/ipk/armv7a/openssl_0.9.8p-r3_armv7a.ipk.
>>   Configuring openssl.
>>   Configuring openssl-dbg.
>
> If the openssl-dbg is installed then the corresponding files in the /usr/lib/.debug and /usr/src/debug should now exist and allow debugging on the target.
>
> When you start up gdb, you should see a message that it is loading the debug symbols.

Thanks for the explanation.  Perhaps this should be filed as a bug [enhancement]?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

