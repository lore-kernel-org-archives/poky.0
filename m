Return-Path: <cJ-poky@zougloub.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3239EE00BE8; Fri, 11 Jan 2019 07:24:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FROM_EXCESS_BASE64,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from zougloub.eu (zougloub.eu [69.70.16.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BE9AE009EB
	for <poky@yoctoproject.org>; Fri, 11 Jan 2019 07:23:59 -0800 (PST)
Received: from pouet.cJ (exmakhina.com [69.70.16.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by zougloub.eu (Postfix) with ESMTPSA id 998E32900EF;
	Fri, 11 Jan 2019 10:23:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zougloub.eu;
	s=zougloub.eu; t=1547220238;
	bh=eymQVIFzu2pOo8OWsvfRi6L3VtIcnhJM/ANhutl5GXM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=okHAud2l2uioHOy7+cgBDdYRhesdwuhosc6r2ZBCpVuYljOe3kNpzD7mBuffUzokM
	ULquIGr3zUEbWOz7bWCjG5gNZeye3lhZupv9EPcFHiQaUA900m3P/+VZ7ydCJ5RQ8E
	LlUGyiCBWjYGwO9wo09cHQelhTxUI/KpSz5aEUFM=
Date: Fri, 11 Jan 2019 10:24:06 -0500
From: =?UTF-8?B?SsOpcsO0bWU=?= Carretero <cJ-poky@zougloub.eu>
To: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Message-ID: <20190111102406.72248e7a@pouet.cJ>
In-Reply-To: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
References: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
X-Mailer: Claws Mail 3.17.0git74 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: thud systemd root home wrong
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
X-List-Received-Date: Fri, 11 Jan 2019 15:24:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 11 Jan 2019 09:44:04 -0500
Jean-Francois Dagenais <jeff.dagenais@gmail.com> wrote:

> ExecStart=3D/bin/bash -c "echo HOME:$HOME"

Hi Jeff,


Sounds like you like tackling root causes ;)
I remember something like that and instead cowardly did:

 Environment=3DHOME=3D/home/root


Regards,

--=20
J=C3=A9r=C3=B4me

