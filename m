Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D920E00CFB; Mon, 14 Jan 2019 16:42:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7D49E00CE0
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 16:42:21 -0800 (PST)
Received: by mail-io1-f45.google.com with SMTP id b23so746889ios.10
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 16:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DuVZcMhX3KobqT6b5bdF7+sWxlMycUs4n6tTazNDqVk=;
	b=xiRFNPetPrPPpLsg4o9UKy3P1m6/cz8JNGjw6xb+OEmC/Wo32hQmmC3CWnsBpZWZB/
	2ghqtKRYSfSCCfozrxZBF0N4iGawkYNxnmrl4pIoalnvg9L0MmrO8w3PNuPvAVkuNxcC
	zFHPODft0WKcj1W7ErSZ16Rs4QkN/Zixecm5pf3j4Vu89kGgKpWbianMEHZnt8JYnLHK
	4Er1PetUTSEqbEpSgdma9pbGrTYVClnF8sEno8AW3Np2UCQ3WRmFZ872okQtoM8x75+z
	Pfotz8kEf//YmCEZab/ASmNv0uqWIif27gkssEMP4JXaGWdClNEewicENZE3knCbq5pB
	dUDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DuVZcMhX3KobqT6b5bdF7+sWxlMycUs4n6tTazNDqVk=;
	b=DMlKdA2Hle4mvc+bgPliempDAisvH/CzmZcad6MPDsPoc7ZnQz1q/PliLhvCKy2B3N
	DH7gZeljJoP6Qe+eL7ySB4FwlYDqa3iQnGe6fM9e4gFpNYY94IObWd92qAcaODCrTall
	wm7NVqpNU6UBcG8ltMD075StrhMYRzIXGPSvsRAD3rsMSlx7POePDiadj4hjLhOPTtH/
	dW7+K5l1la4gJmrmmhHNoROaPmtM3ZxrSmPXd0je+jyyBYCQcLEaHWEgQ9clzMJJdepD
	GenurRIJh1cN76Un3DxarjA6p55FV/aXeUrh/CnAaYNk3eT8lyowlXa7OyefRYI/c1vY
	6p6A==
X-Gm-Message-State: AJcUukfnuSavmR42vAmNHhdO0F1w5xZvPbFemHyT9WNJVKOH+fE8EeBb
	yca8cL7YgstAL6T4sDo/qCQdB/us02tYIYkH45Zwuw==
X-Google-Smtp-Source: ALg8bN55X621mc2ENd70MmeesHe+Vm7+ucH07CqPnsGOctXskrQqCz0AQzBr3O2rjCUUI9g3oYsWzN8nDJ8w8OpJpd8=
X-Received: by 2002:a6b:acc5:: with SMTP id v188mr668428ioe.20.1547512941109; 
	Mon, 14 Jan 2019 16:42:21 -0800 (PST)
MIME-Version: 1.0
References: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
	<CAJTo0LbZr=iAv7zgVtNAEDkVGL=MwgvFdEJHaakOqv0AgS5D=Q@mail.gmail.com>
	<F776005A-D6E7-4D5D-BE50-A2E80A405732@gmail.com>
	<CAJTo0LZ+VnFcD0GOarDbYGXz8dLUgr0Qc6MOt_ov7jFUfApX4w@mail.gmail.com>
	<40EBB072-485F-4099-99A6-CA4EB88A2F6D@gmail.com>
	<725EBE10-0967-4DE2-9116-E3C5EEE4582C@gmail.com>
In-Reply-To: <725EBE10-0967-4DE2-9116-E3C5EEE4582C@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 15 Jan 2019 00:42:10 +0000
Message-ID: <CAJTo0LY90e53Q1yQoqzYdC6V4Vo25eE99j5yeET+pmRAPDDSjA@mail.gmail.com>
To: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: thud systemd root home wrong
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
X-List-Received-Date: Tue, 15 Jan 2019 00:42:22 -0000
Content-Type: multipart/alternative; boundary="0000000000002409be057f746f94"

--0000000000002409be057f746f94
Content-Type: text/plain; charset="UTF-8"

On Mon, 14 Jan 2019 at 18:35, Jean-Francois Dagenais <
jeff.dagenais@gmail.com> wrote:

> > On Jan 14, 2019, at 1:18 PM, Jean-Francois Dagenais <
> jeff.dagenais@gmail.com> wrote:
> >
> > Were there any plans to submit this upstream? Seems a worthy mod.
> Although might not be a need for regular distros.
>
> I looked at it closer and does seem like its not upstream-able. At least,
> not in such a simple form.
>

Upstream have already rejected this, see the Upstream-Status header in the
(broken) patch.


> There are tests and units in the source tree which would need to by
> dynamically updated. On top of that, the man pages give some good arguments
> to keep root as "/root":
>

I'd say you can ignore the tests, but the rest shouldn't be *that* tricky.

If you're not going to fix this, could you please file a bug in
bugzilla.yoctoproject.org so this doesn't get forgotten about?

Thanks,
Ross

--0000000000002409be057f746f94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, 14 Jan 2019 at 18:35, Jean-Franco=
is Dagenais &lt;<a href=3D"mailto:jeff.dagenais@gmail.com">jeff.dagenais@gm=
ail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;b=
order-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex"=
>&gt; On Jan 14, 2019, at 1:18 PM, Jean-Francois Dagenais &lt;<a href=3D"ma=
ilto:jeff.dagenais@gmail.com" target=3D"_blank">jeff.dagenais@gmail.com</a>=
&gt; wrote:<br>
&gt; <br>
&gt; Were there any plans to submit this upstream? Seems a worthy mod. Alth=
ough might not be a need for regular distros.<br>
<br>
I looked at it closer and does seem like its not upstream-able. At least, n=
ot in such a simple form.<br></blockquote><div><br></div><div>Upstream have=
 already rejected this, see the Upstream-Status header in the (broken) patc=
h.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left=
-color:rgb(204,204,204);padding-left:1ex">
There are tests and units in the source tree which would need to by dynamic=
ally updated. On top of that, the man pages give some good arguments to kee=
p root as &quot;/root&quot;:<br></blockquote><div><br></div><div>I&#39;d sa=
y you can ignore the tests, but the rest shouldn&#39;t be *that* tricky.</d=
iv><div><br></div><div>If you&#39;re not going to fix this, could you pleas=
e file a bug in <a href=3D"http://bugzilla.yoctoproject.org">bugzilla.yocto=
project.org</a> so this doesn&#39;t get forgotten about?</div><div><br></di=
v><div>Thanks,</div><div>Ross</div></div></div>

--0000000000002409be057f746f94--
