Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B082E00CE7; Mon, 18 Apr 2016 04:37:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8868BE00931
	for <poky@yoctoproject.org>; Mon, 18 Apr 2016 04:37:35 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id x7so27039960qkd.3
	for <poky@yoctoproject.org>; Mon, 18 Apr 2016 04:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=10Fe8Qfaiz6FoZctUXk5sm1Z12Z586qTOLWUqpw7Ww0=;
	b=JfISULCyoXZjRvmKtXDSlOwyjsnh5U7RISQSZy5wxx8+VidmAZ1X/lvkyBVR1tcoUz
	tumYs0WhJCNDLfWP11KtNrLuPufR1FYvfb1S/iVJN7VUO/qGieAgi7wsKM4oiWQY0LCv
	1kwEto7lkDQPLMADVYtInOe/zW8r2JJMWfC2k7NO8vngxJh7PbOEn1NHIxIxL7SA5fTD
	O8Z969BjxKCl+K/aTskzikahFIJzDBVUHK/Qwqys2HCMG5mjNiPdUpgdPhe0W1UgnXiP
	9NzFFAs/6cVPsbXEG8LHH5q2/tTzQhGlOAuO4Q1Ny8xexo2aNextT6fwCgGB8CD2dERc
	HJow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=10Fe8Qfaiz6FoZctUXk5sm1Z12Z586qTOLWUqpw7Ww0=;
	b=BbwcmI9Rj7gVEK+OW49fhHj+lDreG90vXu4ujNlVsJT6bycNql6y6k0YgGIOfm3AuZ
	HkgQ7MSIy42W3fkJBO3TOYUA7i45nTugklnxVsIzrrJDRxnz/zygcluBy9T63AQRO7Qf
	VeiixcYJ6twAXv0sHUgWiS/1qeAT21Xz/GnbpkUZB0PTXYE8wYR6pDYitFeoTa+0VDwa
	ukda3PGXXtKd7q9Un7XRqK2JV8w4OMHd2eGeXGP/yFIF7kCTJTyYKcmqnVCpib8lKCEZ
	+Wsel3vf9bbrdlW1BpbmjKnKmFPwDPwxrXpZI1jQhuCoGjDuHe79vcEk501+3cRDF7yX
	mwIQ==
X-Gm-Message-State: AOPr4FUHhjFzGeICCazCK7M1SqvJ89RgQgiSz+xm4HXmPnUP1rNu57g+eXdFRMMfzE7qnaZlzJmgKdtHLPimjg==
MIME-Version: 1.0
X-Received: by 10.55.155.76 with SMTP id d73mr7434169qke.26.1460979454388;
	Mon, 18 Apr 2016 04:37:34 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Mon, 18 Apr 2016 04:37:34 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Mon, 18 Apr 2016 04:37:34 -0700 (PDT)
In-Reply-To: <57147456.3010707@windriver.com>
References: <cover.1460297985.git.liezhi.yang@windriver.com>
	<570B0354.7040201@windriver.com> <570B0E9A.90602@windriver.com>
	<570BA579.9040408@windriver.com> <57144AC0.4060606@windriver.com>
	<648F21BE-64DE-409C-8FC8-F93735E77A4D@gmail.com>
	<57147456.3010707@windriver.com>
Date: Mon, 18 Apr 2016 04:37:34 -0700
Message-ID: <CAMKF1spv-h62p7CAPsFmVXyoAo=mN6s4bskH80Txcpqru1pOSA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 4.4
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
X-List-Received-Date: Mon, 18 Apr 2016 11:37:38 -0000
Content-Type: multipart/alternative; boundary=94eb2c073c3e67355d0530c0c988

--94eb2c073c3e67355d0530c0c988
Content-Type: text/plain; charset=UTF-8

You are talking about different problem.
On Apr 17, 2016 10:44 PM, "Robert Yang" <liezhi.yang@windriver.com> wrote:

