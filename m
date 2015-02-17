Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45C8EE007CF; Tue, 17 Feb 2015 02:51:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HK_RANDOM_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 HK_RANDOM_FROM From username looks random
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (priyaiitmandi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D954E007AB;
	Tue, 17 Feb 2015 02:51:21 -0800 (PST)
Received: by mail-ig0-f169.google.com with SMTP id hl2so40943304igb.0;
	Tue, 17 Feb 2015 02:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=sbDGgosoRv+EKEslU+1BLYM21rQ5crW8g6vPtk7FCdA=;
	b=cuR++1UhlNBWzkR00JEwBSeRmkr29AL6Z+etMlVtqJ5HzOv1vHHiW9qrtDC0+oryqF
	TwZWhP6IdOliUEdICKQopILz8THhoOEoB7Jf0A7mqEDLzvqbKYw89Y0e+XX11/WrngHb
	T1Ht4zltPSCKCQcjkAUirATokJzWZyD4UGWfU94Hph2WB1pLF4HWrrugkiKrK4umDPoH
	t9dtU2wjbqu2fGJx3hQloc9KGCd+3Vwgd3x7krfMWsivGgV8uvIFZdvP0eQn2uw5C3d6
	IW2uESYotGwRDfEcg5PmbNRgCGJ/d3aLbtYITlId2RIKE6d3Rg/0yRHyvT85nKxfn2Zm
	G21Q==
MIME-Version: 1.0
X-Received: by 10.50.131.196 with SMTP id oo4mr17136652igb.2.1424170281353;
	Tue, 17 Feb 2015 02:51:21 -0800 (PST)
Received: by 10.107.134.207 with HTTP; Tue, 17 Feb 2015 02:51:21 -0800 (PST)
In-Reply-To: <CALTPfpHrYrWhPje7ippkoTUwPgBAuzmhcTKWa0Knec-iSLtgBQ@mail.gmail.com>
References: <CALTPfpHrYrWhPje7ippkoTUwPgBAuzmhcTKWa0Knec-iSLtgBQ@mail.gmail.com>
Date: Tue, 17 Feb 2015 16:21:21 +0530
Message-ID: <CALTPfpHqiwCiCHkvw1DM=mpTwtts2z83sNLhRN5_h6Ycv5O5Tw@mail.gmail.com>
From: Priya Agarwal <priyaiitmandi@gmail.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	yocto-builds@yoctoproject.org
Subject: Error while trying to enable selinux support in custom image
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
X-List-Received-Date: Tue, 17 Feb 2015 10:51:28 -0000
Content-Type: multipart/alternative; boundary=047d7b2e1465b847af050f467b2f

--047d7b2e1465b847af050f467b2f
Content-Type: text/plain; charset=UTF-8

Hi,

I want to add SELinux support in my custom imgae I am building for
Freescale's T4240QDS Machine.
I followed the steps given in FAQ section included in meta-selinux
directory.

However I am getting this error. How do I remove this.

ERROR: Layer 'selinux' depends on layer 'meta-python', but this layer is
not enabled in your configuration
ERROR: Layer 'selinux' depends on layer 'networking-layer', but this layer
is not enabled in your configuration

I need to do this urgently.
Thank You.

Regards

--047d7b2e1465b847af050f467b2f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr"><div><div>=
<div><div><div><div>Hi,<br><br></div>I want to add SELinux support in my cu=
stom imgae I am building for Freescale&#39;s T4240QDS Machine.<br></div>I f=
ollowed the steps given in FAQ section included in meta-selinux directory.<=
br><br></div>However I am getting this error. How do I remove this. <br><br=
>ERROR: Layer &#39;selinux&#39; depends on layer &#39;meta-python&#39;, but=
 this layer is not enabled in your configuration<br>ERROR: Layer &#39;selin=
ux&#39; depends on layer &#39;networking-layer&#39;, but this layer is not =
enabled in your configuration<br><br></div>I need to do this urgently.<br><=
/div>Thank You.<br><br></div>Regards<br></div>
</div><br></div>

--047d7b2e1465b847af050f467b2f--
