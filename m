Return-Path: <jaymin.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70DB0E00F1D; Tue, 20 Feb 2018 22:47:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jaymin.linux[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E8FBE00CF1
	for <poky@yoctoproject.org>; Tue, 20 Feb 2018 22:47:29 -0800 (PST)
Received: by mail-pf0-f171.google.com with SMTP id z14so312297pfe.10
	for <poky@yoctoproject.org>; Tue, 20 Feb 2018 22:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=CcJZXifCTXYPArY9fAZFcuJCA13JHwts8Wdxe22/qU0=;
	b=l9MqINFRN7EKpWwvoiGu0UFRFioTZS1VfPqDuDZBGkY1T/a9dUNL+UhQNGfCajBc0B
	5NlQuP4axCGTNEHnduHvhWMzraFbUABugaAfFHhhr9zsPo1c67sBGFZYF+2BkfUbMuFY
	9Bgj4wYYzjg0e+pms/6uZZS9yWfpbI2RcIp/hx/Xy4eUcVGLJIdXF9WEqgfFPVOE3Iv3
	EX57mfbvrk3hcufZSZ1Oovgtz2LvPMD8pWo9JGgjgegkcLqPl3esgX9G26qrXfe6wlJY
	nmSsuqIj3HQC5iXIk1TtMKLDWdmCD7W/4225kGA7d2d8BYKy53vfnGkNT66jVPH80W8R
	NvwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=CcJZXifCTXYPArY9fAZFcuJCA13JHwts8Wdxe22/qU0=;
	b=mpCuT0PbP4ObLVc/fVE9I4sZWOvGAuGBO/LSdEDwruKf2pxtTL6ewNXOYnRBP/shHy
	CgrTRI0EPJD/50nQHDVZO3y8a8tFQXRVVrjuooN06KJrXlJ9hL0w8rycSSvdAq6k4KEZ
	FHf2Ux62yuZ+CEtuMhUtBsk6CggPh9hh7prSTPSJNA4ZFuckvhyUZl1Zfu9sPpYi7A43
	vaHXyxDSELft3Txz+5dqGntv6WoCZU5aIWQJjAqMdvz9E4WbH2W3C8EUFfBLMHoDAAqK
	YzKLxBj5VmI4qbbrDxBBv8olqWI3uVmTpaqdi3zwxC5kLvDYZ9gSMGmt8SPAfe7Mt/4r
	K5LQ==
X-Gm-Message-State: APf1xPBaBoZNIvN51rAKxj/31H7yI7XyIUPS3xnftdfYwBjXJ1fbhqkz
	FjYM7wavnggzP0JpV82M89nZkuRiw5nFw4+PpozvVw==
X-Google-Smtp-Source: AH8x227AJBP5WJKGBrPmTx+1gYOzY9EdMH3S1prfncpfgPlUB+481SdnHPZOxTOW+zuXTc2XalhECl/WdzwB9JjXFs4=
X-Received: by 10.98.206.134 with SMTP id y128mr2309952pfg.34.1519195649284;
	Tue, 20 Feb 2018 22:47:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.162.240 with HTTP; Tue, 20 Feb 2018 22:47:28 -0800 (PST)
From: Jaymin D <jaymin.linux@gmail.com>
Date: Wed, 21 Feb 2018 12:17:28 +0530
Message-ID: <CAL02zyvH0bZ8bXBycqt-+eg3MhceHu1fLsavnuTKyXh1__7Nhw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Macro defined in .bb file: How use/add toolchain or target system macro in .bb file?
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
X-List-Received-Date: Wed, 21 Feb 2018 06:47:30 -0000
Content-Type: multipart/alternative; boundary="94eb2c13f304051e1f0565b34d0d"

--94eb2c13f304051e1f0565b34d0d
Content-Type: text/plain; charset="UTF-8"

I want to use/add my target system "aarch64-oe-linux" into .bb file, so can
assign or can use the target system name dynamically in .bb file.

E.g.:
Currently in .bb file its as below:

./aconfigure --host=aarch64-oe-linux

Requirement is as below:

./aconfigure --host=${macro_defined_for_target_sys}

Below is the output of my build configuration:

BB_VERSION        = "1.28.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "LinuxMint-18.3"
*TARGET_SYS        = "aarch64-oe-linux"*

What is the macro defined for "TARGET_SYS"?


-- 
Regards
- JAYMIN DABHI

--94eb2c13f304051e1f0565b34d0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I want to use/add my target system &quot;aarch64-oe-linux&=
quot; into .bb file, so can assign or can use the target system name dynami=
cally in .bb file.<div><br></div><div>E.g.:</div><div>Currently in .bb file=
 its as below:</div><div><br></div><div>./aconfigure --host=3Daarch64-oe-li=
nux</div><div><br></div><div>Requirement is as below:</div><div><br></div><=
div>./aconfigure --host=3D${macro_defined_for_target_sys}</div><div><br></d=
iv><div>Below is the output of my build configuration:</div><div><br></div>=
<div><div>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.28.0&quot;</div=
><div>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quo=
t;</div><div>NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;LinuxMint-18.3&quot;</di=
v><div><b>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;aarch64-oe-linux&=
quot;</b></div></div><div><br></div><div>What is the macro defined for &quo=
t;TARGET_SYS&quot;?<br></div><div><div><div><div><br><div><br></div>-- <br>=
<div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>=
<div>Regards<br></div>- JAYMIN DABHI<br></div><br></div></div></div></div>
</div></div></div></div></div>

--94eb2c13f304051e1f0565b34d0d--
