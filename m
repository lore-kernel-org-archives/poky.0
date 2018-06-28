Return-Path: <evd16i006@iiitdm.ac.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD631E0108C; Thu, 28 Jun 2018 03:16:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6B39E00B57
	for <poky@yoctoproject.org>; Thu, 28 Jun 2018 03:16:40 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id c9-v6so2264529pgf.5
	for <poky@yoctoproject.org>; Thu, 28 Jun 2018 03:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=iiitdm-ac-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=X1sk9vZEN4rvy5i2V1VXqGVHI3arUBWaLTmR38BfZBw=;
	b=P8Ey5ZBWVAGTxhDsFtrYqfDOyPeLW9jD6ar5UcxJ8p95crwUM5mprzDjpHd35m+OrI
	Elqno/zUZmNY7Gkq4AGesX/pGRcMH9RSxzUxC4MPg9VwrVJ5BFz08gxYd0iFxnJO6P3u
	ZglLp2OiY3HFlDrYnkY/Pkfw2nCfxAY6D85XWF2NnewBiWNb/Ei4Sw2stllObK4hz0Cp
	zCCcPsj+K8ZmyOBt/e2WUx5LRRmGX0/KiXgXl+mO2MnG+/TnmP5t5wy+Q+IswvBCZ/0i
	y/Ae05jJIACpk0ibldyYTCy+reUWrdDwuQgmyVusPxILIhrr4XgGmt5/cUCF9VCy81Mn
	JqgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=X1sk9vZEN4rvy5i2V1VXqGVHI3arUBWaLTmR38BfZBw=;
	b=Scp9T8knTrBLwOV3SW9OWLdv0hMd9zngjcnb7A6FOIWlkKADorWecC143b9LUkrBFm
	SsFMr8ju1ENdrdCHXnbqW2MqF4ksfdlYUBtyeE+y1Tw0qquzN7MIPqWY1+NtRBoN+49n
	3WhGPTtS2mDiggdktMUuGQMbEhbw26YTzD9oitqza2uM2Rkj7Rp7pP+NpKe+stcCbbR2
	ov+6k9YDB3GOSBCn1VN5hT3TLpQv4XU+7WV/nv6101uZV0YV25q+nJKw+Hlk7ooJ6rBG
	Vyo1BY3cY7LA+tLHM9RCDseHRBJTYcuXSS1oGbdAGD9+pd8emMD/w4+goMqgoQwpzXIx
	W0iA==
X-Gm-Message-State: APt69E25ZkXxjo1H9w1+72P0IgOsAhoHu5n1cNsJjLuSBzkRFnvFAqio
	LYrzXDSb27Fb1/TjN2rxcN29OvTP9FJMZLtxL0X48Ipg
X-Google-Smtp-Source: AAOMgpf4z367eYDHP2Dg7HUfuenwIhOzgl1DIOg3j83Ftz+drTaRSAUUxo2f2CK1t5wUuLjp9SpZW5eOzuxjh1ZNX6w=
X-Received: by 2002:a62:449b:: with SMTP id
	m27-v6mr9613147pfi.130.1530181000089; 
	Thu, 28 Jun 2018 03:16:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:a081:0:0:0:0 with HTTP; Thu, 28 Jun 2018 03:16:39
	-0700 (PDT)
From: HRISHIKESH HEMANT BORATE HRISHIKESH HEMANT BORATE
	<evd16i006@iiitdm.ac.in>
Date: Thu, 28 Jun 2018 22:16:39 +1200
Message-ID: <CACW=nhQwW3KKyhzPK2SFqy+z+jzCa+guBq4so4QYgj=y7p34xw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Building poky kernel with pre-compiled toolchain
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
X-List-Received-Date: Thu, 28 Jun 2018 10:16:41 -0000
Content-Type: multipart/alternative; boundary="000000000000f3ed11056fb106f9"

--000000000000f3ed11056fb106f9
Content-Type: text/plain; charset="UTF-8"

Hello,

I have build the riscv-gnu-toolchain from here
https://github.com/riscv/riscv-gnu-toolchain

with march="rv64imafd" and mabi="lp64d"

But, I am unable to use it to build the poky kernel. I tried changing TCMODE
with this link as reference but it didn't work.
https://www.yoctoproject.org/docs/1.8.1/ref-manual/ref-manual.html#var-TARGET_ARCH

I also tried referring to section 3.1.3 of this manual
https://www.yoctoproject.org/docs/1.8.1/adt-manual/adt-manual.html#extracting-the-root-filesystem

but this is giving the following error
ERROR: Task
(/home/hrishikesh/cr/riscv-poky/build/../meta/recipes-devtools/gdb/gdb-cross_8.0.bb:do_compile)
failed with exit code '1'

Please help me to build the kernel with my pre-compiled toolchain.

Thanks and Regards,
Hrishikesh Borate

--000000000000f3ed11056fb106f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I have build the risc=
v-gnu-toolchain from here <br></div><div><span style=3D"font-size:10pt;font=
-family:Arial;text-decoration:underline;color:rgb(17,85,204)"><a class=3D"g=
mail-in-cell-link" href=3D"https://github.com/riscv/riscv-gnu-toolchain" ta=
rget=3D"_blank">https://github.com/riscv/riscv-gnu-toolchain</a></span></di=
v><div><br></div><div>with march=3D&quot;rv64imafd&quot; and mabi=3D&quot;l=
p64d&quot;</div><div><br></div><div>But, I am unable to use it to build the=
 poky kernel. I tried changing TCMODE</div><div>with this link as reference=
 but it didn&#39;t work.<br></div><div><a href=3D"https://www.yoctoproject.=
org/docs/1.8.1/ref-manual/ref-manual.html#var-TARGET_ARCH">https://www.yoct=
oproject.org/docs/1.8.1/ref-manual/ref-manual.html#var-TARGET_ARCH</a></div=
><div><br></div><div>I also tried referring to section 3.1.3 of this manual=
 <br></div><div><a href=3D"https://www.yoctoproject.org/docs/1.8.1/adt-manu=
al/adt-manual.html#extracting-the-root-filesystem">https://www.yoctoproject=
.org/docs/1.8.1/adt-manual/adt-manual.html#extracting-the-root-filesystem</=
a></div><div><br></div><div>but this is giving the following error</div><di=
v>ERROR: Task (/home/hrishikesh/cr/riscv-poky/build/../meta/recipes-devtool=
s/gdb/gdb-cross_8.0.bb:do_compile) failed with exit code &#39;1&#39;<br></d=
iv><div><br></div><div>Please help me to build the kernel with my pre-compi=
led toolchain.</div><div><br></div><div>Thanks and Regards,</div><div>Hrish=
ikesh Borate<br></div></div>

--000000000000f3ed11056fb106f9--
