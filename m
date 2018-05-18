Return-Path: <kumar.ugesh003@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0467E009CA; Thu, 17 May 2018 19:27:01 -0700 (PDT)
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
	*      [106.10.241.211 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic308-21.consmr.mail.sg3.yahoo.com
	(sonic308-21.consmr.mail.sg3.yahoo.com [106.10.241.211])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A7E2E00942
	for <poky@yoctoproject.org>; Thu, 17 May 2018 19:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1526610418; bh=BH2sCfzQBNWrbOzV1EOYIuxrS3Bu4HHWNlqE906GU0U=;
	h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
	b=GDKi9l9dK6d6smoDG0z5oKOpoh3w7RHQTMP23VfVscPQ2z1My59nETqhlEVLHEAQE7sfLzZ3LdMrnDeR12LZMRGbJJskfE9/kCsj38gAUXT68tt5dxh92fgoLm0HVaf1U5aP7csdyZ0yhC222GIgYxr4DuyXMYQ/eEsNjXUfjfCz0gKQdniqcp34BMBGzPaUvExO5sRHz5nGH+nRMgMVR22X0afrmJs/Iq2RbR7NQcYiubdOtA/fv2vuT+t3fiwuKADMI00jZEbTi4/aPwpOS28OloqlA82lgTonguzQggNpxcfbHr8pa8PoncVpBN3l+Y4IZ0BiASUwy5Ll9i3q+w==
X-YMail-OSG: 45bI.SgVM1n6BFI_8CMBKitjUydTxuC.mGmnvypSgwJAdn6P8aJGXiJ9khs3R4h
	wlpLNmqNebDrLvMGs0MXfmf_wplxXuLbO.XdVbKR.jI.y3r4x.heEP1WginnYD2wRG6swaCOYdGj
	ZK5I2cFNSpjhDDsBt8shvkVchg_j8D8eiEK4Tb1Vm6B3i7pAOQu1fwUA8VDdMzMxLZ_iGWqMntSf
	HTKbyT28EtD0Iw0LQKsVxZ5MUY17E_4w5G9sPndzggukyLsL11tWy.2ttMyFL7_axh8A8ISjdx0W
	gSVLJhFaRVBwE0.FKMnYxrGWoi40cZ_FxlGrlC0GvjM0IsPxcXCceVwdmRTMqwpG2ejGT1tK7flo
	eq_OcXNeTrbaBIV8pfoEhhP5PuIB7DGRw9yEYVP5YOQEr.HlFwCW7ZoSqgWSQ2JCfYHF_KcD5bns
	HNrM3yftg9mHFRz67exDx_CySZa237JU_JF45TVStVMH50cwFBwmYrPOKBkqFkF4RagUkcq1GeCp
	ETT2XonHEsqvCONQyRUEf9fJGq_vnC_G9lEjcHFsq8J7n_zWzGvxUwMFTg1d2d5Ljfgqpp38gGnK
	ldWmgd9lc4l5me69b7VCFI_gb25iHdqV8c2bc6hfgXrAI13tysGyy1KycLRDCzQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic308.consmr.mail.sg3.yahoo.com with HTTP;
	Fri, 18 May 2018 02:26:58 +0000
Date: Fri, 18 May 2018 02:26:56 +0000 (UTC)
From: Ugesh Reddy <kumar.ugesh003@yahoo.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Message-ID: <637430538.2648582.1526610416916@mail.yahoo.com>
In-Reply-To: <255564529.2119259.1526487351528@mail.yahoo.com>
References: <255564529.2119259.1526487351528.ref@mail.yahoo.com>
	<255564529.2119259.1526487351528@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.11871 YMailNorrin Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu
	Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36
Subject: Re: routing trace to syslog
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
X-List-Received-Date: Fri, 18 May 2018 02:27:02 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2648581_374044438.1526610416914"

------=_Part_2648581_374044438.1526610416914
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,=C2=A0This will work by creating the syslog.conf?

    On Wednesday, 16 May, 2018, 9:45:51 PM IST, Ugesh Reddy <kumar.ugesh003=
@yahoo.com> wrote: =20
=20
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

 =20

------=_Part_2648581_374044438.1526610416914
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:16px;"><div></div>
            <div>Hi,</div><div>&nbsp;This will work by creating the syslog.=
conf?</div><div><br></div><div><br></div>
           =20
            <div id=3D"yahoo_quoted_7457956808" class=3D"yahoo_quoted">
                <div style=3D"font-family:'Helvetica Neue', Helvetica, Aria=
l, sans-serif;font-size:13px;color:#26282a;">
                   =20
                    <div>
                        On Wednesday, 16 May, 2018, 9:45:51 PM IST, Ugesh R=
eddy &lt;kumar.ugesh003@yahoo.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
                    <div><div id=3D"yiv4897114556"><div><div style=3D"font-=
family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div><=
font size=3D"2">Hello Team,</font></div><div><font size=3D"2"><br></font></=
div><div><font size=3D"2">&nbsp; I have written a recipe which set the trac=
e device to std-out&nbsp;and it works fine and could see traces from own ap=
plication&nbsp;in the console of&nbsp;<span>qemux86 but now want to route t=
he log to syslog and have set the trace device to syslog in sources(setTrac=
edevice(syslog,tracelevel,message)) but it doesn't work.</span></font></div=
><div><font size=3D"2"><span><br></span></font></div><div><font size=3D"2">=
<span>Now could you please some guide me what is the necessary&nbsp;modific=
ation&nbsp;required to route the trace to syslog so that it will be written=
 in&nbsp; /var/log/message?</span></font></div><div><font size=3D"2"><span>=
<br></span></font></div><div><font size=3D"2"><span>Regards,</span></font><=
/div><div><font size=3D"2"><span>Ugesh</span></font></div><div><font size=
=3D"2"><span><br></span></font></div><div><font size=3D"2"><span><br></span=
></font></div></div></div></div></div>
                </div>
            </div></div></body></html>

------=_Part_2648581_374044438.1526610416914--
