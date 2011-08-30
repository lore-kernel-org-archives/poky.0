Return-Path: <akshat.embedded@gmail.com>
Received: from mail-pz0-f43.google.com (mail-pz0-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B78B8E0124B
	for <poky@yoctoproject.org>; Tue, 30 Aug 2011 05:12:30 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk1 with SMTP id 1so11847125pzk.16
	for <poky@yoctoproject.org>; Tue, 30 Aug 2011 05:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3tHAki+g5Lm8MWsIPTKGUWB/qjVPPzaYgO0DbwM1HC8=;
	b=sp6hG8+x5mccHfyeIRA2nI49vYluBkHRPIPMlJgJt9lryoiqblP3pCuI66bP5dMsZM
	7l6cVfLD5nxgn78dvv3BcPzOBP1y6tte1qfbx/a0uISwFEYgP+hgI1SBT3KtXtdGGy5u
	QPbMRi4b5j1JJxyktWA50KeNLD6juPVsRrg1w=
MIME-Version: 1.0
Received: by 10.142.49.14 with SMTP id w14mr2229491wfw.299.1314706350447; Tue,
	30 Aug 2011 05:12:30 -0700 (PDT)
Received: by 10.142.127.6 with HTTP; Tue, 30 Aug 2011 05:12:30 -0700 (PDT)
In-Reply-To: <CAJrrM55pnGUw6VemzdJkzcudaxmO-zFuzuQQ0ZDJXViEDSqNmA@mail.gmail.com>
References: <CAJrrM567cYtH6C--o=eZtsObmkqfUU=MROTvKnquDEY=o2-N0Q@mail.gmail.com>
	<1314696866.5939.306.camel@rex>
	<CAJrrM54=ERn4W-KRLUS408p2YYL7Y4SVHJ8gVJeUTcHJriw0=g@mail.gmail.com>
	<1314704306.5939.325.camel@rex>
	<CAJrrM55pnGUw6VemzdJkzcudaxmO-zFuzuQQ0ZDJXViEDSqNmA@mail.gmail.com>
Date: Tue, 30 Aug 2011 17:42:30 +0530
Message-ID: <CAJrrM55R7k5VnXkvrc924gHgi=yV5xJ8Xvq1min5=SECe=znnQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 30 Aug 2011 12:12:30 -0000
Content-Type: multipart/alternative; boundary=000e0cd2968e009b0404abb7ed67

--000e0cd2968e009b0404abb7ed67
Content-Type: text/plain; charset=ISO-8859-1

Thanks... it is done.. the problem was /lib64 only... :)

On Tue, Aug 30, 2011 at 5:28 PM, Akshat Saha <akshat.embedded@gmail.com>wrote:

> I am using 1.1_M3... built from scratch along with some added packages.
>
>
> On Tue, Aug 30, 2011 at 5:08 PM, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
>
>> On Tue, 2011-08-30 at 15:57 +0530, Akshat Saha wrote:
>> > Yes, ld-linux-x86-64.so.2 is present but in /lib. There is no
>> > directory as /lib64.
>>
>> That is your problem as the binaries have the /lib64 path encoded in
>> them. I suspect that if you created a symlink from /lib64 to /lib,
>> things would start working.
>>
>> Are you using master and if so, which revision and was it a build from
>> scratch?
>>
>> There have been a number of bugs in this area recently but they should
>> be fixed now...
>>
>> Cheers,
>>
>> Richard
>>
>>
>
>
> --
> Akshat
>
>
>


-- 
Akshat

--000e0cd2968e009b0404abb7ed67
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks... it is done.. the problem was /lib64 only... :)<br><br><div class=
=3D"gmail_quote">On Tue, Aug 30, 2011 at 5:28 PM, Akshat Saha <span dir=3D"=
ltr">&lt;<a href=3D"mailto:akshat.embedded@gmail.com">akshat.embedded@gmail=
.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">I am using=A01.1_M3... built from scratch a=
long with some added packages.<div><div></div><div class=3D"h5"><br><br><di=
v class=3D"gmail_quote">
On Tue, Aug 30, 2011 at 5:08 PM, Richard Purdie <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.=
purdie@linuxfoundation.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Tue, 2011-08-30 at 15:57 +0530, Aksh=
at Saha wrote:<br>
&gt; Yes, ld-linux-x86-64.so.2 is present but in /lib. There is no<br>
&gt; directory as /lib64.<br>
<br>
</div>That is your problem as the binaries have the /lib64 path encoded in<=
br>
them. I suspect that if you created a symlink from /lib64 to /lib,<br>
things would start working.<br>
<br>
Are you using master and if so, which revision and was it a build from<br>
scratch?<br>
<br>
There have been a number of bugs in this area recently but they should<br>
be fixed now...<br>
<br>
Cheers,<br>
<font color=3D"#888888"><br>
Richard<br>
<br>
</font></blockquote></div><br><br clear=3D"all"><div><br></div></div></div>=
-- <br><font color=3D"#888888"><div><span style=3D"color:rgb(51, 51, 51);fo=
nt-family:georgia, serif">Akshat=A0</span></div><div><br></div><br>
</font></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div>=
<span style=3D"color:rgb(51, 51, 51);font-family:georgia, serif">Akshat=A0<=
/span></div><div><br></div><br>

--000e0cd2968e009b0404abb7ed67--
