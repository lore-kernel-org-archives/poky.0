Return-Path: <lpapp@archlinux.us>
Received: from mail-pb0-f50.google.com (mail-pb0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C05C0E00747
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 03:13:10 -0700 (PDT)
Received: by mail-pb0-f50.google.com with SMTP id uo5so238364pbc.37
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 03:13:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=yJKjP7uG5g0cYPTt9mn0kUh4t9O5kCbaXI6R9SSJruc=;
	b=PJyavT8J0fadMVvxFYjmnu0NvCCSbbRdHv5cleXQrkR4bfccs+Gn8CVPGbeNft9JO1
	UU/6aEOJQmHNDBvurF+kclEznSY3jTGyNoMPs4nFAhavnASRaIS6dxFcAK01IpQtR/0S
	5votzvMUMiab0Ws9wJfObgzI63rGXSJ+acfMPR4L/5uBtAbOqf2jeKmqZjYdlD9/ejRz
	QncZmt+S0Zh84mNMN9TWs9wJvHaSRZ67/ys5DIv7HXaC3AtfMvPw0b6VHLSBydcQb6kW
	u2OkDDmLWRpVPTGAw847CNMBIvqiQ1k/CYTdFXqKa39jCk62aIa3RB4SedlVCH5cq2VR
	LwwQ==
X-Gm-Message-State: ALoCoQnHN8X1h6A7svdj/oP/DBqNcp7ULmKggcl/Tch+mVz+rOvohH4RRZJfzy92LfzEHMfysvLd
MIME-Version: 1.0
X-Received: by 10.68.224.161 with SMTP id rd1mr6922500pbc.121.1377079989706;
	Wed, 21 Aug 2013 03:13:09 -0700 (PDT)
Sender: lpapp@archlinux.us
Received: by 10.70.57.234 with HTTP; Wed, 21 Aug 2013 03:13:09 -0700 (PDT)
In-Reply-To: <CAJTo0LZ-hGHQY5tQrpFDzW_z_YFmmRDd9YtHR0B1AiYeHY+xfg@mail.gmail.com>
References: <CAOMwXhNzKFZNdbRrfc67_5swmjz_0gqJoG-=YJg0hkFpor5RMQ@mail.gmail.com>
	<CAJTo0LZ-hGHQY5tQrpFDzW_z_YFmmRDd9YtHR0B1AiYeHY+xfg@mail.gmail.com>
Date: Wed, 21 Aug 2013 11:13:09 +0100
X-Google-Sender-Auth: VLUhWShOa8ayFz-Gqp_V7it_43o
Message-ID: <CAOMwXhMj++wFF8Z24j3pXa7evtnFXbmOxj+6TWH8hhwYpVrsRQ@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Wed, 21 Aug 2013 10:13:10 -0000
Content-Type: multipart/alternative; boundary=e89a8ff24ff69d377904e4726b10

--e89a8ff24ff69d377904e4726b10
Content-Type: text/plain; charset=ISO-8859-1

Yeah, I was discussing this feature request in #git on IRC.

Anyway, can we get rid of this gtk doc stub stuff? It is just causing havoc.


On Wed, Aug 21, 2013 at 11:06 AM, Burton, Ross <ross.burton@intel.com>wrote:

> On 21 August 2013 10:48, Laszlo Papp <lpapp@kde.org> wrote:
>
>> Fwiw, the branches and refs folders are empty and hence I canot commit
>> those with git add. That might be a reason, but then it is a silly git bug?
>> If not, something else?
>>
>
> git doesn't allow empty directories in checkouts, and if git needs them
> then this means that you can't put a git repo inside a git repo.
>
> I suspect that in Denzil with core-image-minimal you were not actually
> doing any git fetches, but now that gtk-doc-stub is used you're doing git
> fetches.
>
> Ross
>

--e89a8ff24ff69d377904e4726b10
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yeah, I was discussing this feature request in #git on IRC=
.<div><br></div><div>Anyway, can we get rid of this gtk doc stub stuff? It =
is just causing havoc.</div></div><div class=3D"gmail_extra"><br><br><div c=
lass=3D"gmail_quote">
On Wed, Aug 21, 2013 at 11:06 AM, Burton, Ross <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"im">On 21 August =
2013 10:48, Laszlo Papp <span dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@kde.o=
rg" target=3D"_blank">lpapp@kde.org</a>&gt;</span> wrote:<br><div class=3D"=
gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">

<div>Fwiw, the branches and refs folders are empty and hence I canot commit=
 those with git add. That might be a reason, but then it is a silly git bug=
? If not, something else?<br></div></blockquote></div><br></div>git doesn&#=
39;t allow empty directories in checkouts, and if git needs them then this =
means that you can&#39;t put a git repo inside a git repo.</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">I suspect t=
hat in Denzil with core-image-minimal you were not actually doing any git f=
etches, but now that gtk-doc-stub is used you&#39;re doing git fetches.</di=
v>
<span class=3D"HOEnZb"><font color=3D"#888888">

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/font></span></div>
</blockquote></div><br></div>

--e89a8ff24ff69d377904e4726b10--
