Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ADFCE00CDE; Tue,  8 Jan 2019 04:07:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F33BDE00CD1
	for <poky@yoctoproject.org>; Tue,  8 Jan 2019 04:07:18 -0800 (PST)
Received: by mail-ot1-f50.google.com with SMTP id s5so3251265oth.7
	for <poky@yoctoproject.org>; Tue, 08 Jan 2019 04:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=j88OUgiyRjpxVTj4NtcLte7dyo++LZhetklMg8uzmAo=;
	b=RniDo6bucxRJk8d8t7dQ/IlqQkQFkCkGbHvX7UE7/IFoFfHkUv+7+ruV6OJlInPMj/
	Twt/9gZU40SKYJcMSOn9N8mmbTqF2JxcXehje49uaBEr80/FwL/aSEAHrYxwxs0VxDA/
	88rZ3R+v7qxhDjr6ryzypcYW3uiBLo60ElzqVPCLTBz9FXDg/VZym2J2qlJMwAuXV24H
	Hrf+CJeTUPm+EhSTu8BvCaIZk7f+b1+Xm4mRSfEdJfM8HMG3jfZzp3xnUnnVP+gBiGi6
	qnXRekD2daT37OhIdeIJxAZidSfPhc/Qzzm13hXZYzt5ROOqHXa1gC8ec0Dk9uiVIYZ5
	6irA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=j88OUgiyRjpxVTj4NtcLte7dyo++LZhetklMg8uzmAo=;
	b=XkfOp5f3pYgVX5xX05ea5dyQp8Muep+npCwz3ExA2hIP8Kl1AlUM0oSMcocwiqJnkG
	QS5fhbb0K1Uedtk/IYajfHPKdSPiQXa8VD0O1uGJI1sCRhIzMhpKduqKpK9FR5uVdo9w
	ACsAQ0WeBs+WrtMx8VgcJqpZOrh7EPHVgGDn5vSjwaZYzfzK3P5d7C25vJHGyiH7ntSl
	4qhaMAnezLNM9SBIEPltWJFW/W5wpRCC/IFpIxqivuPKVo+r6INkMC5/AGIbqtUE9g7w
	EithdN82ARPGb9RGzm5Un8HGMyaWxA7XzFxKGH425rmP3AtXP/ajztckwfkQdcRErjl7
	SyUg==
X-Gm-Message-State: AJcUukcVtnWBby18dRpsnxtbiQmmfyJcFcXBMBsjxW/OjnNAu7AUPWes
	5i/BR9ic7Y6Zcnh8uT0Gkt7IZdeCkXhnUoLtJm4=
X-Google-Smtp-Source: ALg8bN52cvZTkGB/42WQFvdkhv8iGTdM2UcczWqoBR1DKC+/nMHlaooVC3A0zat02xpj/u2t7L5sly+HSbLieWw0x/M=
X-Received: by 2002:a9d:69d7:: with SMTP id v23mr1076043oto.96.1546949238406; 
	Tue, 08 Jan 2019 04:07:18 -0800 (PST)
MIME-Version: 1.0
References: <CAAsE_udSqjYWVyeAq5tzF+mqr5ZpW+8wQtNLX0GtM-Q7_snuwQ@mail.gmail.com>
In-Reply-To: <CAAsE_udSqjYWVyeAq5tzF+mqr5ZpW+8wQtNLX0GtM-Q7_snuwQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 8 Jan 2019 13:07:07 +0100
Message-ID: <CANNYZj8YM_TJo4Ho6q9tAbnCy+VzrRTsBC1+mRffY+Ewzb2dnQ@mail.gmail.com>
To: Woody Wu <narkewoody@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: First try of Yocto Failed
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
X-List-Received-Date: Tue, 08 Jan 2019 12:07:19 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Jan 2019 at 12:52, Woody Wu <narkewoody@gmail.com> wrote:
> My system is ubuntu 18.10 and I have python 2 and python 3.
>
> Can someone please give me a clue? Thanks!

Please check out the tip of the thud branch, it seems to contain a fix for this.

Alex

