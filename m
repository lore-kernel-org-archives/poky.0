Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC8FDE0079B; Mon,  4 Aug 2014 22:06:14 -0700 (PDT)
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
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2D3AE0078E
	for <poky@yoctoproject.org>; Mon,  4 Aug 2014 22:06:13 -0700 (PDT)
Received: by mail-ig0-f169.google.com with SMTP id r2so8301677igi.0
	for <poky@yoctoproject.org>; Mon, 04 Aug 2014 22:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=fmDLc0GSi5t/cyMJCYfUh7MFEqIO/+BVM966I9AzT4g=;
	b=f4po9YmYMitDHqPgfE9he32RnKDCZDVkNzTzD7iTfHOw8zJ4QvZ+w9bkR6uMtwkcG4
	FDrAsfNZPyO1Y/lB1ZsiihKW7dl6FkfuGY//km+qNKsOOfTGSc2qSUX2OIk+iotfI25/
	yh+C2JoR4q9H8wrr96pIpZy7iTRUT/N+LpD4biiVqcts4+JPOCLyYbqoVcxbfE8BcrYd
	NSq+gbb/Xlthhm7YRcz3lGFe7C65sv/EuRFzqXiFnkpuRfSdUSpd4M2NMkZibuxaTpiL
	hg/RDz91O7jV6TgAWFyq2Us3BuoezMS5pB1/7ByVF/jXQeCJ8ic5UFfxnNZ2Tm5DlQsm
	R71g==
MIME-Version: 1.0
X-Received: by 10.50.43.225 with SMTP id z1mr2795729igl.17.1407215170337; Mon,
	04 Aug 2014 22:06:10 -0700 (PDT)
Received: by 10.50.126.103 with HTTP; Mon, 4 Aug 2014 22:06:10 -0700 (PDT)
In-Reply-To: <30DC4EDFD798C94083F3E083754532CCC9B013@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCC9AAA9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407147842.6981.52.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCC9ADE9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<20140805022441.GB3867@haswell>
	<30DC4EDFD798C94083F3E083754532CCC9B013@G08CNEXMBPEKD02.g08.fujitsu.local>
Date: Mon, 4 Aug 2014 22:06:10 -0700
Message-ID: <CAMKF1soS9TDHD34wTCaQr1ZgTazZbF0u8u6dNKjgQzSzP4Sq9Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: "biannm@cn.fujitsu.com" <biannm@cn.fujitsu.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Question]Does poky rebuild source when only makefile was modified
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
X-List-Received-Date: Tue, 05 Aug 2014 05:06:14 -0000
Content-Type: multipart/alternative; boundary=089e010d8dd659c5f404ffdad0a4

--089e010d8dd659c5f404ffdad0a4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Monday, August 4, 2014, biannm@cn.fujitsu.com <biannm@cn.fujitsu.com>
wrote:

> > No, bitbake should take care of invalidated the affected tasks and
> redoing the tast and dependent task.
>
> Agree.
> Any suggestion to fix this problem.


Is there still a problem ? If yes then explain and we can try to solve it

>
> Regards
>  Bian
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com <javascript:;>]
> Sent: Tuesday, August 05, 2014 10:25 AM
> To: Bian, Naimeng/=E5=8D=9E =E4=B9=83=E7=8C=9B
> Cc: Richard Purdie; poky@yoctoproject.org <javascript:;>
> Subject: Re: [poky] [Question]Does poky rebuild source when only makefile
> was modified
>
> On 14-08-05 01:35:32, biannm@cn.fujitsu.com <javascript:;> wrote:
> > Thanks for your answer.
> > I had confirmed that tasks from the configure will be rebuild.
> > But the timestamp of source files doesn't have any change, although
> > do_compile task will be rebuild, the source files will not be rebuild.
> >
> > When we rebuild our project by make, we always do "make clean" firstly
> to make sure source files to be rebuild if only makefile have been change=
d.
> > Does it means we must do "bitbake xxx -c cleansstate" firstly if we
> > just modify bb file that changes libdir only.
>
> No, bitbake should take care of invalidated the affected tasks and redoin=
g
> the tast and dependent task.
>

--089e010d8dd659c5f404ffdad0a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Monday, August 4, 2014, <a href=3D"mailto:biannm@cn.fujitsu.com"=
>biannm@cn.fujitsu.com</a> &lt;<a href=3D"mailto:biannm@cn.fujitsu.com">bia=
nnm@cn.fujitsu.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
&gt; No, bitbake should take care of invalidated the affected tasks and red=
oing the tast and dependent task.<br>
<br>
Agree.<br>
Any suggestion to fix this problem.</blockquote><div><br></div><div>Is ther=
e still a problem ? If yes then explain and we can try to solve it=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">

<br>
Regards<br>
=C2=A0Bian<br>
<br>
-----Original Message-----<br>
From: Khem Raj [mailto:<a href=3D"javascript:;" onclick=3D"_e(event, &#39;c=
vml&#39;, &#39;raj.khem@gmail.com&#39;)">raj.khem@gmail.com</a>]<br>
Sent: Tuesday, August 05, 2014 10:25 AM<br>
To: Bian, Naimeng/=E5=8D=9E =E4=B9=83=E7=8C=9B<br>
Cc: Richard Purdie; <a href=3D"javascript:;" onclick=3D"_e(event, &#39;cvml=
&#39;, &#39;poky@yoctoproject.org&#39;)">poky@yoctoproject.org</a><br>
Subject: Re: [poky] [Question]Does poky rebuild source when only makefile w=
as modified<br>
<br>
On 14-08-05 01:35:32, <a href=3D"javascript:;" onclick=3D"_e(event, &#39;cv=
ml&#39;, &#39;biannm@cn.fujitsu.com&#39;)">biannm@cn.fujitsu.com</a> wrote:=
<br>
&gt; Thanks for your answer.<br>
&gt; I had confirmed that tasks from the configure will be rebuild.<br>
&gt; But the timestamp of source files doesn&#39;t have any change, althoug=
h<br>
&gt; do_compile task will be rebuild, the source files will not be rebuild.=
<br>
&gt;<br>
&gt; When we rebuild our project by make, we always do &quot;make clean&quo=
t; firstly to make sure source files to be rebuild if only makefile have be=
en changed.<br>
&gt; Does it means we must do &quot;bitbake xxx -c cleansstate&quot; firstl=
y if we<br>
&gt; just modify bb file that changes libdir only.<br>
<br>
No, bitbake should take care of invalidated the affected tasks and redoing =
the tast and dependent task.<br>
</blockquote>

--089e010d8dd659c5f404ffdad0a4--
