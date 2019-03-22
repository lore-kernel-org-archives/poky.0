Return-Path: <glenn.szejna@singlewire.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3697E00D2B; Fri, 22 Mar 2019 05:33:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69FE3E00994
	for <poky@yoctoproject.org>; Fri, 22 Mar 2019 05:33:55 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id f6so1557841iop.3
	for <poky@yoctoproject.org>; Fri, 22 Mar 2019 05:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=singlewire.com; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5w4oOd/RWrKWKwm9YkhZxZoGI0UEbN1lqlAhTPmQjFA=;
	b=WJ6nbl0McgFRfbtfwnwdl42XFDjK2v7ImiNIKIQ9XAUcxM8vX3ipmQ9qcjgI7fZ5WL
	bzg04Za5+5zkNOuHC6cRUIjCFMMiVNJTlchQT8VkFbk1NA46bI39Be3/fZON60DEbbxt
	lxljbtS0HXJ1aspaBhSwyDO+b6skFFE0VN0I8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5w4oOd/RWrKWKwm9YkhZxZoGI0UEbN1lqlAhTPmQjFA=;
	b=ClQ06APA9avPa8DYikiJZv8c5xa+t1wu8x5SZB/yy7zQzYE91s2IKrJ8m/DEuD3Usa
	Cishg0dTn3W2cW2Rm2ToCGc7h6BWri+byHxBtYRzQc1sbrY5Ej3pVMqjs7I9oEImTLhQ
	dewa3Q5rHWOtcpYu+QimIxcHRwtEBfn6qF5EFqdKbDspZE56Gho3ZsTMU6EqOlAxAAra
	d2u1dMINqYkSn1BF2Z4bhcfaWP0jgK7OG8FhYUS8dIjZ+u/R941x+3TJ8ydBgOdTvH3q
	nqOdNkEsKNRwM1ukF4q+XCzuipVRnn2BQLML8ClK8aFQwPWx8kvXVKNCDFvYpQDKbbVS
	zGXg==
X-Gm-Message-State: APjAAAWXp12fNj8F1vBkIn8vUl7Yv0jh+E5sodRR34ehjedr9Rk5Guz8
	tI5wUt/O21xcy/RSeZtdeerK/uF1dbpk3OwlrJcLTg==
X-Google-Smtp-Source: APXvYqx01Ucm4HwjtJMMrsJreERzVj3TK+jnEZhj5j+ZebNpF0AsYSA47EzYNwJJwsQBLnjala9FxyQAF0jn8i+dlpo=
X-Received: by 2002:a6b:d016:: with SMTP id x22mr6221000ioa.181.1553258034685; 
	Fri, 22 Mar 2019 05:33:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhK1XZaZ5veHutrrvnYx_90WabxTvzs=7jmQor8zHUQSKbuUg@mail.gmail.com>
	<944673105.770602.1553172939741.JavaMail.zimbra@inango-systems.com>
In-Reply-To: <944673105.770602.1553172939741.JavaMail.zimbra@inango-systems.com>
From: Glenn Szejna <glenn.szejna@singlewire.com>
Date: Fri, 22 Mar 2019 07:33:44 -0500
Message-ID: <CAEhK1XZJhwd-_FbLBu3rKFOvJD-k7ztrj8KzXdZHy0NbbWkKXg@mail.gmail.com>
To: Nikolai Merinov <n.merinov@inango-systems.com>
Cc: poky@yoctoproject.org
Subject: Re: For do_rootfs - basehash changed from 17... to 94... Variable TIME changed
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
X-List-Received-Date: Fri, 22 Mar 2019 12:33:56 -0000
Content-Type: multipart/alternative; boundary="000000000000670b810584ae1196"

--000000000000670b810584ae1196
Content-Type: text/plain; charset="UTF-8"

Hi Nikolai,

Thank you for your insight and information.  Your information helped us to
move forward and look for a solution to our problem in a different area of
the Yocto build process.

Best Regards & Thanks again,
Glenn

On Thu, Mar 21, 2019 at 7:55 AM Nikolai Merinov <
n.merinov@inango-systems.com> wrote:

