Return-Path: <kumar.ugesh003@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A607E0084E; Wed, 16 May 2018 09:15:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kumar.ugesh003[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.241.40 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic307-23.consmr.mail.sg3.yahoo.com
	(sonic307-23.consmr.mail.sg3.yahoo.com [106.10.241.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66990E005A9
	for <poky@yoctoproject.org>; Wed, 16 May 2018 09:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1526487352; bh=RS7G7+HLR9LsO8TjQXLna7FUaVPzVib5Y6FhBO3Ii/s=;
	h=Date:From:To:Subject:References:From:Subject;
	b=LlmJyppqHfLbTVxnNo/rD9ELKVCL5eMVe0O9UPe97h5tkB2e5WmQvqYpKn3C0hv9Lp3nNJHeyJDFTMsuWmVr62amxR26LOmkVMRw2hqazjh/s/xgNq6AE98WIg2JGtFkeP7lUGPU8yGsUWmkkVg176UZsFbmZWrqXmTUh6oPp7fUGRpvHh0H7ZYETJYcsjstMAxGeXBas+IXQGoXZajdOJABA6OoeJfdzPdOV/X8XlVp4LP3HkfC5nwtli5tgXmx9tiAMSfM1tjVDfW+49LiCPCE1ny6a6GR2HhOAhed9ddQMO6iCWOWxVyjEwwQ1ot8yvg3ndiCMgDvfrupLRZVmA==
X-YMail-OSG: CPZzfPoVM1n7buP955WTYS3t9OkIYtRVt.tWe1xPHKQFhEHziEKG0LEbwHHGQkV
	IMzKiEY78Joxg565Jxuu6z_AxD0hfTSmySWIfGPV34GWmklK1U4UNLPw_Ieru5MaSWbqVc_SDfKI
	E5QdG2T.bA4b3GXK1pEyTsfLcj0oselyVh7KXXuEqebZLagP2DKV7F4bgUXvyW06uOEN0y9Q02gt
	qa.raWsUpTXed8MAon21HunnpakEHVPXBZXJelcNIwL._IXVjTjwM.Z0x0hdvH8QqDNm_xkjbaaD
	fgF0ZU3pNV1KpDshwIONtL6bEvjPFE8qk8m9n8rITWDWMUoFUx0xgUmfnDjE0ZFvWG4gXVq3z3ie
	W6pniZSaUZkHQjtyvPfXSeejtqr2ay5p18yB.h7BGcbnWab1PJwALYiEAUORZyGYo7pEG4tqde6X
	fBSPW80gxpANXD1VSyDdhOo36x2MnVa4vJKzNJTVGi2jEoizC1Ts6Birsrk4OzYSJ67cnx7B8t8z
	jTi3CLJFleqF3L_ttwHqkbcf1z_zIrNtBlqvEV_LKlKMwuY9v8SBij6jYkpT654B0rLf_U49Em8L
	UTMXrzyvP7rzgnyMFimTvPiizl95.3OFRuEzokZNnMvCylE2m8Zvtn1Ckrw--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic307.consmr.mail.sg3.yahoo.com with HTTP;
	Wed, 16 May 2018 16:15:52 +0000
Date: Wed, 16 May 2018 16:15:51 +0000 (UTC)
From: Ugesh Reddy <kumar.ugesh003@yahoo.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Message-ID: <255564529.2119259.1526487351528@mail.yahoo.com>
MIME-Version: 1.0
References: <255564529.2119259.1526487351528.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.11871 YMailNorrin Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu
	Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36
Subject: routing trace to syslog
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
X-List-Received-Date: Wed, 16 May 2018 16:15:55 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2119258_1731940802.1526487351525"

------=_Part_2119258_1731940802.1526487351525
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Team,
=C2=A0 I have written a recipe which set the trace device to std-out=C2=A0a=
nd it works fine and could see traces from own application=C2=A0in the cons=
ole of=C2=A0qemux86 but now want to route the log to syslog and have set th=
e trace device to syslog in sources(setTracedevice(syslog,tracelevel,messag=
e)) but it doesn't work.
Now could you please some guide me what is the necessary=C2=A0modification=
=C2=A0required to route the trace to syslog so that it will be written in=
=C2=A0 /var/log/message?
Regards,Ugesh


------=_Part_2119258_1731940802.1526487351525
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:16px;"><div><font size=3D"2">Hello Team,</fo=
nt></div><div><font size=3D"2"><br></font></div><div><font size=3D"2">&nbsp=
; I have written a recipe which set the trace device to std-out&nbsp;and it=
 works fine and could see traces from own application&nbsp;in the console o=
f&nbsp;<span>qemux86 but now want to route the log to syslog and have set t=
he trace device to syslog in sources(setTracedevice(syslog,tracelevel,messa=
ge)) but it doesn't work.</span></font></div><div><font size=3D"2"><span><b=
r></span></font></div><div><font size=3D"2"><span>Now could you please some=
 guide me what is the necessary&nbsp;modification&nbsp;required to route th=
e trace to syslog so that it will be written in&nbsp; /var/log/message?</sp=
an></font></div><div><font size=3D"2"><span><br></span></font></div><div><f=
ont size=3D"2"><span>Regards,</span></font></div><div><font size=3D"2"><spa=
n>Ugesh</span></font></div><div><font size=3D"2"><span><br></span></font></=
div><div><font size=3D"2"><span><br></span></font></div></div></body></html=
>

------=_Part_2119258_1731940802.1526487351525--
