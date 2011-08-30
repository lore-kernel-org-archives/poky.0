Return-Path: <akshat.embedded@gmail.com>
Received: from mail-pz0-f43.google.com (mail-pz0-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1D15E0124B
	for <poky@yoctoproject.org>; Tue, 30 Aug 2011 03:27:34 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk1 with SMTP id 1so11685122pzk.16
	for <poky@yoctoproject.org>; Tue, 30 Aug 2011 03:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8HTDG5HJZbT9xx6VS/fQtbWpdUrrjvUAeR4trlhdk+k=;
	b=W4AS8P+N725jZMokjaSX7s0TVS1SyUgGoI173g85fE5hOLNR7bp8jZ/qgVKZS29DJl
	sU33Tkn3XiAQS4GM7R4zxGuvWjl9+sCHRVk/Th+PR9HiLfrr5fa5VPsOiNU9RtpvqmCo
	jNtWnL/EnRt0okq91UqcCByk8yslZcHrfjWA0=
MIME-Version: 1.0
Received: by 10.142.52.21 with SMTP id z21mr654126wfz.14.1314700054271; Tue,
	30 Aug 2011 03:27:34 -0700 (PDT)
Received: by 10.142.127.6 with HTTP; Tue, 30 Aug 2011 03:27:34 -0700 (PDT)
In-Reply-To: <1314696866.5939.306.camel@rex>
References: <CAJrrM567cYtH6C--o=eZtsObmkqfUU=MROTvKnquDEY=o2-N0Q@mail.gmail.com>
	<1314696866.5939.306.camel@rex>
Date: Tue, 30 Aug 2011 15:57:34 +0530
Message-ID: <CAJrrM54=ERn4W-KRLUS408p2YYL7Y4SVHJ8gVJeUTcHJriw0=g@mail.gmail.com>
From: Akshat Saha <akshat.embedded@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: Error Executing Binaries in Sugarbay Machine
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
X-List-Received-Date: Tue, 30 Aug 2011 10:27:35 -0000
Content-Type: multipart/alternative; boundary=000e0cd28f1cb898d404abb675c9

--000e0cd28f1cb898d404abb675c9
Content-Type: text/plain; charset=ISO-8859-1

Yes, ld-linux-x86-64.so.2 is present but in /lib. There is no directory as
/lib64.

On Tue, Aug 30, 2011 at 3:04 PM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Tue, 2011-08-30 at 11:41 +0530, Akshat Saha wrote:
> > HI,
> >
> > I am facing the following error while trying to execute some
> > dynamically linked binaries. Also find the readelf, strace and ldd
> > logs attached with respect to "file" command.
> >
> > ERROR: -sh: file: not found
> >
> >
> > Please help me find the solution.
>
> A long shot but does /lib64/ld-linux-x86-64.so.2 exist on your system?
>
> Cheers,
>
> Richard
>
>
>


-- 
Akshat

--000e0cd28f1cb898d404abb675c9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Yes, ld-linux-x86-64.so.2 is present but in /lib. There is no directory as =
/lib64.<br><br><div class=3D"gmail_quote">On Tue, Aug 30, 2011 at 3:04 PM, =
Richard Purdie <span dir=3D"ltr">&lt;<a href=3D"mailto:richard.purdie@linux=
foundation.org">richard.purdie@linuxfoundation.org</a>&gt;</span> wrote:<br=
>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div><div></div><div class=3D"h5">On Tue, 2=
011-08-30 at 11:41 +0530, Akshat Saha wrote:<br>
&gt; HI,<br>
&gt;<br>
&gt; I am facing the following error while trying to execute some<br>
&gt; dynamically linked binaries. Also find the readelf, strace and ldd<br>
&gt; logs attached with respect to &quot;file&quot; command.<br>
&gt;<br>
&gt; ERROR: -sh: file: not found<br>
&gt;<br>
&gt;<br>
&gt; Please help me find the solution.<br>
<br>
</div></div>A long shot but does /lib64/ld-linux-x86-64.so.2 exist on your =
system?<br>
<br>
Cheers,<br>
<font color=3D"#888888"><br>
Richard<br>
<br>
<br>
</font></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div>=
<span style=3D"color:rgb(51, 51, 51);font-family:georgia, serif">Akshat=A0<=
/span></div><div><br></div><br>

--000e0cd28f1cb898d404abb675c9--
