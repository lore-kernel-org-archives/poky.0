Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E29DE00901; Mon, 28 Dec 2015 07:26:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4E02E008C8
	for <poky@yoctoproject.org>; Mon, 28 Dec 2015 07:26:38 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id l126so49509945wml.1
	for <poky@yoctoproject.org>; Mon, 28 Dec 2015 07:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=dHsLtu+lwisaajf29ECbZcyw3udeX3AhAkkt0nqhSrk=;
	b=UGd6sYUQ1gG9N/QgU2LTXKPcDdwzFK6+52YyuZ4ufDWCKN45yn/Cgbs9yyLeOrpm1v
	55+z0nw1qAH8iLtSWv0JApbt5A2ltkxKDTG9uvFA1jyHwk6SJ6sbyojxU0DgIf50NMfD
	OD3979syGKu+O2OzABlFxwo8wQHJ809R55QRNAQx3abRbUHdSKz3zepIufQLwNmBKs4v
	g/agPtzlIHHjienZGHIiFmc5uzv0S5Ib6LJ7j4XycqQxoDoj8GL7SUCROBFBAkfH/ald
	Ptm5K+5nLjmN1Pe5s0x31zSryPEaY9t3plRhc2OKIijI7NEeaAPo4CAvBTT3/LcUfQxe
	AU8A==
MIME-Version: 1.0
X-Received: by 10.194.79.227 with SMTP id m3mr58251076wjx.5.1451316397673;
	Mon, 28 Dec 2015 07:26:37 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Mon, 28 Dec 2015 07:26:37 -0800 (PST)
In-Reply-To: <CAA2DH4twfBS9UKcD+c15W7YQPD=yKyN83uTpaV31Zgohs9ivzQ@mail.gmail.com>
References: <CAA2DH4twfBS9UKcD+c15W7YQPD=yKyN83uTpaV31Zgohs9ivzQ@mail.gmail.com>
Date: Mon, 28 Dec 2015 20:56:37 +0530
Message-ID: <CAA2DH4sZdhuOwzqNNoSCkfAfoojMhXuzaArcp3brtzqwQ3guMA@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: PACKAGE_EXCLUDE not working (Custom layer)
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
X-List-Received-Date: Mon, 28 Dec 2015 15:26:41 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 23, 2015 at 8:51 PM, Prasant J <pj0585@gmail.com> wrote:
> Hi,
>
>
> I'm creating a custom layer for my imx6 based setup.
>
> In build/conf/local.conf I have added: PACKAGE_EXCLUDE = "imx-lib imx-test"
> but my custom image still tries to build these packages.
>
>
> Can someone please point out the helpful debug commands/steps to figure out
> why these packages are being included?
>
> Can PACKAGE_EXCLUDE be overridden if some other package depends on the
> excluded packages and is included?
>
>
> In my package exclude list I added other package groups that bring imx-lib &
> imx-test but still its being build. Any inputs will be of help!
>
>
>


I excluded the packages by adding IMAGE_INSTALL_remove = " imx-test
imx-lib " to my image recipe.


Regards, PJ

