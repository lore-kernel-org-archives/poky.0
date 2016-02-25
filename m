Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C5F7E00D12; Thu, 25 Feb 2016 13:12:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56705E00D05
	for <poky@yoctoproject.org>; Thu, 25 Feb 2016 13:12:08 -0800 (PST)
Received: by mail-oi0-f50.google.com with SMTP id w5so48735664oie.3
	for <poky@yoctoproject.org>; Thu, 25 Feb 2016 13:12:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:references:in-reply-to:mime-version:thread-index:date
	:message-id:subject:to:content-type;
	bh=SAmbijYiDKbkYIQ2JI+nZEc3d5SY+rg12Bw/OopL2Gs=;
	b=Sf/GlZN3ykhmt1bpwTdC4Bg4PEVhE+VFsfFG+wFGNRuiG2EwcSa7xQgmwLjVvjgOcY
	Mht3v06wpd0ZeUC1B3oM3174gsJne0BwtT3wloIG76TB0/tJbvnVhXro9ugSxM8BxalF
	UIebjZNmTgZgR6uNS+No8sQm1RIE7USNzBIWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:references:in-reply-to:mime-version
	:thread-index:date:message-id:subject:to:content-type;
	bh=SAmbijYiDKbkYIQ2JI+nZEc3d5SY+rg12Bw/OopL2Gs=;
	b=dkEAnS29RVg7IKqucwU0ZquCGq4C48eLrBYec3VEtFps4lqFH6A6sU6LF38u1O8z9c
	tofmzmW3y9wurZrU5HECb780qKn+wLipwbyu+PWHhPAWCOsvwVJZcdMhbaOnLyup0Ydj
	s5xBuX/nuBi6h9SvhDGFZ7zxxlwuLsXLrwuNRE5KKhsMOMbJOVPbNf/gP+cC5IVLVkJJ
	gNqRIw/PuKeWICVfhY/QJmS8KnbNhB+RgH3T6XsTEaUbmfHPjFHFcCwrfoA4wO8/DF0n
	5rOQ3vaFX0LuVD81pocbf/zWScZHDTVl1ZKG//jvumz/TIN3G+F2OEPauAZSDCQV5aeT
	Dg5A==
X-Gm-Message-State: AG10YOT8nEuJlPAyBVl/xmzmF4SJaYLskoIcCpwPpOlXLYAI2W13O6pNB3JUZG3zGcg11rOZlvn06MKvDjXTZE8D
X-Received: by 10.202.81.147 with SMTP id f141mr33663535oib.85.1456434727887; 
	Thu, 25 Feb 2016 13:12:07 -0800 (PST)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
References: <782f4c4196c1be19342a12a8b784662b@mail.gmail.com>
	<1455830371.28376.97.camel@linuxfoundation.org>
	<CAHrpVsXD-FhB1pNkZqwLwWzY9L1R29LPvzUuWpz-U36hrmsZVQ@mail.gmail.com>
	46c98c026028a83af6db08652c8890b9@mail.gmail.com
In-Reply-To: 46c98c026028a83af6db08652c8890b9@mail.gmail.com
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQJRE0S6mY5oUxX8mID6WepOcWwa0ADZG76lAfqheDCeHKlcwIAKsSzw
Date: Thu, 25 Feb 2016 13:12:07 -0800
Message-ID: <7661cdecdca15a89489fdea84c4b0f63@mail.gmail.com>
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
X-List-Received-Date: Thu, 25 Feb 2016 21:12:13 -0000
Content-Type: multipart/alternative; boundary=001a113d739a98ca80052c9ea2bb

--001a113d739a98ca80052c9ea2bb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,



I enabled multilib like below in my conf file and named it =E2=80=98softfp=
=E2=80=99. I
didn=E2=80=99t realize it was going to create a separate sysroot for it and=
 also
that I could just enable it with a  different tuning, which makes it much
easier.



require conf/multilib.conf

MULTILIB_GLOBAL_VARIANTS =3D "lib32 lib64 libx32 softfp"

MULTILIBS =3D "multilib:softfp"

DEFAULTTUNE_virtclass-multilib-softfp =3D "cortexa9"



It works fine if I run my recipe as =E2=80=98bitbake softp-recipe=E2=80=99.=
 I added
BBCLASSEXTEND_append =3D " multilib:softfp" to the recipe but when I run it
as =E2=80=98bitbake recipe=E2=80=99 it doesn=E2=80=99t pick up multilib. It=
 looks like the
BBCLASSEXTEND is doing nothing. Is there anything else I need to add to the
recipe so that I don=E2=80=99t have to prefix the recipe name with softfp t=
o get
multilib? Or can I only get multilib by prefixing it?



Thanks.



*From:* Jonathan Richardson [mailto:jonathan.richardson@broadcom.com]
*Sent:* Thursday, February 18, 2016 5:58 PM
*To:* 'Richard Purdie'; 'poky@yoctoproject.org'
*Subject:* RE: [poky] gcc multilib



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

