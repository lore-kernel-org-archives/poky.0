Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74296E00961; Thu, 26 Mar 2015 05:01:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 265CEE0095D
	for <poky@yoctoproject.org>; Thu, 26 Mar 2015 05:01:01 -0700 (PDT)
Received: by pdbop1 with SMTP id op1so60700010pdb.2
	for <poky@yoctoproject.org>; Thu, 26 Mar 2015 05:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Bt1LDeHH6rjRrd3YscDoyWBvb0Bkf+vqoSEu3F0Fwhs=;
	b=NXQQdAM9yAFKL6O/8KR+tsrutF31TpbE9ZuJ1ngms3jqZ4Xwdf0lQR5wuMcOFA+gdI
	z8vaJdsO9v6i3P06Rc/g3LtLXQwOI+Xa2BY0FgvuZjddvUIL0eYYJGgfv9FSGpAsNnY/
	HjmeQOjuqLNcw9mbg8Wb9T1+VT+acxxqS2R1yBvBBCY9LKXwATwpVlN+p/6QExm/n+YK
	0GAyDrw1zLTzqaFEU4X+ZYiEFnsNF3iiJ7nkpZSqWWyTe3tAt3KavnH2nMlmyonsTLqK
	HQ33zDcph0QepF5AP/BcsuWofGRg3varAhAMSyHotgtCuMWeXcexeS0qWiCp0H12vWE6
	Fmzg==
MIME-Version: 1.0
X-Received: by 10.68.168.225 with SMTP id zz1mr25786246pbb.3.1427371261541;
	Thu, 26 Mar 2015 05:01:01 -0700 (PDT)
Received: by 10.70.135.134 with HTTP; Thu, 26 Mar 2015 05:01:01 -0700 (PDT)
Date: Thu, 26 Mar 2015 17:31:01 +0530
Message-ID: <CA+pXca3=KCwAMBcSqPcpF5UX401Tg07tF_oBYYnAHWz1Xv04CQ@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: poky@yoctoproject.org
Subject: error while compiling fuse for beaglebone
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
X-List-Received-Date: Thu, 26 Mar 2015 12:01:09 -0000
Content-Type: multipart/alternative; boundary=047d7ba9849001c22305122fc50d

--047d7ba9849001c22305122fc50d
Content-Type: text/plain; charset=UTF-8

Hi
I solved this by updating fuse_2.9.2.bb  to fuse_2.9.3.bb

Thanks
Praveen

--047d7ba9849001c22305122fc50d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi </div><div>I solved this by updating <a href=3D"ht=
tp://fuse_2.9.2.bb">fuse_2.9.2.bb</a> =C2=A0to <a href=3D"http://fuse_2.9.3=
.bb">fuse_2.9.3.bb</a></div><div>=C2=A0</div><div>Thanks</div><div>Praveen<=
/div></div>

--047d7ba9849001c22305122fc50d--
