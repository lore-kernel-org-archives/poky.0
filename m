Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C88DDE013A8
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 17:14:33 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 45530F8124B; Tue, 10 Apr 2012 18:14:33 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id CA849F81248;
	Tue, 10 Apr 2012 18:14:27 -0600 (MDT)
Message-ID: <4F84CCE3.1060504@mlbassoc.com>
Date: Tue, 10 Apr 2012 18:14:27 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4F8493BB.5070400@mlbassoc.com> <1334100422.10826.99.camel@ted>
In-Reply-To: <1334100422.10826.99.camel@ted>
Cc: Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 11 Apr 2012 00:14:33 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-10 17:27, Richard Purdie wrote:
> On Tue, 2012-04-10 at 14:10 -0600, Gary Thomas wrote:
>> I'm not sure how, but this revision broke the checking of checksums:
>>
>> commit 3d69d9462d550ce4e00e14768cc616bc9ad7e8a5
>> Author: Richard Purdie<richard.purdie@linuxfoundation.org>
>> Date:   Fri Mar 23 14:52:23 2012 +0000
>>
>>       bitbake/fetch2: Ensure mirror tarballs have .done stamps so we don't redownload and corrupt them
>>
>>       [YOCTO #2154]
>>
>>       (Bitbake rev: 521d6b14151d3bf934b9597557f7ae46e50a3d7a)
>>
>>       Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>>
>> The attached log shows this failure - I've modified the busybox_1.19.4.bb
>> recipe to have incorrect checksums.  With revision 67c83a8, the failure
>> is correctly identified.  With revision 3d69d94, it is not.
>>
>> The error happens with direct downloads (using DL_DIR) and also
>> with a mirror setup (using own-mirrors).
>>
>> I've reviewed the change and I don't see how/why this happens.
>
> There was a patch just merged for something that sounds very similar. I
> was going to give you a link and realised something has gone wrong with
> the commit:
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=a46aafb8b27bd86d046385a569deee6b4c9b8bb6
>
> as its been squashed with a subsequent commit I had to resolve a
> conflict with.
>
> Regardless, could you see whether that change solves your problem
> please?

No change, sorry.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

