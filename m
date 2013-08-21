Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0315DE00747
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 03:07:06 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id id13so134605vcb.32
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 03:07:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ZJ9WdqdsTF+ArzhOu0j0TJ9CdgiFv+eOXDZNkgxh0E8=;
	b=BbrMVn8UGiHnUY6ozsrleDQPb9ZnwmePOXbi8Cd6nTmonFt+0522ZFmu5VCGTxZyd5
	/aOn86MRTQheFKu+P+/fBMVi4Xa+fbKcoc2jCu/tO/VB1sOSCG5xne6IPZ3pE1HlC5AW
	zSWaVXtj/yM22AdSX0fay5Zy7qDCGBVZaMFOynh47bE0uku0odUvwT5trtSoqe3ZVF8S
	4MiwcT9Q9Wrwj6w+xa1grAzzIawg5pw3fehDzJxyIrdogsXqxKJvtpouj4E6mVm3NKBO
	Ov/LhQkCSEiBxQlSt6sYUrZk4UEk6Ys47G1C7QACtxkLAHyH3H2joz8bvUYgYFxlV9f+
	/2xA==
X-Gm-Message-State: ALoCoQmVDSnyNBUkejLLOEYJuz7EY14V5GX3iuiRqmQusS0KHqFnshUiG7DL42VXPY8rxqYelbLO
X-Received: by 10.52.34.40 with SMTP id w8mr4867993vdi.7.1377079626496; Wed,
	21 Aug 2013 03:07:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 21 Aug 2013 03:06:46 -0700 (PDT)
In-Reply-To: <CAOMwXhNzKFZNdbRrfc67_5swmjz_0gqJoG-=YJg0hkFpor5RMQ@mail.gmail.com>
References: <CAOMwXhNzKFZNdbRrfc67_5swmjz_0gqJoG-=YJg0hkFpor5RMQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Aug 2013 11:06:46 +0100
Message-ID: <CAJTo0LZ-hGHQY5tQrpFDzW_z_YFmmRDd9YtHR0B1AiYeHY+xfg@mail.gmail.com>
To: Laszlo Papp <lpapp@kde.org>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Help with regression from denzil to dylan
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
X-List-Received-Date: Wed, 21 Aug 2013 10:07:07 -0000
Content-Type: multipart/alternative; boundary=20cf307cfec0f725e904e4725590

--20cf307cfec0f725e904e4725590
Content-Type: text/plain; charset=UTF-8

On 21 August 2013 10:48, Laszlo Papp <lpapp@kde.org> wrote:

> Fwiw, the branches and refs folders are empty and hence I canot commit
> those with git add. That might be a reason, but then it is a silly git bug?
> If not, something else?
>

git doesn't allow empty directories in checkouts, and if git needs them
then this means that you can't put a git repo inside a git repo.

I suspect that in Denzil with core-image-minimal you were not actually
doing any git fetches, but now that gtk-doc-stub is used you're doing git
fetches.

Ross

--20cf307cfec0f725e904e4725590
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On 21 August 2013 10:48, Laszlo=
 Papp <span dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@kde.org" target=3D"_bla=
nk">lpapp@kde.org</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">

<div>Fwiw, the branches and refs folders are empty and hence I canot commit=
 those with git add. That might be a reason, but then it is a silly git bug=
? If not, something else?<br></div></blockquote></div><br>git doesn&#39;t a=
llow empty directories in checkouts, and if git needs them then this means =
that you can&#39;t put a git repo inside a git repo.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">I suspect t=
hat in Denzil with core-image-minimal you were not actually doing any git f=
etches, but now that gtk-doc-stub is used you&#39;re doing git fetches.</di=
v>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div>

--20cf307cfec0f725e904e4725590--