--001a113d739a98ca80052c9ea2bb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"><meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered m=
edium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div =
class=3D"WordSection1"><p class=3D"MsoNormal"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi=
,</span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span>=
</p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">I enabled multilib li=
ke below in my conf file and named it =E2=80=98softfp=E2=80=99. I didn=E2=
=80=99t realize it was going to create a separate sysroot for it and also t=
hat I could just enable it with a =C2=A0different tuning, which makes it mu=
ch easier. </span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0p=
t;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=
=A0</span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">require con=
f/multilib.conf</span></p><p class=3D"MsoNormal"><span style=3D"font-size:1=
1.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"=
>MULTILIB_GLOBAL_VARIANTS =3D &quot;lib32 lib64 libx32 softfp&quot;</span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">MULTILIBS =3D &quot;mu=
ltilib:softfp&quot;</span></p><p class=3D"MsoNormal"><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f4=
97d">DEFAULTTUNE_virtclass-multilib-softfp =3D &quot;cortexa9&quot;</span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span></p><p cl=
ass=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,&quot;sans-serif&quot;;color:#1f497d">It works fine if I run my reci=
pe as =E2=80=98bitbake softp-recipe=E2=80=99. I added BBCLASSEXTEND_append =
=3D &quot; multilib:softfp&quot; to the recipe but when I run it as =E2=80=
=98bitbake recipe=E2=80=99 it doesn=E2=80=99t pick up multilib. It looks li=
ke the BBCLASSEXTEND is doing nothing. Is there anything else I need to add=
 to the recipe so that I don=E2=80=99t have to prefix the recipe name with =
softfp to get multilib? Or can I only get multilib by prefixing it?</span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span></p><p cl=
ass=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks.</span></p><p class=3D"=
MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,=
&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span></p><div><div style=3D"b=
order:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in 0in 0in"><p cla=
ss=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahom=
a&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10=
.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Jonathan Richa=
rdson [mailto:<a href=3D"mailto:jonathan.richardson@broadcom.com">jonathan.=
richardson@broadcom.com</a>] <br><b>Sent:</b> Thursday, February 18, 2016 5=
:58 PM<br><b>To:</b> &#39;Richard Purdie&#39;; &#39;<a href=3D"mailto:poky@=
yoctoproject.org">poky@yoctoproject.org</a>&#39;<br><b>Subject:</b> RE: [po=
ky] gcc multilib</span></p></div></div><p class=3D"MsoNormal">=C2=A0</p><p =
class=3D"MsoNormal">Resending to include mailing list.</p><p class=3D"MsoNo=
rmal">=C2=A0</p><p class=3D"MsoNormal">I can change the binaries makefiles/=
recipes easily enough to take an alternate path to the soft fp libs (ie- /l=
ib-softfp) or whatever it turns out to be, as long as it&#39;s some oddball=
 location that isn&#39;t included in the standard CFLAGS search path. I&#39=
;d want the regular machine configuration to have /lib/libgcc.so with hard =
fp and then some other location can have the soft fp versions, I don&#39;t =
really care where that is as long as it exists and I can point to it. I ass=
ume it would be under the same sysroot. Are there any examples of this?</p>=
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span></p><p class=
=3D"MsoNormal">Thanks.<span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;color:#1f497d"></span></p><div><p class=
=3D"MsoNormal">=C2=A0</p><div><p class=3D"MsoNormal">On Thu, Feb 18, 2016 a=
t 1:19 PM, Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundat=
ion.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt; wrote=
:</p><p class=3D"MsoNormal">On Thu, 2016-02-18 at 12:01 -0800, Jonathan Ric=
hardson wrote:<br>&gt; We have a machine configured for hard floating point=
. This builds a<br>&gt; hard fp version of libgcc. We also have some bootlo=
aders and other<br>&gt; code that require libgcc but use soft fp. I would p=
refer to keep the<br>&gt; bootloaders using soft fp. Is there a way to conf=
igure libgcc to<br>&gt; produce both hard and soft fp versions of libraries=
? There are<br>&gt; multilib examples for 32 and 64 versions of libs but it=
=E2=80=99s not clear<br>&gt; to me how to specify other compiler options to=
 produce multiple<br>&gt; versions of the libraries.<br><br>The bigger ques=
tion you face is where these binaries expect your libgcc<br>and perhaps dyn=
amic loader to reside. Its straight forward enough to<br>configure the syst=
em to build two versions with different tunes but one<br>would need to live=
 in /lib and the other in /lib32 or some other /libXX<br>location. The way =
the multilib setup works, it doesn&#39;t really care<br>which configuration=
 you use for a given location.<br><br>Cheers,<br><br>Richard</p></div><p cl=
ass=3D"MsoNormal">=C2=A0</p></div></div></body></html>

--001a113d739a98ca80052c9ea2bb--
