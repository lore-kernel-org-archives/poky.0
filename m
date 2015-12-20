Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B283E00C3B; Sun, 20 Dec 2015 04:38:15 -0800 (PST)
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
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E13DE0044F
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 04:38:12 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id p187so37866428wmp.1
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 04:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=rhOMLngyeTKfBG2DDaYKyxtD794DW/enYHR+WMtHW9o=;
	b=A45DuYh59BTIC4GHlw3yIUFT2yJhf0O9VXt2GZOE/4ijEMtUshBq0WU+OU61Ud+HuR
	tnN1VDjlfp7X7qtrkcUo6+WLjXwWdX6moPLw3E/eg2coqnmKcZ+/A7YOn7VaufglcPWn
	TFlqnHCnu0sT3SKpn1Zed6DPkkItJz+ehmdwuAhVepdOz/dCmiGE5SHzpLet13VRwOgZ
	mlGCK3Cz61+DTyOkLf6lgiUUn1D0EsUvjUJ0PDW0jgln+pJ/Z4p7rWJQ5lCFjtekrz0/
	Xl1ngGuj5/rpbudBDRqcKT0gd7The4rgZTgIg5SUXWZDHu/A1UE+Cyj/CLF7GXxdK2Y7
	aDgA==
MIME-Version: 1.0
X-Received: by 10.28.156.213 with SMTP id f204mr13608715wme.57.1450615091361; 
	Sun, 20 Dec 2015 04:38:11 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Sun, 20 Dec 2015 04:38:11 -0800 (PST)
Date: Sun, 20 Dec 2015 18:08:11 +0530
Message-ID: <CAA2DH4tQFdkTJg45Y3GSGQyJEOzMoO=fuXCrQ+jtcPJzQE3S-g@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: poky@yoctoproject.org
Subject: Custom Kernel Recipe: How to specify KCFLAGS args during kernel build?
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
X-List-Received-Date: Sun, 20 Dec 2015 12:38:15 -0000
Content-Type: multipart/alternative; boundary=001a114b44443a0235052753a5d8

--001a114b44443a0235052753a5d8
Content-Type: text/plain; charset=UTF-8

Hi,

When I was building the kernel outside the yocto project, I used to pass
"KCFLAGS+=" argument during command line (make arguments). This would
include my custom code, if I needed during the build.


In my custom yocto layer, I am adding linux kernel recipe. How can I
specify "KCFLAGS+=" args in the bitbake recipe?


Any inputs will be of help. Is there any example kernel recipe that uses
this feature?


Regards, PJ

--001a114b44443a0235052753a5d8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br>When I was building the kernel outsid=
e the yocto project, I used to pass &quot;KCFLAGS+=3D&quot; argument during=
 command line (make arguments). This would include my custom code, if I nee=
ded during the build.<br><br><br></div>In my custom yocto layer, I am addin=
g linux kernel recipe. How can I specify &quot;KCFLAGS+=3D&quot; args in th=
e bitbake recipe?<br><br><br></div><div>Any inputs will be of help. Is ther=
e any example kernel recipe that uses this feature?<br><br><br></div><div>R=
egards, PJ<br></div><div><br></div><br></div>

--001a114b44443a0235052753a5d8--
