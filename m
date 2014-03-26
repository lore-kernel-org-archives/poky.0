Return-Path: <jeremy@visionaid.com>
Received: from n1plout04-02.prod.ams1.secureserver.net
	(n1plout04-02.prod.ams1.secureserver.net [188.121.53.2])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 155DFE00A44
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 04:21:37 -0700 (PDT)
Received: (qmail 5309 invoked from network); 26 Mar 2014 11:21:26 -0000
Received: from unknown (135.196.109.35)
	by n1plout04-02.prod.ams1.secureserver.net (188.121.53.2) with ESMTP;
	26 Mar 2014 11:21:26 -0000
Message-ID: <5332B833.2010402@visionaid.com>
Date: Wed, 26 Mar 2014 11:21:23 +0000
From: Jeremy Powell <jeremy@visionaid.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <53329F23.8020307@visionaid.com>
	<CAJTo0LZUE-QAmPGysmwxCfxSajms8-VhWTXcunjMgW8bMAYNqw@mail.gmail.com>
	<5332B167.4060707@visionaid.com>
	<CAJTo0LYDjA0+R1LnkyXi7013uYwjZtoGWzbxE-+FJXuGpgLoaA@mail.gmail.com>
In-Reply-To: <CAJTo0LYDjA0+R1LnkyXi7013uYwjZtoGWzbxE-+FJXuGpgLoaA@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 26 Mar 2014 11:21:41 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/03/14 11:06, Burton, Ross wrote:
> On 26 March 2014 10:52, Jeremy Powell <jeremy@visionaid.com> wrote:
>> On 26/03/14 10:14, Burton, Ross wrote:
>>> On 26 March 2014 09:34, Jeremy Powell <jeremy@visionaid.com> wrote:
>>>> I'm trying to build poky from the git master head, but there are several
>>>> problems in the DpkgIndexer class in ./meta/lib/oe/package_manager.py
>>> Can you file a bug for these issues please (reply here with the number
>>> so it doesn't get lost).
>>>
>>> Ross
>>
>> Hi Ross - thanks for your reply. I've created an account on
>> bugzilla.yoctoproject.org, but its not clear to me which product this bug
>> would refer to. Meta-yocto or  OE-Core perhaps?
> oe-core, component deployment.
>
> Ross
Thanks again, I've opened a bug #6047:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=6047

I've also attached a patch to it which resolves the issue for me.



