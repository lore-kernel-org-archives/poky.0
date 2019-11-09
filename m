Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4E26E00DEE; Sat,  9 Nov 2019 11:39:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
	[209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4365AE00848
	for <poky@yoctoproject.org>; Sat,  9 Nov 2019 11:39:33 -0800 (PST)
Received: by mail-il1-f176.google.com with SMTP id i6so8166560ilr.11
	for <poky@yoctoproject.org>; Sat, 09 Nov 2019 11:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=rzBrQ+7pKeR35yVK9NPN3Nl0uWhIjDAETStQ/WwN/xM=;
	b=ER6JkZM35xv1P/rCC9v9jxW7FemyDAop2dW/FpgGJM+7qzGragrkLIkijYf4fAvbwZ
	pzGPZR5gl9bc855Igts+xlvEDkM54CpH3SItOJ/2Oa6/ydmFsm6/Np/7z8jMmPl6AbdL
	NgMfkR8mGSEDyKMpjcRa8lvBoNK99wSnHzXB+cwrXtBuFJktD4ipsjBkwU1ExBrpHT3b
	tBx/U8Twx8+ybPbLaWZcpHNT9UWZMovVb4nHOXM/aQNY0PKStOAo0UZZUTsu6COm9sL9
	ryF4/lhyGhpCaNWJlBvU6uvAm96YHXgpHmu2BOB/u/H9MWAq/hRrvTxH0k4D08ZnyCtl
	6oCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=rzBrQ+7pKeR35yVK9NPN3Nl0uWhIjDAETStQ/WwN/xM=;
	b=PMrFfVQ1UC7w4LE4tRxqWzUMjg5XQMFyEFGWJ/phaRb41ANQVuWsjXSYcQiSMEjUJT
	hmXHsTr14/L2jVvYaFJl2yAZwvaI4vH0CwwtpqYkAZPeYSOj2bHMIrZBJ4kY3TO3lCw7
	XwPYzJ5gHGXxMt5GlEEEogTB/DLhVpTMwqAmjtLMmy6PQsflmbxX8VuZ9iCnhQWCJxxk
	/tm0dxL2w8agbRxvX7DMeMKlp0/YUJFS1ArDr2NQmh0vZ+gIg/Y94vftEb55e4kSo9i8
	MvP7iELDR2j8JKBGsKMyWOe7J6YaQCu0WgmIjeo7Q/zOTEAPlwHOran0L13f8Zd/uxSs
	JeHA==
X-Gm-Message-State: APjAAAUjQrj4CBa4Ddu1Vzb3lh1yLGAmjrVu1IovlC7W51AmwQbaNoSB
	hDQAte7ry5Yy5GH4wP+d8mJU9iNmQbhNGZnMtyzfH2PM9+I=
X-Google-Smtp-Source: APXvYqy3O+MjB5vsF1bGNzv0Rpq5lfsTO5WkrkGRGZkupJXaxXigpRsOZHl5xRZ6ZMnZlmCaKNGrEnYKVL4hzwrHbhk=
X-Received: by 2002:a05:6e02:604:: with SMTP id
	t4mr12299369ils.65.1573328373144; 
	Sat, 09 Nov 2019 11:39:33 -0800 (PST)
MIME-Version: 1.0
References: <CAOe0dAXWDdPBkyDRje3tyfj2kr+2bhJjW+qYY8SE+FzbSoYJcg@mail.gmail.com>
In-Reply-To: <CAOe0dAXWDdPBkyDRje3tyfj2kr+2bhJjW+qYY8SE+FzbSoYJcg@mail.gmail.com>
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Sun, 10 Nov 2019 01:09:22 +0530
Message-ID: <CAOe0dAU+FrwK0jAqJWi4iEd7Cx89RJXRhVpOPNTPjv60t33bEg@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: Poky compilation error due to fontconfig package
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
X-List-Received-Date: Sat, 09 Nov 2019 19:39:34 -0000
Content-Type: multipart/alternative; boundary="000000000000cbdfd00596ef0ec0"

--000000000000cbdfd00596ef0ec0
Content-Type: text/plain; charset="UTF-8"

Hi All ,

Debugging further could find that problem was when asla-tools  was added to
IMAGE_INSTALL.

To Debug below is the approach i took :-
1) On standard poky
    - Generated core-image-minimal on poky which created image properly.
    - This helped to confirm that the recipe compile properly.
    - This also helped to asset that the problem was in my layer ( i have
created custom image & distro )

2) In my layer ( image & distro )
    - Clean all fontconfig & fontconfig-native packages
    - Individually compile the package , which was successful.
    - Reverted back the BB_NUMBER_THREADS = "8" from initial "16"
    - clean the image & generate fresh image

If there is any other approach by which similar error can be debugged ,
would request members to please let me know.

I have added these details to help other member if they face similar issue.

Thanks

--000000000000cbdfd00596ef0ec0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi All , <br></div><div><br></div><d=
iv>Debugging further could find that problem was when asla-tools=C2=A0 was =
added to IMAGE_INSTALL. <br></div><div></div><div><br></div><div>To Debug b=
elow is the approach i took :-</div><div>1) On standard poky <br></div><div=
>=C2=A0=C2=A0=C2=A0 - Generated core-image-minimal on poky which created im=
age properly. <br></div><div>=C2=A0=C2=A0=C2=A0 - This helped to confirm th=
at the recipe compile properly. <br></div><div>=C2=A0=C2=A0=C2=A0 - This al=
so helped to asset that the problem was in my layer ( i have created custom=
 image &amp; distro ) <br></div><div><br></div><div>2) In my layer ( image =
&amp; distro ) <br></div><div>=C2=A0=C2=A0=C2=A0 - Clean all fontconfig &am=
p; fontconfig-native packages</div><div>=C2=A0=C2=A0=C2=A0 - Individually c=
ompile the package , which was successful. <br></div><div>=C2=A0=C2=A0=C2=
=A0 - Reverted back the BB_NUMBER_THREADS =3D &quot;8&quot; from initial &q=
uot;16&quot;</div><div>=C2=A0=C2=A0=C2=A0 - clean the image &amp; generate =
fresh image</div>=C2=A0=C2=A0 <br></div><div>If there is any other approach=
 by which similar error can be debugged , would request members to please l=
et me know. <br></div><div><br></div><div>I have added these details to hel=
p other member if they face similar issue. <br></div><div><br></div><div></=
div><div dir=3D"ltr"><div>Thanks=C2=A0</div><div><br></div></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div></div>

--000000000000cbdfd00596ef0ec0--
