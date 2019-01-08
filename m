Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4846E00CCC; Tue,  8 Jan 2019 09:32:20 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.46 listed in list.dnswl.org]
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF63AE008C6
	for <poky@yoctoproject.org>; Tue,  8 Jan 2019 09:32:19 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id a11so4181890otr.10
	for <poky@yoctoproject.org>; Tue, 08 Jan 2019 09:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=M5+8Z97QX+YlRfmrBe9IyStVcP1I6yOy6IsBL2jcAP0=;
	b=IZGMKsFMuewBdRIgEtEovSBza+n0DFpVspb21GUYUIw2f5gqCG2PhLZlOKutwrxinr
	brhiAvpXPgdfLX/6qKKYB59OC0RUtt9U1thVF3ZJVaT00nhREvKjj1RXn0ezkqrXy0ya
	T3VSlo/GlBkj+KgFXkQ69Kz8OzKtm+UONlIKmQ+3KaLa08eq3t6TrrcO5UVFVAxou7HC
	/QHa8I5Ii2zRWydveeF4M5eLPQzJhn+zR2yJWSXmh8kYTWmBn6nhob+g066t0TzGTMSd
	wChVyfI2t3yd4lpv3s0ftVKrrY0bXmLRznFa1wm2bIMnw4wsD4oTwIkPX2g73tCl4SZF
	Eh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=M5+8Z97QX+YlRfmrBe9IyStVcP1I6yOy6IsBL2jcAP0=;
	b=H0Oloo2sjAhPHCevqspKmRzgUB4xc2jOAFDi5v7zNfxkkotRIsZlWPW31BW4jOvbCM
	wU/9JDH6E/CmByASlvxQ6m59xY2imEbR64gmzULdnpk13e5GKBll+iEt8Z+m/TT2nkT5
	JtvWXEjYwy1xUArX4xkL9I1ZhDzOyh4CcesjrpuON8q4VRYsCDIIZmoQFu3QoaB9QL2h
	t6vFbiCvlrEhDnYOT8szs2jQ5e4pqaWZcJ3jNyd3eJazUUUuLj5SPlB3DD6CHFnNiz3K
	az+D5Eaq6vlDgNq2W0/BliLDShvfuclN8F/QAKLP/SNcRoJ1E/PLYgdVp/R4SDpibu/b
	8M0A==
X-Gm-Message-State: AJcUukfI1N3Rg90EDatxckS/8Fpqe9NBZsG6r/h67D+OseCCAs6ljYRq
	UGWG+RO8q/WWX3MpKZr3ggKwaGwXHDncoP3kG4Y9RFlUveo=
X-Google-Smtp-Source: ALg8bN7HyzxY0KNKt/BWQHpRwwnot5qMx3xZNRIxvY0lyq6WVOvTYObkOME6dsr8NLh6c09eSvuDbT/W28hsaIbZo8E=
X-Received: by 2002:a9d:5cc2:: with SMTP id r2mr1767366oti.367.1546968739156; 
	Tue, 08 Jan 2019 09:32:19 -0800 (PST)
MIME-Version: 1.0
References: <20181227154759.32610-1-dpfrey@gmail.com>
	<4f826e16-a109-dd36-039d-50950c580168@gmail.com>
In-Reply-To: <4f826e16-a109-dd36-039d-50950c580168@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 8 Jan 2019 18:32:06 +0100
Message-ID: <CANNYZj8xnWUJ_sQmqCAPgWixj1inebE6V-+OzddCbQyJTNStGw@mail.gmail.com>
To: David Frey <dpfrey@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] bluez5: Fix status subcommand of init script
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
X-List-Received-Date: Tue, 08 Jan 2019 17:32:20 -0000
Content-Type: text/plain; charset="UTF-8"

The patch should be sent to openembedded-core list.

http://lists.openembedded.org/mailman/listinfo/openembedded-core

Alex

On Tue, 8 Jan 2019 at 18:15, David Frey <dpfrey@gmail.com> wrote:
>
> Hi,
>
> This is my first time submitting a patch to this mailing list.  It has
> been 12 days and I haven't received any response or acknowledgement.  If
> there is a problem with the patch that I submitted, please let me know.
>
> Thanks,
> David
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

