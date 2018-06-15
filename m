Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9184AE00C61; Fri, 15 Jun 2018 14:42:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3790EE006F1
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 14:42:16 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id f79-v6so10050373oib.7
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 14:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:mime-version:thread-index:date:message-id:subject:to;
	bh=MkmW8uOyTaYNlSsQqBwBSQdj54HH5Rc/r9qmDiJADGA=;
	b=S5e+qtNuMO00BZwE0e5BNHUBha4vydqBI7sv0+v2occT/AC05hG4PnHcfBsAGJeTT6
	+4iPpUMIM7iCkG6+IucqoJxAltVqlKRZ1znyoEd5kcbr9okfTchNOl6QiT204M5G1uME
	Ln7tHLK9MMYg8nUeKTfVNC2LeVVsmN32ms30g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:thread-index:date:message-id
	:subject:to;
	bh=MkmW8uOyTaYNlSsQqBwBSQdj54HH5Rc/r9qmDiJADGA=;
	b=bvm6F1R6CLwFaEBDPABmdrUOgZEcOaWxic8VbdBSymT/ktmaGbUu1l94WFww0C9qj+
	c486B6JF5C0eZCu95l5BzrAP3bGBMOgA2imwbcRrNrP1Qn/SSGDoa15j5WUnolNLvVh4
	rjGr+wPNVvfYZI6am0rldJ36yQ17Sn01m5hZBCfcYdAVph1qB315kae5oairzw2g9rvr
	/RLD+NTtPWniF5R2UAlLVKpJjWHUJC6ik4mxSK3MWSmqMM3PTh4R4+rl7ViODJZTn4hP
	GJxe4qciMIca6R5Z3bx1/dYOahPeuzZgM3UZ9xR2Rz+Q7si3cRgqWEDKRAP3qVcvjNMv
	5OdQ==
X-Gm-Message-State: APt69E3li+yhWkJ15jyulExxQdRy4f9wZMu+C4YG/zLamsjsUQoly8wf
	XVQM5gkvh19iq3q73LsODkiqIGbmL7VX/yV+8wNvJUw0
X-Google-Smtp-Source: ADUXVKKrAeHEX0XGS5laTlsmvnopj/U7ps8YWPRMPapRXf3HuBQXQqhUzedtpKJ1lZLzCu4YdYyVfA7E0rgtFQ42Eds=
X-Received: by 2002:aca:5406:: with SMTP id
	i6-v6mr2015716oib.115.1529098935539; 
	Fri, 15 Jun 2018 14:42:15 -0700 (PDT)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdQE8aX1pQl3zoeWQEawIweA1xL+ug==
Date: Fri, 15 Jun 2018 14:42:14 -0700
Message-ID: <edfcc2fef994870b3be5ea062fc8fabe@mail.gmail.com>
To: poky@yoctoproject.org
Subject: how to submit patches
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
X-List-Received-Date: Fri, 15 Jun 2018 21:42:16 -0000
Content-Type: multipart/alternative; boundary="000000000000e14aba056eb51663"

--000000000000e14aba056eb51663
Content-Type: text/plain; charset="UTF-8"

Hi,



What is the procedure for submitting changes to poky? Can we just send the
patches to this mailing list? Is there any policy on adding new recipes to
meta, new features, or fixes?



Thanks.

--000000000000e14aba056eb51663
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dus-ascii"><meta name=3D"Generator" content=3D"Microsoft Word 14 (filtere=
d medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div =
class=3D"WordSection1"><p class=3D"MsoNormal">Hi,</p><p class=3D"MsoNormal"=
>=C2=A0</p><p class=3D"MsoNormal">What is the procedure for submitting chan=
ges to poky? Can we just send the patches to this mailing list? Is there an=
y policy on adding new recipes to meta, new features, or fixes? </p><p clas=
s=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Thanks.</p></div></body></=
html>

--000000000000e14aba056eb51663--
