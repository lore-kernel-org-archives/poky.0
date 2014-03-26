Return-Path: <jeremy@visionaid.com>
Received: from n1plsmtpa01-01.prod.ams1.secureserver.net
	(n1plsmtpa01-01.prod.ams1.secureserver.net [188.121.53.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95A4BE00B6A
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 04:42:10 -0700 (PDT)
Received: from [10.31.15.100] ([135.196.109.35])
	by n1plsmtpa01-01.prod.ams1.secureserver.net with 
	id iBi51n00D0lrq4v01Bi5H8; Wed, 26 Mar 2014 04:42:06 -0700
Message-ID: <5332BD0B.4090206@visionaid.com>
Date: Wed, 26 Mar 2014 11:42:03 +0000
From: Jeremy Powell <jeremy@visionaid.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>, poky@yoctoproject.org
References: <53329F23.8020307@visionaid.com>	<CAJTo0LZUE-QAmPGysmwxCfxSajms8-VhWTXcunjMgW8bMAYNqw@mail.gmail.com>	<5332B167.4060707@visionaid.com>	<CAJTo0LYDjA0+R1LnkyXi7013uYwjZtoGWzbxE-+FJXuGpgLoaA@mail.gmail.com>	<5332B833.2010402@visionaid.com>
	<5332B9F3.9020008@mlbassoc.com>
In-Reply-To: <5332B9F3.9020008@mlbassoc.com>
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
X-List-Received-Date: Wed, 26 Mar 2014 11:42:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 26/03/14 11:28, Gary Thomas wrote:
> On 2014-03-26 05:21, Jeremy Powell wrote:
>> On 26/03/14 11:06, Burton, Ross wrote:
>>> On 26 March 2014 10:52, Jeremy Powell <jeremy@visionaid.com> wrote:
>>>> On 26/03/14 10:14, Burton, Ross wrote:
>>>>> On 26 March 2014 09:34, Jeremy Powell <jeremy@visionaid.com> wrote:
>>>>>> I'm trying to build poky from the git master head, but there are several
>>>>>> problems in the DpkgIndexer class in ./meta/lib/oe/package_manager.py
>>>>> Can you file a bug for these issues please (reply here with the number
>>>>> so it doesn't get lost).
>>>>>
>>>>> Ross
>>>> Hi Ross - thanks for your reply. I've created an account on
>>>> bugzilla.yoctoproject.org, but its not clear to me which product this bug
>>>> would refer to. Meta-yocto or  OE-Core perhaps?
>>> oe-core, component deployment.
>>>
>>> Ross
>> Thanks again, I've opened a bug #6047:
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=6047
>>
>> I've also attached a patch to it which resolves the issue for me.
> It would be good if your bug report explains what is going wrong
> (and why if you understand it), not just that "it fails and here's
> the patch".  This will aid not only in understanding the problem but
> also for future searches of the bugzilla database for similar issues.
>
Hi - I've added comments to address this

