Return-Path: <sreejith.naarakathil@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D076E00B71; Mon, 12 May 2014 04:27:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sreejith.naarakathil[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qc0-f170.google.com (unknown [209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 125E3E00AFD
	for <poky@yoctoproject.org>; Mon, 12 May 2014 04:27:47 -0700 (PDT)
Received: by mail-qc0-f170.google.com with SMTP id i8so7753300qcq.1
	for <poky@yoctoproject.org>; Mon, 12 May 2014 04:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PDBXjjLuAiiUYYum6l/z8iHstGlaPLLqfKNR7u4dHCs=;
	b=0eAz6NLuoocG2zion6W+EzCLS3a0pG2VbgEmr86A0Ra/BILgm1JF12XzTpCvCxgcP1
	HRmOIFwIrb7Ko0OFFCNOw6Y/H5qmVmj2d9a5euC13msXmWKcWz6cqZSpkotUCFQZ2ydc
	rQqtIZsbPFGqw/Co8M2B7MAfaKbe/V8neB6EWZ2IxfOgr+jkIj8G9AQIhTgDJgSQjWlM
	LsYKsARO+B83H61BbMeMD/wjeFsWa4tLVG2BvTZZ1ferCQT1XCl3pKT+Q0ON3HqXRdsZ
	KofYJiEOsKECc/10eAkKaXM+dzJwPI/SBUMNmKqvu5hM4cB2JWXcLBIE/yiW9eE6QsZ3
	xKXQ==
MIME-Version: 1.0
X-Received: by 10.229.58.68 with SMTP id f4mr37117749qch.18.1399894067050;
	Mon, 12 May 2014 04:27:47 -0700 (PDT)
Received: by 10.96.206.136 with HTTP; Mon, 12 May 2014 04:27:46 -0700 (PDT)
In-Reply-To: <CADFtRykHJu8-8pwR55HyxhWCy9E9KsM1NxGgGqgux4rAiqKzLQ@mail.gmail.com>
References: <CADFtRykSnQSPZ0rQqhpr8ehEWe19iCra1K03zYGTZiYn=u1nqw@mail.gmail.com>
	<1399629850.31891.81.camel@ted>
	<CADFtRykHJu8-8pwR55HyxhWCy9E9KsM1NxGgGqgux4rAiqKzLQ@mail.gmail.com>
Date: Mon, 12 May 2014 16:57:46 +0530
Message-ID: <CADFtRyn-d9ULV3uWHDVyO-50ZK16kcLPURS9ubvoQqxqGoc7wQ@mail.gmail.com>
From: Sreejith N <sreejith.naarakathil@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: Build error when building image for core-image-sato
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
X-List-Received-Date: Mon, 12 May 2014 11:27:53 -0000
Content-Type: multipart/alternative; boundary=001a113306b097192b04f9323ce2

--001a113306b097192b04f9323ce2
Content-Type: text/plain; charset=UTF-8

On Mon, May 12, 2014 at 9:24 AM, Sreejith N
<sreejith.naarakathil@gmail.com>wrote:

>
>
>
> On Fri, May 9, 2014 at 3:34 PM, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
>
>> On Fri, 2014-05-09 at 13:01 +0530, Sreejith N wrote:
>> > Hi,
>> >
>> >          I am new to yocto and trying to build my first image using
>> > the instructions in the quick start guide,
>> >
>> >
>> https://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html
>> >
>> >
>> > My build environment is Ubuntu 12.04.4 LTS. Build fails with the
>> > following errors,
>> >
>> > | i686-linux-libtool: link: (cd ".libs" && rm -f "libgettextsrc.so" &&
>> > ln -s "libgettextsrc-0.18.3.so" "libgettextsrc.so")
>> > | ../gnulib-lib/.libs/libgettextlib.so: undefined reference to
>> > `libiconv'
>> > | ../gnulib-lib/.libs/libgettextlib.so: undefined reference to
>> > `libiconv_open'
>> > | ../gnulib-lib/.libs/libgettextlib.so: undefined reference to
>> > `libiconv_close'
>> > | collect2: ld returned 1 exit status
>> >
>> >
>> > Any help in this regard is greatly appreciated.
>>
>> Can you tell us what configuration you used? This doesn't look like one
>> of our standard targets. A complete error log of the failed build would
>> be more helpful.
>>
>> I used 'bitbake -k core-image-sato' as mentioned in the quick start
> guide. I have attached the complete log from
> "poky/build/tmp/log/cooker/qemux86/" folder.
>
>
It seems there is a problem in my Ubuntu system - it has both libiconv and
iconv provided by glibc. I have two different 'iconv.h' files,
/usr/include/iconv.h (glibc)
/usr/local/include/iconv.h (GNU libiconv)

I renamed '/usr/local/include/iconv.h' and '/usr/local/bin/iconv' and
rebuilt the image. This solved the build error and I was able to run the
image under qemu.

BR
Sreejith

--001a113306b097192b04f9323ce2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On M=
on, May 12, 2014 at 9:24 AM, Sreejith N <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:sreejith.naarakathil@gmail.com" target=3D"_blank">sreejith.naarakathil=
@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><div=
 class=3D"gmail_extra"><div><div><br><br><div class=3D"gmail_quote">On Fri,=
 May 9, 2014 at 3:34 PM, Richard Purdie <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@l=
inuxfoundation.org</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div><div>On Fri, 2014-05=
-09 at 13:01 +0530, Sreejith N wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I am new to yocto and trying to buil=
d my first image using<br>
&gt; the instructions in the quick start guide,<br>
&gt;<br>
&gt; <a href=3D"https://www.yoctoproject.org/docs/current/yocto-project-qs/=
yocto-project-qs.html" target=3D"_blank">https://www.yoctoproject.org/docs/=
current/yocto-project-qs/yocto-project-qs.html</a><br>
&gt;<br>
&gt;<br>
&gt; My build environment is Ubuntu 12.04.4 LTS. Build fails with the<br>
&gt; following errors,<br>
&gt;<br>
&gt; | i686-linux-libtool: link: (cd &quot;.libs&quot; &amp;&amp; rm -f &qu=
ot;libgettextsrc.so&quot; &amp;&amp;<br>
&gt; ln -s &quot;<a href=3D"http://libgettextsrc-0.18.3.so" target=3D"_blan=
k">libgettextsrc-0.18.3.so</a>&quot; &quot;libgettextsrc.so&quot;)<br>
&gt; | ../gnulib-lib/.libs/libgettextlib.so: undefined reference to<br>
&gt; `libiconv&#39;<br>
&gt; | ../gnulib-lib/.libs/libgettextlib.so: undefined reference to<br>
&gt; `libiconv_open&#39;<br>
&gt; | ../gnulib-lib/.libs/libgettextlib.so: undefined reference to<br>
&gt; `libiconv_close&#39;<br>
&gt; | collect2: ld returned 1 exit status<br>
&gt;<br>
&gt;<br>
&gt; Any help in this regard is greatly appreciated.<br>
<br>
</div></div>Can you tell us what configuration you used? This doesn&#39;t l=
ook like one<br>
of our standard targets. A complete error log of the failed build would<br>
be more helpful.<br>
<br></blockquote></div></div></div>I used &#39;bitbake -k core-image-sato&#=
39; as mentioned in the quick start guide. I have attached the complete log=
 from &quot;poky/build/tmp/log/cooker/qemux86/&quot; folder. <br><br></div>

</div></blockquote><div>=C2=A0</div></div>It seems there is a problem in my=
 Ubuntu system - it has both libiconv and iconv provided by glibc. I have t=
wo different &#39;iconv.h&#39; files,<br>/usr/include/iconv.h (glibc)<br>/u=
sr/local/include/iconv.h (GNU libiconv)<br>

</div><div class=3D"gmail_extra"></div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">I renamed &#39;/usr/local/include/iconv.h&#39; =
and &#39;/usr/local/bin/iconv&#39; and rebuilt the image. This solved the b=
uild error and I was able to run the image under qemu.<br>
<br></div><div class=3D"gmail_extra">BR<br>Sreejith<br>
</div></div>

--001a113306b097192b04f9323ce2--
