Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86767E00752; Tue, 16 Dec 2014 13:10:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F6F5E003AB
	for <poky@yoctoproject.org>; Tue, 16 Dec 2014 13:09:55 -0800 (PST)
Received: by mail-qc0-f178.google.com with SMTP id b13so12172875qcw.37
	for <poky@yoctoproject.org>; Tue, 16 Dec 2014 13:09:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=nW0URUSz05nrdXnpJtTOSNQ3wHVHc/1XukFTWxrXZaU=;
	b=EMoAHDfoJLVD1pXV4Iior5pXpMYqOLr8MQLAqUNzI7HLyu7Kn+vrkqolZmnovREZZC
	yUV66w8QUVzHy8JQ0T0dS62aU9J7/oExp6hFVoFIcjw7ePIIdNdtQrRTg1ja/Ev+MX2J
	z8CSAmj2uE1on/6tv7Gz6bv2vbzbZmRnbO3kZGo2m95X3MhA5jR5qooEA2jWk1LLNAm/
	nyymveauZUQdqp5vQ5iMme9aRflWm0fu/nEIUSpFykqdF3ZBTHRvsSTd6d3VOW9N52bl
	Bi/4+Kp8EBaHOXA6Ui7JKvq2D1aSJ+6qgMr/Eq10kUusJHX7QzoK+xBG7U4WxAtxwKKx
	MxiA==
X-Gm-Message-State: ALoCoQlljGDnkcVdGe6DByGURKOCgt00ZjPYi1YwE8DsysFTpmGWLQdWq6H8Z9Pkspw2paNhso9S
X-Received: by 10.224.93.6 with SMTP id t6mr69489551qam.93.1418764194846; Tue,
	16 Dec 2014 13:09:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Tue, 16 Dec 2014 13:09:34 -0800 (PST)
In-Reply-To: <1418300556-44714-1-git-send-email-liviu.gheorghisan@enea.com>
References: <1418300556-44714-1-git-send-email-liviu.gheorghisan@enea.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Dec 2014 21:09:34 +0000
Message-ID: <CAJTo0LZztuxH2F5dL666RgPrZvzJDu+V1jhfDTgbT-JSatQrwQ@mail.gmail.com>
To: Liviu Gheorghisan <liviu.gheorghisan@enea.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [dizzy][PATCH] Fixed openssh ptest
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
X-List-Received-Date: Tue, 16 Dec 2014 21:10:04 -0000
Content-Type: multipart/alternative; boundary=089e01495028dab02d050a5bc796

--089e01495028dab02d050a5bc796
Content-Type: text/plain; charset=UTF-8

Hi Liviu,

Patches for oe-core should go to the openembedded-core mailing list, the
Poky list is only for patches to meta-yocto.

On 11 December 2014 at 12:22, Liviu Gheorghisan <liviu.gheorghisan@enea.com>
wrote:
>
> ptests for openssh, apart from a lot of .sh scripts, also
> require 2 executables to be cross-compiled for the target
> and deployed there, that will be called from the test
> scripts.
>

Should this be applied to master too?

Ross

--089e01495028dab02d050a5bc796
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Liviu,</div><div class=3D"gm=
ail_extra"><br></div><div class=3D"gmail_extra">Patches for oe-core should =
go to the openembedded-core mailing list, the Poky list is only for patches=
 to meta-yocto.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On 11 December 2014 at 12:22, Liviu Gheorghisan <span dir=3D"ltr">&lt;<=
a href=3D"mailto:liviu.gheorghisan@enea.com" target=3D"_blank">liviu.gheorg=
hisan@enea.com</a>&gt;</span> wrote:<blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":gi" class=3D"a3s" style=3D"overflow:hidden">ptests for openssh, apart =
from a lot of .sh scripts, also<br>
require 2 executables to be cross-compiled for the target<br>
and deployed there, that will be called from the test<br>
scripts.</div></blockquote></div><br>Should this be applied to master too?<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</=
div></div>

--089e01495028dab02d050a5bc796--
