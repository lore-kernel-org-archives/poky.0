Return-Path: <ravchand_jm@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 494D3E00A54; Thu,  8 Nov 2018 05:05:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ravchand_jm[at]yahoo.co.in)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.241.110 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic305-47.consmr.mail.sg3.yahoo.com
	(sonic305-47.consmr.mail.sg3.yahoo.com [106.10.241.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A5D2E00720
	for <poky@yoctoproject.org>; Thu,  8 Nov 2018 05:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
	t=1541682326; bh=q3KGuh8oxXeLgdgumGVTNcDEOIWC5eXeUbaNg8e+7IY=;
	h=Date:From:To:Subject:References:From:Subject;
	b=VjwRgLMBpE3I/rok6VMZ2WpsFFU43lvpEL/2xNf8tmKm1OwBaO6MUMCnxX/0Bk4PWx/aWVXus3zKZHmAAol27nRSll/4kVtYldGNwEMVPTS8jFtH37LxvaZCKbOeKtNmEOtbrpdzV56051zERAjGBtAnSpfVpW8nd86vSidMiTpDAIABhM3rQl5wW1+k8K0OV/JmcROZOCPh22sku1WO2gk179UAY2dA7YbHDx1JIZ/jEfsLVIvqLyHwNOQfF/hWC/GhRTX3MAP/83BV2YJRSGDHC93LpNaQ4vLeY0QfzlFp10a3gJ/Y3mQCjlRoNt+N001wtEboXUVLSUtil/OnyQ==
X-YMail-OSG: 6GiGpmMVM1mI72khSNCNyIu_5ON2RP1HgyjyCzAOhJjCBS4u_rKRP3mws0UPV8y
	7WhfEoJUsnvRInrzvTaqdWwVmNb2_K.ic3Ty2KCHabEcmFM7GkSx77a_Zsijy7uCWDzbpOGu7j5R
	uK7di7J8lt_8PM1YAYSHZT2NssvZbQxpC2ptrjFoC6nQtyJo7lvlXzoPeAybcf8G9odm0JomSJVI
	JkNvfexw6Ju5eug4M5YJxTlXwmiOBEZek0VZcxDazF4GNyHbC05VBBX7FlD0khWSIXeYcsuHnlro
	5d_3EcMqCyidqa84UxDCnPaikauC3XkzgoZTc5J1sq.Df84l1gGQ.RSlBJM_eMKCIaykyPjFrTJC
	ED8JvnkwqUkWMJxRtXFJJ2p83PrTz83JbTf5xggUDXkodUBlFlxnSFwFkxmBcORAv.r1g9khnexa
	OvxjX.vONikmDQMDNWrAIb4almODs7deybxIceIi0BZGPS7yX4E9ImbIFRp3I7iUTAvYUFAyZJBz
	SG.GHHW5rPGM7oi4deNClALO3_vy2f3O3dLBedVm8a_pcqjYTA40P8wG7PrRlf1EY8CUCty1snvL
	AY6HzVMHq14VDk7rlk_9KBiKPeFWYRiYXdAkwGy8YCLVQi0xDFtBrdgpSi6pkWHzQX5dMY1nN0w8
	JydX7Mu3wRwJglpjD3fI2HWys8OLbb6h9ul3Je.Ia1G6KNvk1BOw43PvaMgEQA1IGtZ0NN4TS9TJ
	2Rf.d4.tLw5WhjgSe3uXAZXn.Err2jfN78zTFJtuUfUXUdxB34TXLbTjKaXOrHUJltDfdLN893Ks
	0OKlEdUnbbDSHbHov3ftOgxGThGYekN5MYJWJt08bFg9m3cQHMG_5D72NyxywXeslBUzxTRwdEpD
	XtD8X_SmZ0ebgdySeCwR.ynDVMRMo8uFaNtxPBIprUdS5MaTs0fFsoYlRphUFzB.qCI7SXnhmwHj
	ACM4qYZdz5SE8stMd2k6O8VWvjF8zV.LDf5T3ig--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic305.consmr.mail.sg3.yahoo.com with HTTP;
	Thu, 8 Nov 2018 13:05:26 +0000
Date: Thu, 8 Nov 2018 13:01:25 +0000 (UTC)
From: ravi chandran <ravchand_jm@yahoo.co.in>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Message-ID: <596462450.908260.1541682085636@mail.yahoo.com>
MIME-Version: 1.0
References: <596462450.908260.1541682085636.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.12710 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77
	Safari/537.36
Subject: lib32-glibc headers populated instead glibc headers in the SDK toolchain - yocto 2.2.2
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
X-List-Received-Date: Thu, 08 Nov 2018 13:05:28 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_908259_1079756558.1541682085634"

------=_Part_908259_1079756558.1541682085634
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi all,
I working as integrator in one project where both lib32 & lib64 need to be supported. Hence, lib32-glibc & glibc both are there in yocto build. There is an issue, I could not able to fix. In the final toolchain, after running "bitbake <image> -c populate-sdk", it is randomly, lib32-glibc headers are getting populated instead of glibc headers.
Ex: in the toolchain, <sysroots_dir>/aarch64/usr/include/endian.h - lib32-glibc seen instead glibc header.
Please let me know if anybody has any solution /work around for this.
Thanks in Advance,Ravi

------=_Part_908259_1079756558.1541682085634
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div>Hi all,</div><div><br></div><div>I working as integrator in one project where both lib32 &amp; lib64 need to be supported. Hence, lib32-glibc &amp; glibc both are there in yocto build. There is an issue, I could not able to fix. In the final toolchain, after running "bitbake &lt;image&gt; -c populate-sdk", it is randomly, lib32-glibc headers are getting populated instead of glibc headers.</div><div><br></div><div>Ex: in the toolchain, &lt;sysroots_dir&gt;/aarch64/usr/include/endian.h - lib32-glibc seen instead glibc header.</div><div><br></div><div>Please let me know if anybody has any solution /work around for this.</div><div><br></div><div>Thanks in Advance,</div><div>Ravi</div><div class="ydp74ca487cyahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"></div></body></html>

------=_Part_908259_1079756558.1541682085634--
