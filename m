Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07766E007AD; Mon,  6 Mar 2017 11:35:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58152E00724
	for <poky@yoctoproject.org>; Mon,  6 Mar 2017 11:35:38 -0800 (PST)
Received: by mail-qk0-f173.google.com with SMTP id y76so40077156qkb.0
	for <poky@yoctoproject.org>; Mon, 06 Mar 2017 11:35:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1FpuqLbPvTYKajXPmFo0PomUi/88OnVsjojcQylSsws=;
	b=Nhl2JPV1x4hwhqfnMvErdjbqD1oCDoFMiR/Vj0UrC3i4O+TJQhfdoqPbWNdyuyT/kJ
	ft/TFbZpqJIjLdcS1fK0LqIzpXlfg9NQa1+fWyd+LZnU+qh8PrxpuOiZj43o9mB8l6xd
	MSKBvgmuFh313Dqth7WG3/bgrIBYas0ORYX6vgk3bHxVQ9xmvnZ48YkN4rG2fcKBlP5D
	3tUUd8z9sz3JvaX/ZV3rtFegQPiBjMLPtLS2Pxl3g7G4m60faXvs8L4PNUXqIqAgpbDx
	O2kwgllVDnFxQMILwG8K96vTktr8NqEdsznWMLVSThw/EvMC7007pN+hcGwTrSCEE+C4
	P1Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1FpuqLbPvTYKajXPmFo0PomUi/88OnVsjojcQylSsws=;
	b=IxHBmFneYzX4uDS38xoPzCXQQAWy1FzbjrvhQ7+DLaNN9b0smqPOhwZYR7xEupa3Iq
	m7kh1rlew4af2RLM1UWHKSr0cVlbOnZmM7eTPo72zba6jCj20/10Y3B2vEuSLf4aMWqF
	KQEgRxAaFFMKVhdWqfoAAy7kqPIXzv73+jtw0QhR2s+k62nv+n95SIZU9SByst7/Oixl
	YwLmtlYWzAB5WV8coJYjrePFOkpHA5RYUbaH6M+EXh5SR2yd+r+aj1WcY87BNN8ghOc+
	l7RNhRQqu9kVNIOsA/du5ugMd4FG8IRt+1k/97rg/xFDxkmuNFijlFCniJ8pHAgFe2Uv
	NEPg==
X-Gm-Message-State: AMke39kzk/N7XBTWtbxhNr+EJFv2EPTYfrMpsmVqVoQnJdHpyzGALAaacIkvfONAP+s5Dgg5Wz2GpzO25TqtvJxu
X-Received: by 10.55.192.145 with SMTP id v17mr18171712qkv.3.1488828938351;
	Mon, 06 Mar 2017 11:35:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 6 Mar 2017 11:35:17 -0800 (PST)
In-Reply-To: <20170306185049.421a2ba0@d-jobol.iot.bzh>
References: <20170306185049.421a2ba0@d-jobol.iot.bzh>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 6 Mar 2017 19:35:17 +0000
Message-ID: <CAJTo0LY57sm2QWzhUVG2VwawnAb3-CwStCjUiyGrTnyhs1vTdw@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Bollo?= <jose.bollo@iot.bzh>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] shadow: use config 'attr' if distro has 'xattr'
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
X-List-Received-Date: Mon, 06 Mar 2017 19:35:41 -0000
Content-Type: multipart/alternative; boundary=001a1149a1c2008b09054a15005d

--001a1149a1c2008b09054a15005d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 6 March 2017 at 17:50, Jos=C3=A9 Bollo <jose.bollo@iot.bzh> wrote:

> When DISTRO_FEATURES has 'xattr' the shadow package
> now automatically activates its config 'attr'.
> The current implmentation is a copy of what is
> made currently for libcap.
>

The formatting of the patch is a bit messed up (looks like you
copy/pasted), and can you send this to
openembedded-core@lists.openembedded.org instead please.

Ross

--001a1149a1c2008b09054a15005d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 March 2017 at 17:50, Jos=C3=A9 Bollo <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jose.bollo@iot.bzh" target=3D"_blank">jose.bollo@iot.bzh</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1wy" class=3D"a3s =
aXjCH m15aa4bf66c4b911a">When DISTRO_FEATURES has &#39;xattr&#39; the shado=
w package<br>
now automatically activates its config &#39;attr&#39;.<br>
The current implmentation is a copy of what is<br>
made currently for libcap.</div></blockquote></div><br>The formatting of th=
e patch is a bit messed up (looks like you copy/pasted), and can you send t=
his to <a href=3D"mailto:openembedded-core@lists.openembedded.org">openembe=
dded-core@lists.openembedded.org</a> instead please.</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1149a1c2008b09054a15005d--