>
>
> On 04/18/2016 01:18 PM, Khem Raj wrote:
>
>>
>> On Apr 17, 2016, at 7:47 PM, Robert Yang <liezhi.yang@windriver.com>
>>> wrote:
>>>
>>>
>>>
>>> On 04/11/2016 09:24 PM, Bruce Ashfield wrote:
>>>
>>>> On 2016-04-10 10:40 PM, Robert Yang wrote:
>>>>
>>>>>
>>>>>
>>>>> On 04/11/2016 09:52 AM, Bruce Ashfield wrote:
>>>>>
>>>>>> On 2016-04-10 10:22 AM, Robert Yang wrote:
>>>>>>
>>>>>>> The following changes since commit
>>>>>>> 778121ab844af623a215430ba579a5fb3947928b:
>>>>>>>
>>>>>>>    local.conf.sample: Make it possible to override
>>>>>>> EXTRA_IMAGE_FEATURES
>>>>>>> (2016-04-09 23:00:46 +0100)
>>>>>>>
>>>>>>> are available in the git repository at:
>>>>>>>
>>>>>>>    git://git.pokylinux.org/poky-contrib rbt/kernel
>>>>>>>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/kernel
>>>>>>>
>>>>>>> Robert Yang (1):
>>>>>>>    poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 4.4
>>>>>>>
>>>>>>>
>>>>>> Can you provide some bootlogs ? Size information, etc ? When we jump
>>>>>> this between kernel versions, we need to log some sort of information
>>>>>> about functionality and the size of the image.
>>>>>>
>>>>>> I've been carrying this support forward, but in 4.4, we did change
>>>>>> some of the kernel configs, so it would be good to see what sort of
>>>>>> size delta we are talking about.
>>>>>>
>>>>>
>>>>> * Size:
>>>>> $ du -s tmp/deploy/images/qemux86/bzImage*
>>>>> 2664
>>>>>
>>>>> tmp/deploy/images/qemux86/bzImage--4.4.3+git0+770996a263_73481a3abd-r0-qemux86-20160411015757.bin
>>>>>
>>>>>
>>>>> 2572
>>>>>
>>>>> tmp/deploy/images/qemux86/bzImage--4.1.18+git0+b9023d4c8f_f5b08e95bc-r0-qemux86-20160411022834.bin
>>>>>
>>>>>
>>>>>
>>>>> We can see that 4.1 and 4.4 are nearly the same (92K different).
>>>>>
>>>>
>>>> Excellent. That is good news.
>>>>
>>>>
>>>>> And:
>>>>> $ runqemu qemux86 ramfs
>>>>> works well. Please see the boot logs in the attachment.
>>>>>
>>>>
>>>> perfect. Thanks!
>>>>
>>>>
>>>>> And poky-tiny only supports qemux86 + cpio.gz atm, I've filed two
>>>>> enhancements
>>>>> for YP 2.2 to support more machines and fs types:
>>>>>
>>>>>
>>>> As long as it doesn't add too much extra functionality, it makes sense.
>>>> Tiny turns pretty much everything off on purpose, since it forms a
>>>> baseline that we do expect users to extend or add their own configs. It
>>>> is much easier to add, then to subtract.
>>>>
>>>> Thanks for the extra details here. As long as RP is willing to merge
>>>> this patch for the 2.1 release, I have no objections.
>>>>
>>>
>>> Hi RP,
>>>
>>> What's you opinion, please ?
>>>
>>
>> We should bump to 4.4 and another patch which limits the linux-yocto to
>> qemux86 only
>> should be applied too so we can use poky-tiny beyond qemux86
>>
>
> Another patch had been merged already.
>
> commit 3ad70a599f78f645dc212ef7f5fa49ccce3ef1f7
> Author: Robert Yang <liezhi.yang@windriver.com>
> Date:   Mon Apr 11 01:53:21 2016 -0700
>
>     linux-yocto-tiny: fix COMPATIBLE_MACHINE
>
>     It only works with qemux86, but mismatched qemux86-64 which caused
>     runtime errros. (kernel is bigger, can't boot, no output, and so on).
>
>     Add '$' in the end to fix the problem.
>
>     (From OE-Core rev: 8069399d9fd29428b8f3d3db419b81913b57f997)
>
>     Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
>
> // Robert
>
>
>>
>>> // Robert
>>>
>>>
>>>
>>>> Bruce
>>>>
>>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9428
>>>>>
>>>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9429
>>>>>
>>>>> // Robert
>>>>>
>>>>>
>>>>>> Bruce
>>>>>>
>>>>>>   meta-poky/conf/distro/poky-tiny.conf | 2 +-
>>>>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>>
>>>>>>>
>>>>>>
>>>>>>
>>>>
>>>> --
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>
>>

--94eb2c073c3e67355d0530c0c988
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">You are talking about different problem.</p>
<div class=3D"gmail_quote">On Apr 17, 2016 10:44 PM, &quot;Robert Yang&quot=
; &lt;<a href=3D"mailto:liezhi.yang@windriver.com">liezhi.yang@windriver.co=
m</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br=
>
<br>
On 04/18/2016 01:18 PM, Khem Raj wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Apr 17, 2016, at 7:47 PM, Robert Yang &lt;<a href=3D"mailto:liezhi.yang@=
windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt; wrote:<b=
r>
<br>
<br>
<br>
On 04/11/2016 09:24 PM, Bruce Ashfield wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 2016-04-10 10:40 PM, Robert Yang wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
On 04/11/2016 09:52 AM, Bruce Ashfield wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 2016-04-10 10:22 AM, Robert Yang wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
The following changes since commit<br>
778121ab844af623a215430ba579a5fb3947928b:<br>
<br>
=C2=A0 =C2=A0local.conf.sample: Make it possible to override EXTRA_IMAGE_FE=
ATURES<br>
(2016-04-09 23:00:46 +0100)<br>
<br>
are available in the git repository at:<br>
<br>
=C2=A0 =C2=A0git://<a href=3D"http://git.pokylinux.org/poky-contrib" rel=3D=
"noreferrer" target=3D"_blank">git.pokylinux.org/poky-contrib</a> rbt/kerne=
l<br>
=C2=A0 =C2=A0<a href=3D"http://git.pokylinux.org/cgit.cgi/poky-contrib/log/=
?h=3Drbt/kernel" rel=3D"noreferrer" target=3D"_blank">http://git.pokylinux.=
org/cgit.cgi/poky-contrib/log/?h=3Drbt/kernel</a><br>
<br>
Robert Yang (1):<br>
=C2=A0 =C2=A0poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 4.4<=
br>
<br>
</blockquote>
<br>
Can you provide some bootlogs ? Size information, etc ? When we jump<br>
this between kernel versions, we need to log some sort of information<br>
about functionality and the size of the image.<br>
<br>
I&#39;ve been carrying this support forward, but in 4.4, we did change<br>
some of the kernel configs, so it would be good to see what sort of<br>
size delta we are talking about.<br>
</blockquote>
<br>
* Size:<br>
$ du -s tmp/deploy/images/qemux86/bzImage*<br>
2664<br>
tmp/deploy/images/qemux86/bzImage--4.4.3+git0+770996a263_73481a3abd-r0-qemu=
x86-20160411015757.bin<br>
<br>
<br>
2572<br>
tmp/deploy/images/qemux86/bzImage--4.1.18+git0+b9023d4c8f_f5b08e95bc-r0-qem=
ux86-20160411022834.bin<br>
<br>
<br>
<br>
We can see that 4.1 and 4.4 are nearly the same (92K different).<br>
</blockquote>
<br>
Excellent. That is good news.<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
And:<br>
$ runqemu qemux86 ramfs<br>
works well. Please see the boot logs in the attachment.<br>
</blockquote>
<br>
perfect. Thanks!<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
And poky-tiny only supports qemux86 + cpio.gz atm, I&#39;ve filed two<br>
enhancements<br>
for YP 2.2 to support more machines and fs types:<br>
<br>
</blockquote>
<br>
As long as it doesn&#39;t add too much extra functionality, it makes sense.=
<br>
Tiny turns pretty much everything off on purpose, since it forms a<br>
baseline that we do expect users to extend or add their own configs. It<br>
is much easier to add, then to subtract.<br>
<br>
Thanks for the extra details here. As long as RP is willing to merge<br>
this patch for the 2.1 release, I have no objections.<br>
</blockquote>
<br>
Hi RP,<br>
<br>
What&#39;s you opinion, please ?<br>
</blockquote>
<br>
We should bump to 4.4 and another patch which limits the linux-yocto to qem=
ux86 only<br>
should be applied too so we can use poky-tiny beyond qemux86<br>
</blockquote>
<br>
Another patch had been merged already.<br>
<br>
commit 3ad70a599f78f645dc212ef7f5fa49ccce3ef1f7<br>
Author: Robert Yang &lt;<a href=3D"mailto:liezhi.yang@windriver.com" target=
=3D"_blank">liezhi.yang@windriver.com</a>&gt;<br>
Date:=C2=A0 =C2=A0Mon Apr 11 01:53:21 2016 -0700<br>
<br>
=C2=A0 =C2=A0 linux-yocto-tiny: fix COMPATIBLE_MACHINE<br>
<br>
=C2=A0 =C2=A0 It only works with qemux86, but mismatched qemux86-64 which c=
aused<br>
=C2=A0 =C2=A0 runtime errros. (kernel is bigger, can&#39;t boot, no output,=
 and so on).<br>
<br>
=C2=A0 =C2=A0 Add &#39;$&#39; in the end to fix the problem.<br>
<br>
=C2=A0 =C2=A0 (From OE-Core rev: 8069399d9fd29428b8f3d3db419b81913b57f997)<=
br>
<br>
=C2=A0 =C2=A0 Signed-off-by: Robert Yang &lt;<a href=3D"mailto:liezhi.yang@=
windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt;<br>
=C2=A0 =C2=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.p=
urdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation=
.org</a>&gt;<br>
<br>
<br>
// Robert<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
// Robert<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9428" rel=3D=
"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.c=
gi?id=3D9428</a><br>
<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9429" rel=3D=
"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.c=
gi?id=3D9429</a><br>
<br>
// Robert<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
=C2=A0 meta-poky/conf/distro/poky-tiny.conf | 2 +-<br>
=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
</blockquote>
<br>
<br>
</blockquote></blockquote>
<br>
<br>
</blockquote>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote>
<br>
</blockquote>
</blockquote></div>

--94eb2c073c3e67355d0530c0c988--
