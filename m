Return-Path: <am.devel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DC82E008ED; Tue,  4 Nov 2014 01:50:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (am.devel[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB0B5E00874;
	Tue,  4 Nov 2014 01:50:32 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id b13so12847242wgh.26
	for <multiple recipients>; Tue, 04 Nov 2014 01:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZZqsKgkRYrFFvxF8uX9P6h79u/Jd3oprpO6ZF2mzgyM=;
	b=S/AiuryUCnglxjoesEyMHzY9JkR9RCGUAh9iGqaSp9O8AEnWlpkFogl1ZrSrk9YzjW
	FTYCySHqFpOK1yBcS4bhrWhK4jnt2t/gw0VQ1M/N5rar5eqaKiELDTNVlh3SkxwcVTw/
	FHJsnFlTZiDPiWnAkOpT0EDBn/jsPIidPnxs2muiJ4xy4XbOKCAJAYxWeFcKk70594zM
	s8DUcMol0Q8wuEE+vz5R4eIQBjQ0VYuDmP/3N1ttswnZIgFEFgYmCg92776PTBEPAcaP
	KXvqBlBRCT8NirZh1ZYXUEg3bf2iyvXhycaREVveaxyvS1nkAWgGl61e7acFXJM/8ba5
	2pwg==
MIME-Version: 1.0
X-Received: by 10.194.171.201 with SMTP id aw9mr14328441wjc.67.1415094632074; 
	Tue, 04 Nov 2014 01:50:32 -0800 (PST)
Received: by 10.217.116.199 with HTTP; Tue, 4 Nov 2014 01:50:31 -0800 (PST)
Date: Tue, 4 Nov 2014 15:20:31 +0530
Message-ID: <CAGRzuVyL9dkmqu28kP2Qk2289Ga+KDUs2BAkDute-YCV6qJXNQ@mail.gmail.com>
From: Anuj Mittal <am.devel@gmail.com>
To: poky@yoctoproject.org, meta-intel@yoctoproject.org
Subject: Poky and meta-intel window manager
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
X-List-Received-Date: Tue, 04 Nov 2014 09:50:41 -0000
Content-Type: multipart/alternative; boundary=089e013c6692de53ab05070564ae

--089e013c6692de53ab05070564ae
Content-Type: text/plain; charset=UTF-8

I'm trying to build core-image-sato-sdk with meta-intel for Intel
valleyview.

Is there a way I can have a different interface than sato? I've an
application that displays in tiles which, it looks like, won't work with
the sato & matchbox available in poky.

Thank you.

Anuj

--089e013c6692de53ab05070564ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m trying to build core-image-sato-sdk with meta=
-intel for Intel valleyview.</div><div><br></div><div>Is there=C2=A0a way I=
 can have a different interface than sato? I&#39;ve an application that dis=
plays in tiles which, it looks like, won&#39;t work with the sato &amp; mat=
chbox available in poky.</div><div><br></div><div>Thank you.</div><div><br>=
</div><div>Anuj</div></div>

--089e013c6692de53ab05070564ae--