> Hi Glenn,
>
> > In our recipe has the exclude line:
> > do_rootfs[vardepsexclude] = "TIME DATE DATETIME"
> >
> >
> > Why is bitbake depending on TIME when we have told it not to?
>
> Did you use the TIME variable directly in the "do_rootfs" function code?
> The "vardepsexclude" flag excludes only direct dependencies:
>
>     B = "test"
>     A = "${B}"
>     # Code on the following line will not work: There is no direct
> dependency from do_install to B.
>     # do_install[vardepsexclude] = "B"
>     # Code on the following line effectively remove value of B variable
> from do_install stamps:
>     A[vardepsexclude] = "B"
>     do_install () {
>       echo ${A}
>     }
>
> Regards,
> Nikolai
>
>

-- 
Glenn Szejna
Linux Embedded Systems Engineer - Madison
 glenn.szejna@singlewire.com

--000000000000670b810584ae1196
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Niko=
lai,</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Thank you for your in=
sight and information.=C2=A0 Your information helped us to move forward and=
 look for a solution to our problem in a different area of the Yocto build =
process.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Best Regards &amp=
; Thanks again,</div><div dir=3D"ltr">Glenn</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 21, 2019 at 7:=
55 AM Nikolai Merinov &lt;<a href=3D"mailto:n.merinov@inango-systems.com">n=
.merinov@inango-systems.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Hi Glenn, <br>
<br>
&gt; In our recipe has the exclude line: <br>
&gt; do_rootfs[vardepsexclude] =3D &quot;TIME DATE DATETIME&quot; <br>
&gt; <br>
&gt; <br>
&gt; Why is bitbake depending on TIME when we have told it not to? <br>
<br>
Did you use the TIME variable directly in the &quot;do_rootfs&quot; functio=
n code? The &quot;vardepsexclude&quot; flag excludes only direct dependenci=
es:<br>
<br>
=C2=A0 =C2=A0 B =3D &quot;test&quot;<br>
=C2=A0 =C2=A0 A =3D &quot;${B}&quot;<br>
=C2=A0 =C2=A0 # Code on the following line will not work: There is no direc=
t dependency from do_install to B.<br>
=C2=A0 =C2=A0 # do_install[vardepsexclude] =3D &quot;B&quot;<br>
=C2=A0 =C2=A0 # Code on the following line effectively remove value of B va=
riable from do_install stamps:<br>
=C2=A0 =C2=A0 A[vardepsexclude] =3D &quot;B&quot; <br>
=C2=A0 =C2=A0 do_install () { <br>
=C2=A0 =C2=A0 =C2=A0 echo ${A}<br>
=C2=A0 =C2=A0 }<br>
<br>
Regards, <br>
Nikolai <br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"color:rgb(51,51,=
51);font-family:calibri,sans-serif;font-size:12px">Glenn Szejna</span><br s=
tyle=3D"color:rgb(51,51,51);font-family:&quot;Source Sans Pro&quot;,Arial,H=
elvetica,sans-serif;font-size:14px"><span style=3D"color:rgb(51,51,51);font=
-family:calibri,sans-serif;font-size:12px">Linux=C2=A0</span><span style=3D=
"color:rgb(51,51,51);font-family:calibri,sans-serif;font-size:12px">Embedde=
d Systems Engineer - Madison</span><br style=3D"color:rgb(51,51,51);font-fa=
mily:&quot;Source Sans Pro&quot;,Arial,Helvetica,sans-serif;font-size:14px"=
><span style=3D"color:rgb(51,51,51);font-family:calibri,sans-serif;font-siz=
e:12px">=C2=A0<a href=3D"mailto:glenn.szejna@singlewire.com" style=3D"color=
:rgb(17,85,204)" target=3D"_blank">glenn.szejna@singlewire.com</a><br></spa=
n><br style=3D"color:rgb(51,51,51);font-family:&quot;Source Sans Pro&quot;,=
Arial,Helvetica,sans-serif;font-size:14px"><br></div></div></div></div>

--000000000000670b810584ae1196--
