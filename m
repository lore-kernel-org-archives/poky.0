Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75443E00C00; Thu, 18 Feb 2016 17:58:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFA4BE00BB9
	for <poky@yoctoproject.org>; Thu, 18 Feb 2016 17:58:24 -0800 (PST)
Received: by mail-oi0-f47.google.com with SMTP id x21so2981104oix.2
	for <poky@yoctoproject.org>; Thu, 18 Feb 2016 17:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:references:in-reply-to:mime-version:thread-index:date
	:message-id:subject:to:content-type;
	bh=Fs2K+KmTXePEBZw3KgmjdORuBRwsm6UBxmntKcS/rQ4=;
	b=N7+vDWzwzxdU6B17wMrH2bsK7ntB046dBKBTCsN6AqTr6gBOWWULND+VNUr0fJ9DxP
	Hbb3fyB/FzOL37Lveb/o0c3Ja1T7yZt4v1DOMqnWWmOZhoxjnA7jACyz29JnZZctq+Q1
	DXzx6hB6HDrOBPMzNaP4abuas5MbcnCVDoOHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:references:in-reply-to:mime-version
	:thread-index:date:message-id:subject:to:content-type;
	bh=Fs2K+KmTXePEBZw3KgmjdORuBRwsm6UBxmntKcS/rQ4=;
	b=jDC+ICvC8NhgLkLY7Fq46H2UAxxevZ9kPcLcVUypA56Y5H2B+tBYZW146f96GCDXml
	hxA4ATyo4pIL71hJhDCpnWDXhmFkJBK69MuQw3eC++irL/6kuZhV2TF7zyHu/IoDrDDU
	SF+HDFQASizljWyJotrGM52OjibNatsSdjr6AZAfwWi7rfm3SS3Z5CkPAN41+GV8zaNu
	TESLmAhfXpckuP5+cAUYbPhQVFeOVMZuZOpciRv7PUyBjCwySrvov9XDnca/IdCnWsp1
	GB9bdHCz7Ajze9uijTYYsd8k+gksQcs8oow2MCcj7sYeO3BGVLyVMrggFzl9z0daCgYz
	iuFw==
X-Gm-Message-State: AG10YOQqHnFRtpYYkN6JICBsOmRWkxsR4cIe0U9qImNOvs+PKuWjqe7bPfmsj2rdMo5CvP9iWftsyaL323cmmve3
X-Received: by 10.202.81.73 with SMTP id f70mr3606610oib.129.1455847104260;
	Thu, 18 Feb 2016 17:58:24 -0800 (PST)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
References: <782f4c4196c1be19342a12a8b784662b@mail.gmail.com>
	<1455830371.28376.97.camel@linuxfoundation.org>
	<CAHrpVsXD-FhB1pNkZqwLwWzY9L1R29LPvzUuWpz-U36hrmsZVQ@mail.gmail.com>
In-Reply-To: <CAHrpVsXD-FhB1pNkZqwLwWzY9L1R29LPvzUuWpz-U36hrmsZVQ@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQJRE0S6mY5oUxX8mID6WepOcWwa0ADZG76lAfqheDCeHKlcwA==
Date: Thu, 18 Feb 2016 17:58:22 -0800
Message-ID: <46c98c026028a83af6db08652c8890b9@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
Subject: Re: gcc multilib
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
X-List-Received-Date: Fri, 19 Feb 2016 01:58:27 -0000
Content-Type: multipart/alternative; boundary=001a113d78667fcafc052c15d1d9

--001a113d78667fcafc052c15d1d9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Resending to include mailing list.



I can change the binaries makefiles/recipes easily enough to take an
alternate path to the soft fp libs (ie- /lib-softfp) or whatever it turns
out to be, as long as it's some oddball location that isn't included in the
standard CFLAGS search path. I'd want the regular machine configuration to
have /lib/libgcc.so with hard fp and then some other location can have the
soft fp versions, I don't really care where that is as long as it exists
and I can point to it. I assume it would be under the same sysroot. Are
there any examples of this?



Thanks.



On Thu, Feb 18, 2016 at 1:19 PM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

On Thu, 2016-02-18 at 12:01 -0800, Jonathan Richardson wrote:
> We have a machine configured for hard floating point. This builds a
> hard fp version of libgcc. We also have some bootloaders and other
> code that require libgcc but use soft fp. I would prefer to keep the
> bootloaders using soft fp. Is there a way to configure libgcc to
> produce both hard and soft fp versions of libraries? There are
> multilib examples for 32 and 64 versions of libs but it=E2=80=99s not cle=
ar
> to me how to specify other compiler options to produce multiple
> versions of the libraries.

The bigger question you face is where these binaries expect your libgcc
and perhaps dynamic loader to reside. Its straight forward enough to
configure the system to build two versions with different tunes but one
would need to live in /lib and the other in /lib32 or some other /libXX
location. The way the multilib setup works, it doesn't really care
which configuration you use for a given location.

Cheers,

Richard

--001a113d78667fcafc052c15d1d9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"><meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered m=
edium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div =
class=3D"WordSection1"><p class=3D"MsoNormal">Resending to include mailing =
list.</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">I can chan=
ge the binaries makefiles/recipes easily enough to take an alternate path t=
o the soft fp libs (ie- /lib-softfp) or whatever it turns out to be, as lon=
g as it&#39;s some oddball location that isn&#39;t included in the standard=
 CFLAGS search path. I&#39;d want the regular machine configuration to have=
 /lib/libgcc.so with hard fp and then some other location can have the soft=
 fp versions, I don&#39;t really care where that is as long as it exists an=
d I can point to it. I assume it would be under the same sysroot. Are there=
 any examples of this?</p><p class=3D"MsoNormal"><span style=3D"font-size:1=
1.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"=
>=C2=A0</span></p><p class=3D"MsoNormal">Thanks.<span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=
</span></p><div><p class=3D"MsoNormal">=C2=A0</p><div><p class=3D"MsoNormal=
">On Thu, Feb 18, 2016 at 1:19 PM, Richard Purdie &lt;<a href=3D"mailto:ric=
hard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoun=
dation.org</a>&gt; wrote:</p><p class=3D"MsoNormal">On Thu, 2016-02-18 at 1=
2:01 -0800, Jonathan Richardson wrote:<br>&gt; We have a machine configured=
 for hard floating point. This builds a<br>&gt; hard fp version of libgcc. =
We also have some bootloaders and other<br>&gt; code that require libgcc bu=
t use soft fp. I would prefer to keep the<br>&gt; bootloaders using soft fp=
. Is there a way to configure libgcc to<br>&gt; produce both hard and soft =
fp versions of libraries? There are<br>&gt; multilib examples for 32 and 64=
 versions of libs but it=E2=80=99s not clear<br>&gt; to me how to specify o=
ther compiler options to produce multiple<br>&gt; versions of the libraries=
.<br><br>The bigger question you face is where these binaries expect your l=
ibgcc<br>and perhaps dynamic loader to reside. Its straight forward enough =
to<br>configure the system to build two versions with different tunes but o=
ne<br>would need to live in /lib and the other in /lib32 or some other /lib=
XX<br>location. The way the multilib setup works, it doesn&#39;t really car=
e<br>which configuration you use for a given location.<br><br>Cheers,<br><b=
r>Richard</p></div><p class=3D"MsoNormal">=C2=A0</p></div></div></body></ht=
ml>

--001a113d78667fcafc052c15d1d9--
