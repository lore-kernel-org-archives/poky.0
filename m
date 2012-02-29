Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EEA2E013CC
	for <poky@yoctoproject.org>; Tue, 28 Feb 2012 23:26:01 -0800 (PST)
Received: by wgbdq13 with SMTP id dq13so1837347wgb.11
	for <poky@yoctoproject.org>; Tue, 28 Feb 2012 23:26:00 -0800 (PST)
Received-SPF: pass (google.com: domain of vishwasonu2000@gmail.com designates
	10.180.92.165 as permitted sender) client-ip=10.180.92.165; 
Authentication-Results: mr.google.com; spf=pass (google.com: domain of
	vishwasonu2000@gmail.com designates 10.180.92.165 as permitted
	sender) smtp.mail=vishwasonu2000@gmail.com;
	dkim=pass header.i=vishwasonu2000@gmail.com
Received: from mr.google.com ([10.180.92.165])
	by 10.180.92.165 with SMTP id cn5mr14689173wib.2.1330500360327
	(num_hops = 1); Tue, 28 Feb 2012 23:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=e2heZeFCUYlV4yYlpejLpzmO9rXzF7S4hhEkx6ILEVo=;
	b=iYUu4e06lzacNvR/7NSKafLGqewYK1RvIwUTSIa9J+pT3ixMum0T17x4ldRALXv++4
	NjsYRBC2MUfyUDh0DdigkZuDBIX34LKZA3mDFtzkP9R+1BcOpvbYkJKLzxywtzf0Rqn9
	BebggvYuG63rRqLkCKgsrxRnuDqnbBRmJBM14=
MIME-Version: 1.0
Received: by 10.180.92.165 with SMTP id cn5mr11711868wib.2.1330500359165; Tue,
	28 Feb 2012 23:25:59 -0800 (PST)
Received: by 10.180.14.106 with HTTP; Tue, 28 Feb 2012 23:25:59 -0800 (PST)
In-Reply-To: <CABRtByOfAeCkrnVJ8Y40HsrjXRaLjmOARb-hj4_B87EoeZ6XDQ@mail.gmail.com>
References: <CABRtByOfAeCkrnVJ8Y40HsrjXRaLjmOARb-hj4_B87EoeZ6XDQ@mail.gmail.com>
Date: Wed, 29 Feb 2012 12:55:59 +0530
Message-ID: <CABRtByOL_9OcbVRfu+pMpjYtjLj4M1hBUUWt-WC6RTb9o6yxiw@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
Subject: Re: glibc-2.12.1-r6: task do_package: Failed
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Feb 2012 07:26:01 -0000
Content-Type: multipart/alternative; boundary=f46d043c09264818a004ba154145

--f46d043c09264818a004ba154145
Content-Type: text/plain; charset=ISO-8859-1

Hi,
The error mentioned was generated on commenting the line ,
#currency_symbol      "<U20A1>" in file es_CR .
But the actual error was something like this :
************************
| NOTE: stdout:
| NOTE:
| NOTE: stderr:
| NOTE:
/home/poky_gigabyte_09Nov_xbmc/build/tmp/work/atom-poky-linux/glibc-2.12.1-r6/locale-tree//usr/share/i18n/locales/es_CR:56:
LC_MONETARY: unknown character in field `currency_symbol'
|
| ERROR: Function 'localedef returned an error' failed
NOTE: package glibc-2.12.1-r6: task do_package: Failed
************************




On Wed, Feb 29, 2012 at 10:27 AM, sonu vishwakarma <vishwasonu2000@gmail.com
> wrote:

> Hi ,
>
> I am building poky working on bernard branch on Ubuntu 10.10 ,64 bit host.
> I get the error in do_package in glibc-2.12  something like this :
>
> ********************************************************
> | NOTE: generating locale es_CR (UTF-8)
> | NOTE: cmd:
> | NOTE: stdout:
> | NOTE:
> | NOTE: stderr:
> | NOTE:
> /home/poky/build/tmp/work/atom-poky-linux/glibc-2.12.1-r6/locale-tree//usr/share/i18n/locales/es_CR:56:
> LC_MONETARY: syntax error
> | LC_MONETARY: field `currency_symbol' not defined
> |
> | ERROR: Function 'localedef returned an error' failed
> NOTE: package glibc-2.12.1-r6: task do_package: Failed
> **********************************************************
>
> I'm attaching the recipec 'glibc_2.12.1.bb' as well as the
> 'usr/share/i18n/locales/es_CR' for your reference.
> Can anyone help me out of this issue ????
> Thanks in advance.
>
> Regards
> Sonu Vishwakarma
>

