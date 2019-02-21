Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48952E00872; Thu, 21 Feb 2019 00:39:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.46 listed in list.dnswl.org]
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DDFDE00872
	for <poky@yoctoproject.org>; Thu, 21 Feb 2019 00:39:51 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id t18so29033678wrx.2
	for <poky@yoctoproject.org>; Thu, 21 Feb 2019 00:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=C5/IjwFrkjYjjT4ERvsRiA1LwK4KIIpynkNlOCl+oJ4=;
	b=BMUjzbC3EvQnmdrrDduFWbxVCbd/WkAjU/ZOmMtRhM1xExQdNWYtrADEzW5mbfDGQ+
	NsU78MKRLBTDxvh4X56wkyAmZT7trbX4D7v4MZ1hpvtbrXO3hM6vAHSK5d1hYHc3epUA
	CCk9UrUBOSrsOXhgNq/eYp2+Sc342kSl+J9Cc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=C5/IjwFrkjYjjT4ERvsRiA1LwK4KIIpynkNlOCl+oJ4=;
	b=cpL0GN7rDcOjDK0eOmpPk1ej0oTivQyyNCJMPafiyojeYtr/oJ2Wls4xdUktBAYGAe
	dNr2SaFOd1YxmzhsHr3ypg2yeW68yfjxKDfsETKDyM438gQmBQ0CCtk0YW1hZkPkBGmZ
	6Sg7XtGyk+tjdGrB6hcW25tnZARob6d8SeMMMbP8pxzssKcEWahv4iNKT4QREvVNGxaG
	NdiFPQO4nDdra+ybb6aRMFUDM6xcGc+/KB9OeEY28dbfyvv0wF0gop/DE/7N+kA4ch9+
	N4SoTrYf5svKYGS2rrS/wvEEmKT2KsmtVi+911HP0NmrnCaSVo8qvWYffvZYihx38Tr7
	H73g==
X-Gm-Message-State: AHQUAuYrGRrkiSMJc4YNwVeg7dbfuJ6E1jRD0XNOw7UDYoSrxoGQSCQl
	LNmLvxGd/0+szCt2gUjwpYGOBg==
X-Google-Smtp-Source: AHgI3IaP6Y8ONsRt1BaedRh96cS2CnXyoWFRw62oL9d8u8OLDqlcEKh5oY0Zx2X+AC3l/fMSzytFaw==
X-Received: by 2002:a5d:6b43:: with SMTP id x3mr7846589wrw.76.1550738390655;
	Thu, 21 Feb 2019 00:39:50 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	i10sm45745634wrx.54.2019.02.21.00.39.48
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 21 Feb 2019 00:39:49 -0800 (PST)
Message-ID: <fb56c5a22ef29ad19d22dbc3598bd07c5e1361e4.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: =?UTF-8?Q?=E5=BC=A0=E5=BF=A0=E5=B1=B1?= <zzs213@126.com>, poky
	<poky@yoctoproject.org>
Date: Thu, 21 Feb 2019 08:39:45 +0000
In-Reply-To: <7c6e0a78.52cf.1690ed63a5b.Coremail.zzs213@126.com>
References: <6924cb17.721d.1690a3583ba.Coremail.zzs213@126.com>
	<3512d45d-fb35-5d45-f6c5-f90334d5a97c@windriver.com>
	<7c6e0a78.52cf.1690ed63a5b.Coremail.zzs213@126.com>
User-Agent: Evolution 3.31.90-1 
MIME-Version: 1.0
Subject: Re: how to known whether a .inc file had been include
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
X-List-Received-Date: Thu, 21 Feb 2019 08:39:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2019-02-21 at 14:55 +0800, 张忠山 wrote:
> 在 2019/2/21 上午10:55, ChenQi 写道:
> > On 02/20/2019 05:21 PM, 张忠山 wrote:
> > > In my recipe, Would include a foo.inc.But if it
> > > had been include in other place, I won't include it duplicated.
> > > So howto check whether foo.inc had been include?
> > 
> > I haven't ever met such requirement. So instead of trying to figure
> > out how, I'd suggest to take a look at why you have such needs.
> > Maybe you change something else and do not have to do this after
> > that.
> > 
> Dose this means there is no way to known the inclusion status?

You can check whether some variable is set, or you can look for the
name in the BBINCLUDED variable. 

As the previous reply says, its an odd requirement and people don't
usually need to do that so it suggests you're trying to do something
unusual people don't need to do...

Cheers,

Richard


