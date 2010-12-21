Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C0D64C80039
	for <poky@lists.pokylinux.org>; Tue, 21 Dec 2010 09:29:41 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 7364216603D9; Tue, 21 Dec 2010 08:29:41 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id E8F0916603BF;
	Tue, 21 Dec 2010 08:29:39 -0700 (MST)
Message-ID: <4D10C7E3.6050307@mlbassoc.com>
Date: Tue, 21 Dec 2010 08:29:39 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D10C095.5040907@mlbassoc.com> <1292944575.25087.6170.camel@rex>
In-Reply-To: <1292944575.25087.6170.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: New fetch error
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
X-List-Received-Date: Tue, 21 Dec 2010 15:29:42 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 08:16 AM, Richard Purdie wrote:
> On Tue, 2010-12-21 at 07:58 -0700, Gary Thomas wrote:
>> While testing the recent sstate changes (commit 4cd40dbaa8aef7b6b9ff9ce892a576b802f4b1ec),
>> I ran across this error:
>>
>> NOTE: package linux-am-2.6.32-r0: task do_fetch: Started
>> NOTE: fetch http://www.mlbassoc.com/repos/public/linux-am-2.6.32.tar.bz2
>> ERROR: Task failed: Unknown fetch Error: local variable 'md5data' referenced before assignment
>> NOTE: package linux-am-2.6.32-r0: task do_fetch: Failed
>> ERROR: Task 5 (/work/local/poky-amltd/meta-amltd/packages/linux/linux-am_2.6.32.bb, do_fetch) failed with 256
>> ERROR: '/work/local/poky-amltd/meta-amltd/packages/linux/linux-am_2.6.32.bb' failed
>>
>> This is for a local kernel which previously built (today,
>> using the same Poky tree).  The problem occurred after I
>> ran 'bitbake virtual/kernel -c cleanall'
>>
>> Any ideas what caused this error?
>
> My fault, I've pushed a fix, sorry about that.

Yes, this is fixed, thanks.

Query: is 'cleanall' expected to also remove files from $DL_DIR?
It does so, but produces no notes about it (it's pretty verbose
about all the other files it deletes)

If this is the case, could there be a 'cleansstate' or some
such?  All I really wanted to do was force a complete rebuild
of a package, ignoring the local sstate files.  'cleanall'
gave me more than I bargained for.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