--f46d043c09264818a004ba154145
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div>The error mentioned was generated on commenting the line ,=A0</div>=
<div>#currency_symbol =A0 =A0 =A0&quot;&lt;U20A1&gt;&quot; in file es_CR .<=
div>But the actual error was something like this :</div><div>**************=
**********</div>
<div>| NOTE: stdout:</div><div>| NOTE:</div><div>| NOTE: stderr:</div><div>=
| NOTE: /home/poky_gigabyte_09Nov_xbmc/build/tmp/work/atom-poky-linux/glibc=
-2.12.1-r6/locale-tree//usr/share/i18n/locales/es_CR:56: LC_MONETARY: unkno=
wn character in field `currency_symbol&#39;</div>
<div>|=A0</div><div>| ERROR: Function &#39;localedef returned an error&#39;=
 failed</div><div>NOTE: package glibc-2.12.1-r6: task do_package: Failed</d=
iv><div>************************</div><div><br></div><div><br></div><div>
<br></div><div><br><div class=3D"gmail_quote">On Wed, Feb 29, 2012 at 10:27=
 AM, sonu vishwakarma <span dir=3D"ltr">&lt;<a href=3D"mailto:vishwasonu200=
0@gmail.com">vishwasonu2000@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">
<span><span><div>Hi ,</div></span><span><div><span><br></span></div>I am bu=
ilding poky working on bernard branch on Ubuntu 10.10 ,64 bit host.</span><=
/span><div><div><span>I get the error in do_package in glibc-2.12 =A0someth=
ing like this :=A0</span></div>

<div><span><br></span></div><div><span>************************************=
********************</span></div><div><span>| NOTE: generating locale es_CR=
 (UTF-8)<div>
| NOTE: cmd:</div></span><span>| NOTE: stdout:</span><span><div><span><div>=
| NOTE:</div><div>| NOTE: stderr:</div><div>| NOTE: /home/poky/build/tmp/wo=
rk/atom-poky-linux/glibc-2.12.1-r6/locale-tree//usr/share/i18n/locales/es_C=
R:56: LC_MONETARY: syntax error</div>

<div>| LC_MONETARY: field `currency_symbol&#39; not defined</div><div>|=A0<=
/div><div>| ERROR: Function &#39;localedef returned an error&#39; failed</d=
iv><div>NOTE: package glibc-2.12.1-r6: task do_package: Failed</div><div>

**********************************************************</div><div><br></=
div><div>I&#39;m attaching the recipec &#39;<a href=3D"http://glibc_2.12.1.=
bb" target=3D"_blank">glibc_2.12.1.bb</a>&#39; as well as the &#39;usr/shar=
e/i18n/locales/es_CR&#39; for your reference.</div>

<div>Can anyone help me out of this issue ????=A0</div></span></div></span>=
<span>Thanks in advance.</span></div><div><span><br></span></div><div><span=
>Regards</span><span class=3D"HOEnZb"><font color=3D"#888888"><span><div>
<span><div>Sonu Vishwakarma=A0</div></span></div></span></font></span></div=
></div>
</blockquote></div><br></div></div>

--f46d043c09264818a004ba154145--
