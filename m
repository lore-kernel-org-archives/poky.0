Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDD23E00B4C
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 04:28:45 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1A5F6F811F3; Wed, 26 Mar 2014 05:28:45 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 77F00F811F2;
	Wed, 26 Mar 2014 05:28:43 -0600 (MDT)
Message-ID: <5332B9F3.9020008@mlbassoc.com>
Date: Wed, 26 Mar 2014 05:28:51 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <53329F23.8020307@visionaid.com>	<CAJTo0LZUE-QAmPGysmwxCfxSajms8-VhWTXcunjMgW8bMAYNqw@mail.gmail.com>	<5332B167.4060707@visionaid.com>	<CAJTo0LYDjA0+R1LnkyXi7013uYwjZtoGWzbxE-+FJXuGpgLoaA@mail.gmail.com>
	<5332B833.2010402@visionaid.com>
In-Reply-To: <5332B833.2010402@visionaid.com>
X-Enigmail-Version: 1.5.2
Subject: Re: Poky core-image-minimal fails to build with package_deb
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 26 Mar 2014 11:28:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-03-26 05:21, Jeremy Powell wrote:
> On 26/03/14 11:06, Burton, Ross wrote:
>> On 26 March 2014 10:52, Jeremy Powell <jeremy@visionaid.com> wrote:
>>> On 26/03/14 10:14, Burton, Ross wrote:
>>>> On 26 March 2014 09:34, Jeremy Powell <jeremy@visionaid.com> wrote:
>>>>> I'm trying to build poky from the git master head, but there are several
>>>>> problems in the DpkgIndexer class in ./meta/lib/oe/package_manager.py
>>>> Can you file a bug for these issues please (reply here with the number
>>>> so it doesn't get lost).
>>>>
>>>> Ross
>>>
>>> Hi Ross - thanks for your reply. I've created an account on
>>> bugzilla.yoctoproject.org, but its not clear to me which product this bug
>>> would refer to. Meta-yocto or  OE-Core perhaps?
>> oe-core, component deployment.
>>
>> Ross
> Thanks again, I've opened a bug #6047:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=6047
> 
> I've also attached a patch to it which resolves the issue for me.

It would be good if your bug report explains what is going wrong
(and why if you understand it), not just that "it fails and here's
the patch".  This will aid not only in understanding the problem but
also for future searches of the bugzilla database for similar issues.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

