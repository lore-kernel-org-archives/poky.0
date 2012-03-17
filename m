Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92B11E01206
	for <poky@yoctoproject.org>; Sat, 17 Mar 2012 06:03:05 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id EFE98F812CB; Sat, 17 Mar 2012 07:03:04 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B3753F812CA;
	Sat, 17 Mar 2012 07:02:48 -0600 (MDT)
Message-ID: <4F648B78.8070108@mlbassoc.com>
Date: Sat, 17 Mar 2012 07:02:48 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4F63546E.4000407@mlbassoc.com> <4F635D1A.2030304@mlbassoc.com>
	<4F638691.6020803@mlbassoc.com> <1331941648.18586.213.camel@ted>
In-Reply-To: <1331941648.18586.213.camel@ted>
Cc: poky@yoctoproject.org
Subject: Re: Can't build web-webkit
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
X-List-Received-Date: Sat, 17 Mar 2012 13:03:05 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-16 17:47, Richard Purdie wrote:
> On Fri, 2012-03-16 at 12:29 -0600, Gary Thomas wrote:
>> On 2012-03-16 09:32, Gary Thomas wrote:
>>> On 2012-03-16 08:55, Gary Thomas wrote:
>>>> I'm getting an error fetching for meta/recipes-sato/web/web-webkit_git.bb
>>>> I tried running the clone by hand:
>>>>
>>>> $ git clone git://git.yoctoproject.org/web-webkit
>>>> Cloning into 'web-webkit'...
>>>> fatal: remote error: access denied or repository not exported: /web-webkit
>>
>> Filed as bug #2135
>>
>>>>
>>>> Query: I have a tar package of this (I built it yesterday! using only that)
>>>> Why is the fetcher trying to go to the network for it now?
>>>>
>>>> Note: if I populate ${BUILD}/downloads/git2/git.yoctoproject.org.web-webkit
>>>> from my tarball, the build succeeds without problems.
>>>
>>> It seems that something has changed in the fetcher (git) code
>>>
>>> I was previously using (which works with no network activity)
>>> commit 8f07bdc0a42dd7a7c3acf5d1b13220dbc98c8017
>>> Author: Richard Purdie<richard.purdie@linuxfoundation.org>
>>> Date: Wed Feb 29 16:27:21 2012 +0000
>>>
>>> Now I'm using (which fails)
>>> commit be0f9dd483af2a2f55b2ae8ef9ca172e7c90819c
>>> Author: Paul Eggleton<paul.eggleton@linux.intel.com>
>>> Date: Thu Mar 15 13:17:58 2012 +0000
>>>
>>> Any ideas where I should look?
>>>
>>
>> I've bisected this to this commit:
>>     commit 87ef82dead665ea8805ccbab8ef871dc20008701
>>     Author: Richard Purdie<richard.purdie@linuxfoundation.org>
>>     Date:   Tue Dec 6 22:20:11 2011 +0000
>>
>>       bitbake/fetch: Fix uri_replace
>>
>> Richard - Any ideas what might have broken in your changes?  Whatever this
>> change does, it breaks the use of a pre-staged tarball for git trees (at least)
>
> I think you've found the problem and I've applied the patch, thanks!
>
> Sorry about the C&P error in the commit.

No problem, after bisection it was pretty obvious.  Of course
bisecting 198 revisions where each test took around 20 minutes
was a bit trying...

Sadly, the actual clone error remains.  It was only exposed by
this error that made it happen unexpectedly.


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

