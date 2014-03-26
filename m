Return-Path: <ricardo.ribalda@gmail.com>
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A197E00B72
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 06:21:55 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id n16so2534629oag.13
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 06:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=0VQR+sEDeSFY3HUh344cJcHaMA4Yv7sT12nI+Oi7PAc=;
	b=pnatNYElpd7rgmG2v5P7rN5glrrxl4A/ZhXrAiIr+03EwbmhtlDIIdDHP0RyYZN5Bi
	1SjNzqZqrCoOAtMEKEpQ6glCTj9TK/UdoDBXup+55x2azF97lZWdAO9xTtlJ+lM0vZ82
	aPMozcnXOmRkdQa9Rgzr7whbL/z3uh8pBmNDGbjfLEr/mx/+aJhKqO3U7rr3MirKWP1K
	H+s2TLluBFX7/Qy2kUfzRrlOCFLIxRNA1LRhwV4rD2aeDKQ0LFcKrqEUd5D40Xf4mMuy
	NImH+0HWdmUV7KIVU3vgTb5+nTD7sP1YGb/3ogrPWTZYEu+EGEw7HQVgcQOZ0hvZMN/p
	265g==
X-Received: by 10.60.162.7 with SMTP id xw7mr67503754oeb.13.1395840115274;
	Wed, 26 Mar 2014 06:21:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.116.194 with HTTP; Wed, 26 Mar 2014 06:21:34 -0700 (PDT)
In-Reply-To: <1395834164.24890.89.camel@ted>
References: <53329F23.8020307@visionaid.com>
	<CAJTo0LZUE-QAmPGysmwxCfxSajms8-VhWTXcunjMgW8bMAYNqw@mail.gmail.com>
	<5332B167.4060707@visionaid.com>
	<CAJTo0LYDjA0+R1LnkyXi7013uYwjZtoGWzbxE-+FJXuGpgLoaA@mail.gmail.com>
	<5332B833.2010402@visionaid.com> <5332B9F3.9020008@mlbassoc.com>
	<1395834164.24890.89.camel@ted>
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Wed, 26 Mar 2014 14:21:34 +0100
Message-ID: <CAPybu_0X_G+jUM3NHDtmc66q2rXshwDxFBWWc_aXJXDqDu8kew@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Wed, 26 Mar 2014 13:21:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello

Sorry, It is my fault. I ported a patch that I created for dora. I
dont have a running system on master.

Richard, thanks for your patch.

On Wed, Mar 26, 2014 at 12:42 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Wed, 2014-03-26 at 05:28 -0600, Gary Thomas wrote:
>> On 2014-03-26 05:21, Jeremy Powell wrote:
>> > On 26/03/14 11:06, Burton, Ross wrote:
>> >> On 26 March 2014 10:52, Jeremy Powell <jeremy@visionaid.com> wrote:
>> >>> On 26/03/14 10:14, Burton, Ross wrote:
>> >>>> On 26 March 2014 09:34, Jeremy Powell <jeremy@visionaid.com> wrote:
>> >>>>> I'm trying to build poky from the git master head, but there are several
>> >>>>> problems in the DpkgIndexer class in ./meta/lib/oe/package_manager.py
>> >>>> Can you file a bug for these issues please (reply here with the number
>> >>>> so it doesn't get lost).
>> >>>>
>> >>>> Ross
>> >>>
>> >>> Hi Ross - thanks for your reply. I've created an account on
>> >>> bugzilla.yoctoproject.org, but its not clear to me which product this bug
>> >>> would refer to. Meta-yocto or  OE-Core perhaps?
>> >> oe-core, component deployment.
>> >>
>> >> Ross
>> > Thanks again, I've opened a bug #6047:
>> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=6047
>> >
>> > I've also attached a patch to it which resolves the issue for me.
>>
>> It would be good if your bug report explains what is going wrong
>> (and why if you understand it), not just that "it fails and here's
>> the patch".  This will aid not only in understanding the problem but
>> also for future searches of the bugzilla database for similar issues.
>
> FWIW I've sent out some patches which address this problem and some
> others I spotted.
>
> Cheers,
>
> Richard
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



-- 
Ricardo Ribalda

