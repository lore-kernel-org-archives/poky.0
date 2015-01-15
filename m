Return-Path: <theodor@resin.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F6F0E00932; Thu, 15 Jan 2015 09:47:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,SUBJ_OBFU_PUNCT_MANY autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 SUBJ_OBFU_PUNCT_MANY Punctuation-obfuscated Subject: header
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0A01E00782
	for <poky@yoctoproject.org>; Thu, 15 Jan 2015 09:47:44 -0800 (PST)
Received: by mail-vc0-f177.google.com with SMTP id ij19so5205917vcb.8
	for <poky@yoctoproject.org>; Thu, 15 Jan 2015 09:47:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=OeCOWAepc9HFaZfPhuwTah60vEIFXswMGUKB4H5eeSQ=;
	b=BorHEObKUOLyLwhHBpu7DLZFucYY3HSwk9kd08Ep1niMPs1JAQYUDxTeyKMITDplid
	5OMETsLrzXx0ePY+mKaGKKm6TkfKh2KQkn/deVG7sxt69dpOhTwUgXlkr8X7BWBXMeS7
	UwAgKuYzH9y/hN0W/ohxBEQYHfPKXhtLQxFYdg8jc+tEsKPkf+Q3pZyxkUHNlVBEsLrW
	1rcx52Y8hX0CiGUR5Sf8O2mIwZ4S5SFWJ04dkFgH+R22qPzbDhnajsnt8bQCjLotjAcy
	iahd8UOYjSV/ed7ROz9Wk+BdaHqopP/Qg4Zp4Pg2nj5FUUvRkAK+pwd+HEK/Q11kgiLK
	2j2A==
X-Gm-Message-State: ALoCoQmFbQzzF+D6Udycam6DXbVtbjB39R3YJ9RGD7KXXA/06rdPVn61ELQbx12bJWCF5E7krcAm
MIME-Version: 1.0
X-Received: by 10.220.66.133 with SMTP id n5mr5443620vci.29.1421344064330;
	Thu, 15 Jan 2015 09:47:44 -0800 (PST)
Received: by 10.52.27.129 with HTTP; Thu, 15 Jan 2015 09:47:44 -0800 (PST)
Date: Thu, 15 Jan 2015 17:47:44 +0000
Message-ID: <CABORvUjkiZHvX5FO2cTjCxfTpgv-1W+G31Ox2VsmUk7tvf1nRA@mail.gmail.com>
From: Theodor Gherzan <theodor@resin.io>
To: poky@yoctoproject.org
Subject: [PATCH] kernel-yocto.bbclass: Bug Fix inside do_kernel_checkout()
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
X-List-Received-Date: Thu, 15 Jan 2015 17:47:47 -0000
Content-Type: multipart/alternative; boundary=047d7b3a7fac0eebee050cb47483

--047d7b3a7fac0eebee050cb47483
Content-Type: text/plain; charset=UTF-8

 After we check the existence of 'machine_branch' with 'git show-ref'
 the following if statement should change the 'machine_branch'
 to the default (i.e. master) if the 'git show-ref' has returned an
 exit code that is not 0, not the other way around.

 Signed-off-by: Theodor Gherzan <theodor@resin.io>

diff --git a/meta/classes/kernel-yocto.bbclass
b/meta/classes/kernel-yocto.bbclass
index 3b59d85..44aa1b8 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -211,7 +211,7 @@ do_kernel_checkout() {
        # Create a working tree copy of the kernel by checking out a branch
        machine_branch="${@ get_machine_branch(d, "${KBRANCH}" )}"
        git show-ref --quiet --verify -- "refs/heads/${machine_branch}"
-       if [ $? -eq 0 ]; then
+       if [ $? -ne 0 ]; then
                machine_branch="master"
        fi

--047d7b3a7fac0eebee050cb47483
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size:13px">=C2=A0After we check the exi=
stence of &#39;machine_branch&#39; with &#39;git show-ref&#39;=C2=A0</div><=
div style=3D"font-size:13px">=C2=A0the following if statement should change=
 the &#39;machine_branch&#39;</div><div style=3D"font-size:13px">=C2=A0to t=
he default (i.e. master) if the &#39;git show-ref&#39; has returned an</div=
><div style=3D"font-size:13px">=C2=A0exit code that is not 0, not the other=
 way around.</div><div style=3D"font-size:13px"><br></div><div style=3D"fon=
t-size:13px">=C2=A0Signed-off-by: Theodor Gherzan &lt;<a href=3D"mailto:the=
odor@resin.io" target=3D"_blank">theodor@resin.io</a>&gt;</div><div style=
=3D"font-size:13px"><br></div><div style=3D"font-size:13px">diff --git a/me=
ta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass</div><d=
iv style=3D"font-size:13px">index 3b59d85..44aa1b8 100644</div><div style=
=3D"font-size:13px">--- a/meta/classes/kernel-yocto.bbclass</div><div style=
=3D"font-size:13px">+++ b/meta/classes/kernel-yocto.bbclass</div><div style=
=3D"font-size:13px">@@ -211,7 +211,7 @@ do_kernel_checkout() {</div><div st=
yle=3D"font-size:13px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Create a working tree =
copy of the kernel by checking out a branch</div><div style=3D"font-size:13=
px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 machine_branch=3D&quot;${@ get_machine_bran=
ch(d, &quot;${KBRANCH}&quot; )}&quot;</div><div style=3D"font-size:13px">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git show-ref --quiet --verify -- &quot;refs/hea=
ds/${machine_branch}&quot;</div><div style=3D"font-size:13px">- =C2=A0 =C2=
=A0 =C2=A0 if [ $? -eq 0 ]; then</div><div style=3D"font-size:13px">+ =C2=
=A0 =C2=A0 =C2=A0 if [ $? -ne 0 ]; then</div><div style=3D"font-size:13px">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 machine_branch=3D&q=
uot;master&quot;</div><div style=3D"font-size:13px">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 fi</div></div>

--047d7b3a7fac0eebee050cb47483--
