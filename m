Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id D21BF4C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 16:34:18 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 921E61660552; Tue, 21 Dec 2010 15:34:17 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 39E261660524;
	Tue, 21 Dec 2010 15:34:16 -0700 (MST)
Message-ID: <4D112B68.10303@mlbassoc.com>
Date: Tue, 21 Dec 2010 15:34:16 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D10CB88.4040308@mlbassoc.com> <4D10D857.8080906@intel.com>	
	<4D10F862.5040302@mlbassoc.com> <1292966869.25087.6574.camel@rex>
In-Reply-To: <1292966869.25087.6574.camel@rex>
Cc: poky@yoctoproject.org
Subject: Re: Write-protect $DL_DIR
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
X-List-Received-Date: Tue, 21 Dec 2010 22:34:19 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 02:27 PM, Richard Purdie wrote:
> On Tue, 2010-12-21 at 11:56 -0700, Gary Thomas wrote:
>> On 12/21/2010 09:39 AM, Scott Garman wrote:
>>> On 12/21/2010 07:45 AM, Gary Thomas wrote:
>>>> In my quest for a well-packaged Poky that I can distribute
>>>> to my customers, I'd like to give them a pre-populated $DL_DIR
>>>> tree (also in response to those customers that have little or
>>>> no net access). This would likely be in /opt/XYZ and practice
>>>> would dictate that it be read-only.
>>>>
>>>> Sadly, this doesn't work. When I try to build Poky with a
>>>> read-only $DL_DIR, it simply hangs on every 'fetch' step.
>>>>
>>>> Note: I could avoid this problem (although I think it's a
>>>> bug even if it should never be experienced) by being able
>>>> to easily provide source mirrors for the packages. So far,
>>>> I've not figured out how to do this; I'd like to add my
>>>> own mirror lists, similar to those in meta/classes/poky.bbclass
>>>> Would this be a way forward? If so, how?
>>>>
>>>> Thanks for any ideas
>>>
>>> Hi Gary,
>>>
>>> Being able to do this is an important priority. Please file a bug to
>> track it if there isn't a current workaround.
>>
>> Done, bug #606.
>
> Sorry but this isn't what is being asked and I don't think that bug is
> reasonable. DL_DIR needs to be writeable. You can implement a readonly
> mirror just fine without requiring that so we have what I think is a
> very reasonable way to solve the problem.

>> I'll also look at Richard's new support for MIRRORS/PREMIRRORS
>> to see how to make it work for my environment.
>
> Please do this and report back on how you get one. I'm fine with
> documenting this and making things clearer. Turning DL_DIR into some new
> mirror and having a new writable area for state information isn't the
> right way to solve this problem though when we have mirror handling for
> exactly this kind of use case already.

I understand that these are really [now] two separate things.
I had been trying to use $DL_DIR as a pure mirror, but your change
of today will make that no longer necessary.

I went ahead and filed the bug about a read-only $DL_DIR because
it causes the build to hang/build silently which could cause confusion.
The build should either fail at fetch time with a message or be
sanity checked.

I've tried your changes and they solve my problem well, thanks.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

