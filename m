Return-Path: <zaifupb@gmail.com>
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0A7EE01439
	for <poky@yoctoproject.org>; Tue,  7 May 2013 14:53:26 -0700 (PDT)
Received: by mail-qa0-f51.google.com with SMTP id hu16so679915qab.3
	for <poky@yoctoproject.org>; Tue, 07 May 2013 14:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=P14ECk92slxfmyMJyf3YNRreC8ki4VffAur8Dah+rUk=;
	b=JcBiicVHVBP3WFaBhzX7LeSvST1GLcwSSHXZrg0lw1C5/qLdKe7NWlmj1aNsTJGfKv
	dkaEsqGmKX4DQf+AcC8BE1QebbYlyfQxKqcRuooWc3K7jkD8AIElNSIf1efgZSCFTT4V
	561S//iLtvvsXJjJL0otllkdLKTrBgCwwB0xApqymR+GbH5VRUxR9baG8ZaI1WeAxRLH
	OiYOUBqRoNbKpT8ebd8ycQzqqUXFsJ3ly28oVjII/YIYTm+a2my3v/IvECRGPpat8JxU
	5hlxj2kfK2FcYZc95zdRPsJCwf2iG/c1djbRsRVd7h9SS/MdLDOTFj/Gedv6PdlvO8/M
	VUJA==
MIME-Version: 1.0
X-Received: by 10.224.178.72 with SMTP id bl8mr3081823qab.14.1367963606385;
	Tue, 07 May 2013 14:53:26 -0700 (PDT)
Received: by 10.229.164.76 with HTTP; Tue, 7 May 2013 14:53:26 -0700 (PDT)
Date: Tue, 7 May 2013 23:53:26 +0200
Message-ID: <CABx0rKH=CTH9QbS4hEuYNqsMbob5mMkGW_6N+4A_NPOP14s0jg@mail.gmail.com>
From: Zaif upb <zaifupb@gmail.com>
To: poky@yoctoproject.org
Subject: Building Custom Images- Need help
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
X-List-Received-Date: Tue, 07 May 2013 21:53:27 -0000
Content-Type: multipart/alternative; boundary=20cf302ef762d354bf04dc27d8d0

--20cf302ef762d354bf04dc27d8d0
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I am newbie for Yocto project, please help me.

 I would like to know the process of making custom image for gumstix. I
have been through this
http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#usingpoky-extend-addpkg
manual but things are not clear yet.

I can successfully build *gumstix-console-image. *I need to integrate
Gstreamer and OpenCV libraries into that image. I do not know how to
proceed.

I edited *gumstix-console-image*.bb file according to  Streaming video with
Gumstix<http://www.jumpnowtek.com/?option=com_content&view=article&id=81:gumstix-dsp-gstreamer&catid=35:gumstix&Itemid=67>as
mentioned here for Gstreamer. It breaks badly.

Any Idea how can I integrate them in my Image?

Thank You for your Help.

Regards,
Zaifupb

--20cf302ef762d354bf04dc27d8d0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi all,<br><br></div>I =
am newbie for Yocto project, please help me.<br><br>=A0I would like to know=
 the process of making custom image for gumstix. I have been through this=
=A0 <a href=3D"http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.h=
tml#usingpoky-extend-addpkg" target=3D"_blank">http://www.yoctoproject.org/=
docs/1.4/dev-manual/dev-manual.html#usingpoky-extend-addpkg</a>=A0 manual b=
ut things are not clear yet.<br>

<br></div>I can successfully build <i>gumstix-console-image. </i>I need to =
integrate Gstreamer and OpenCV libraries into that image. I do not know how=
 to proceed. <br><br></div>I edited <i>gumstix-console-image</i>.bb file ac=
cording to=A0=A0<a href=3D"http://www.jumpnowtek.com/?option=3Dcom_content&=
amp;view=3Darticle&amp;id=3D81:gumstix-dsp-gstreamer&amp;catid=3D35:gumstix=
&amp;Itemid=3D67" target=3D"_blank">Streaming video with Gumstix</a> as men=
tioned here for Gstreamer. It breaks badly.<br>

<br></div>Any Idea how can I integrate them in my Image?<br><br></div>Thank=
 You for your Help.<br><br></div>Regards,<br></div>Zaifupb</div>

--20cf302ef762d354bf04dc27d8d0--
