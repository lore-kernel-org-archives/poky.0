Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10FCEE00D23; Wed, 23 Dec 2015 06:39:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70376E007C3
	for <poky@yoctoproject.org>; Wed, 23 Dec 2015 06:39:35 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id p187so147427349wmp.0
	for <poky@yoctoproject.org>; Wed, 23 Dec 2015 06:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=OheuXhcg1gjsIUptFuJ1IMymrwxGZLY/RTKDxi9zS9E=;
	b=anN3PiXwU40kfsFX0XVXAqEpNvW8gtKgrTE4618Tj7kgIVfXZb9ksvwvqhfr1kVhu6
	3lUAmpSyi/Ekb82A4Pbik7Li/OcUZnV9k5DJAJNZnIH0+fpqYt1MM21nadbF13sRJHT/
	SiwXjjnDFxQdg8wryZCMQGJljb6wZul/IYH+KlXTNUTgtfWwxTY8igQVUbY5lVtKwHQr
	NHS5yycPYC7dJAG+7HExSTMECAKO79PQnO8C0ENoyIZyR+0ROIDF4MMD2gPMZmfPyX+I
	19Jwr12NHQEBepbSRn8euGEmffX+BRUMbvf7R+jdmRjZJslIt5U4MrYFuKXtzIS65QLv
	IPRg==
MIME-Version: 1.0
X-Received: by 10.28.136.149 with SMTP id k143mr33116674wmd.57.1450881574936; 
	Wed, 23 Dec 2015 06:39:34 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Wed, 23 Dec 2015 06:39:34 -0800 (PST)
In-Reply-To: <CAJTo0LbUDLJurQWx2bmhUHLyqbJ0NOMNKVZRnKr6dkqNvDhUHg@mail.gmail.com>
References: <CAA2DH4t7mWaM71LZGUqQ2xrqqdFEoKmVv3L+5FAQKBuF1DtdzQ@mail.gmail.com>
	<CAJTo0LbUDLJurQWx2bmhUHLyqbJ0NOMNKVZRnKr6dkqNvDhUHg@mail.gmail.com>
Date: Wed, 23 Dec 2015 20:09:34 +0530
Message-ID: <CAA2DH4tagTTGi0uy4EJa2X=UyoE20rY0pxXWvMk-RWEGDpN-6A@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Bitbake recipe for prebuilt binaries
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
X-List-Received-Date: Wed, 23 Dec 2015 14:39:39 -0000
Content-Type: multipart/alternative; boundary=001a11443ed8e2a99f052791b0e2

--001a11443ed8e2a99f052791b0e2
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 21, 2015 at 12:52 AM, Burton, Ross <ross.burton@intel.com>
wrote:

>
> On 20 December 2015 at 15:53, Prasant J <pj0585@gmail.com> wrote:
>
>> I'm building a custom layer for my board and I would like to include some
>> pre-built binaries in my final image.
>>
>> The package is built outside the yocto build and is available as a binary
>> tarball from an http/ftp location.
>>
>>
>> Can someone please point to me a bit-bake recipe that handles such a
>> case?
>>
>
> This is basically a matter of downloading the tarballs by setting SRC_URI,
> unpacking them, and putting the files in the right places.
>  bin_package.bbclass will help with this.
>
> Ross
>

Thanks Ross for pointing it out. I will try it !

Regards, PJ

--001a11443ed8e2a99f052791b0e2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Dec 21, 2015 at 12:52 AM, Burton, Ross <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
"><div class=3D"gmail_extra"><span class=3D""><br><div class=3D"gmail_quote=
">On 20 December 2015 at 15:53, Prasant J <span dir=3D"ltr">&lt;<a href=3D"=
mailto:pj0585@gmail.com" target=3D"_blank">pj0585@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div>I&#39;m building a custom lay=
er for my board and I would like to include some pre-built binaries in my f=
inal image.<br><br></div><div>The package is built outside the yocto build =
and is available as a binary tarball from an http/ftp location.<br></div><d=
iv><br><br></div>Can someone please point to me a bit-bake recipe that hand=
les such a case? <br></blockquote></div><br></span>This is basically a matt=
er of downloading the tarballs by setting SRC_URI, unpacking them, and putt=
ing the files in the right places. =C2=A0bin_package.bbclass will help with=
 this.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gm=
ail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></span></d=
iv>
</blockquote></div><br></div><div class=3D"gmail_extra">Thanks Ross for poi=
nting it out. I will try it !<br><br></div><div class=3D"gmail_extra">Regar=
ds, PJ<br></div><div class=3D"gmail_extra"><br></div></div>

--001a11443ed8e2a99f052791b0e2--
