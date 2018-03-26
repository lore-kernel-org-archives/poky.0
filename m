Return-Path: <ruica.cristina@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1D83E008E4; Mon, 26 Mar 2018 14:17:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ruica.cristina[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [66.163.189.147 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic314-21.consmr.mail.ne1.yahoo.com
	(sonic314-21.consmr.mail.ne1.yahoo.com [66.163.189.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43F62E0084A
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 14:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1522099058; bh=Ts6x500HQ9zLa4YP/NKZjxUrMqPaxl5iZ/N+0IWSOPw=;
	h=Date:From:To:Subject:References:From:Subject;
	b=BdO0mIBAQWur3Abq7MqXlW5OM6ZxWiMmYznp36Cg1ET++ErJYSIuS9oY2eXGcnr8Hz8AWvw8yF1KZkIOOB3aRYQmJ7FK4REgszFG8FNM1nJEg5cp3aexDXIgZ4YkAexQrKwhLc9K/w53wZJZZMCqmBPNJ6kXHm8r+5avMUfxIVbH8yJ/fhIECrk+haraNykNQ3aCmXD4NLqPHgCp75OriKSiGUYNU+23XcasW4g2PnOsVlCFy7ScjIyvjz2NuvmvFDrXtVPopVhWYnusvd6CChtWgx22dcbhp47MQ4HIONs1Z8g16qx5RZGaTmOnt+IDWEf5gScCSteuBx0WNHeREA==
X-YMail-OSG: 7480RVUVM1kqWblQNpWzWoKMC.QTisa3aOS7bC9uU.LajorVJ5ahJoW1bZ.bQg0
	TeH4SStfU3ZwDKFBpmnpUijP9_4JDZWfpLp2Hu3x2KsblEch9mzIRyG3t80o1__Qc9WfelaatYLz
	aPrsiEUAY8vtTXJPbXPdEuZhkrJ7cbFX6Kz_o0SnGCwbp2_EHZ8SPstsCOjYSAMksosSeYUU5Xx8
	5uWnk5dBULJdRPjVSUR6n8rl.7zjljfX.Frr7ZFuO5FLiASHbY3VS.33pDi2k_3jmj0CWj63JTl7
	ZzdkOWxm.chzkIYeq4ygTkEU8N7oQBWqBvPPR5HxMe9I0.1TdOWWaE2nZ0D4FUT2rHNPNOaXnG24
	_7kXwYepPyi4ztTnwEGCV09pk_9aViiYCoN8B4ZI9ppZRothz0x5eiqXypjRlFPCXCf_KVK3TIGS
	3rrxD4HlvMRq36yAD5mXyUGZk7zCVllFiMLu4
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic314.consmr.mail.ne1.yahoo.com with HTTP;
	Mon, 26 Mar 2018 21:17:38 +0000
Date: Mon, 26 Mar 2018 21:17:37 +0000 (UTC)
From: Ruica Cristina <ruica.cristina@yahoo.com>
To: poky@yoctoproject.org
Message-ID: <913813716.1318110.1522099057513@mail.yahoo.com>
MIME-Version: 1.0
References: <913813716.1318110.1522099057513.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.11588 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181
	Safari/537.36
Subject: (No subject)
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
X-List-Received-Date: Mon, 26 Mar 2018 21:17:39 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1318109_1904075085.1522099057512"

------=_Part_1318109_1904075085.1522099057512
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

rocko..i tried to edit local.conf file and add=C2=A0
package_Classes ?=3D"package ipk"and it won't let me bitbake..i m kind of n=
ew in this and i don t know how to manage it..

------=_Part_1318109_1904075085.1522099057512
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div><div style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">rocko..</div><div style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">i tried to edit local.conf file and add&nbsp;</div><div style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;"><br clear="none"></div><div style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">package_Classes ?="package ipk"</div><div style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">and it won't let me bitbake..i m kind of new in this and i don t know how to manage it..</div><br></div></div></body></html>

------=_Part_1318109_1904075085.1522099057512--
