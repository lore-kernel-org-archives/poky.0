Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E4C1E00A7B; Tue, 27 Sep 2016 18:23:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD144E00A44
	for <poky@yoctoproject.org>; Tue, 27 Sep 2016 18:23:44 -0700 (PDT)
Received: by mail-ua0-f181.google.com with SMTP id l16so7346488uaa.1
	for <poky@yoctoproject.org>; Tue, 27 Sep 2016 18:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=alL+R7uVGjYO1isSTMN9guxNdoBAeu9MB03Eny92nfc=;
	b=agNu31Gb+SyT1DsOjALRIz7EhLlGBO0INCykajUqLdP7tkmvTlptGaEDcm9RqIQfh7
	YTHkZOdl07JDVrWC1MPyzxsDcUyg7tekqXgRr971loXbL6dfe5m2SXCZGhEGEWm84OUv
	eaWSPiVde9iXIFvdj39JhFRNaDrH8d+ffpO4DtuVRbJGYLWGUlUomVL2Qz4jzmJn8Fej
	NxKYClmNP2IUYDK57nw7OUmE8a3JcLRxDIn7+li6BcizDEQXSIsmCJks59y22NIxTNFh
	cnTg6NNuMk43Q8FFBZgG6rPnClcg7T4/MuDt5nQU21EOUDLh42z4aXnFBPSRI+x8RrVM
	a2eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=alL+R7uVGjYO1isSTMN9guxNdoBAeu9MB03Eny92nfc=;
	b=GpRDsAgtKPIkOdqHpwObr4p81n415Sq4l0kYjwpx/XDqDuMmAcMK1TtfsnNz9OH6lW
	RG7EkbDBcEzE0/iYRbOwDfEyGBRLHeaXNIAH22bLmmM2gzvC3q7zG23ZQZjkb4xvpKCz
	txjsyAsT3LedjGd7u52ywPu239oZ9QnxF5rKDLjMjsQ0exCn19sWZiRk/gVUz781+0BW
	/++VxCqXqTe8iLhkrUQDpNRKfpSmhw1INGfetsL+HzTqm1Eg5eOpwi1tnqlMmLv5YEoy
	XQXyahZuisQc9LwYFmki+iwhKTolmoZ6/K3hEda8lQHuT9/LOoKCPsgXCDo0L3M3y7Ia
	s4Wg==
X-Gm-Message-State: AA6/9RkXtCkYxIU+BkcpWO11P2jDCRzgOjz4SrF/U+BoYvbxr9Duv5YBiJ9wM4bzYomDfuQknDZA3T6W6kl/Fg==
X-Received: by 10.176.6.2 with SMTP id f2mr3027074uaf.173.1475025823446; Tue,
	27 Sep 2016 18:23:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Tue, 27 Sep 2016 18:23:13 -0700 (PDT)
In-Reply-To: <3D83C703-8964-43A1-8141-21657FC3CAE6@gmail.com>
References: <3D83C703-8964-43A1-8141-21657FC3CAE6@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 27 Sep 2016 18:23:13 -0700
Message-ID: <CAMKF1so14HE9u5nq6V2PMW_s=HOuQQuki8eG98-pjoj0C46JTw@mail.gmail.com>
To: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: PACKAGE_CLASSES definition
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
X-List-Received-Date: Wed, 28 Sep 2016 01:23:45 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 27, 2016 at 4:19 PM, Jean-Francois Dagenais
<jeff.dagenais@gmail.com> wrote:
> Hi all,
>
> This one is for the experts... Does it make any difference whether a variable
> such as PACKAGE_CLASSES is defined in local.conf, the distro.conf or the
> machine.conf?
>

its a distro policy to having it in distro conf is appropriate

> In my particular case, I think the choice of package_rpm is really specific to
> the distro we define, not a local setting (local.conf).
>
> Thanks!
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

