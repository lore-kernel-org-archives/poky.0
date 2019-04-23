Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C660E00950; Tue, 23 Apr 2019 06:24:48 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DD0CE00D4C
	for <poky@yoctoproject.org>; Tue, 23 Apr 2019 06:24:47 -0700 (PDT)
Received: by mail-ot1-f68.google.com with SMTP id j10so12789421otq.0
	for <poky@yoctoproject.org>; Tue, 23 Apr 2019 06:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=1gfPq/xAc4+KVouuCJVEZ+NHIEBu8OXLP3raJby7eAI=;
	b=eY7yXc6ESDaYlczf8GEl0iKdP+csGOwQGS6CaCpFAbO7BmqsXLH1ih6oPLhGbKPdrT
	146GyGE4+uQGeCJlDH+BvOadH4usfyT4p2q4pFTghy2FkV77fJynbh83HsnyQqq2RI3l
	fSi001zbE18O1d2ptJq8jCjMYRNmfwiBdlfze/HXTdU1zdHEKmwofjQ/s3tr12AL0Ulf
	/i1Z9U4HuDByj7KlGUSlfK0PZEDmcXwZqGw1vkiRiyBB0g0cfxruOx7e2h2JeQpm+dIV
	jQ7l57EO5Cz1nsAzmsQ/DtfhbqEBf6nyuaJmMDv9PEHKIqH5VJ3wDYAYK7swyrdnOils
	26xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=1gfPq/xAc4+KVouuCJVEZ+NHIEBu8OXLP3raJby7eAI=;
	b=NQ215b2N6Pl8vHDmIkzSgWUhmS4Q4Q0Cg7y/riUvMbBYd/aSfDFSnemHHRX0mAgnMi
	hKNWi7Q72MM3d/OQdujqxSzDARs+pPmo0P/FD5gF26JlsfLx4+VKX+rwh3ca5w/YFB9L
	dBFWMMawSw/w4F4yWgh164coDpCEfAjw1BBo65vyHcw0nUw9o/2OBrE783gZu9WgBQlE
	Rb2Y08BLea1jIUnbFCq/IIt5XsQEvBbJwsNOqDuk05QYZ/lXnYG1ADpa4rkAILXFRKPM
	W559IAta8Vwp6AHTkfAUxQ0uDLX4pcWWwS+sUg/YB2uf5NAlYru5PqJCuh9tY6skBLP2
	zYQw==
X-Gm-Message-State: APjAAAX95XjeXPzQ+HXVBjEtTlTgkyWwyWDZvsZ7wNb5G5ahI7z4xFv9
	o2gvHVoM3e1osXaZWYvchwrJ1VAKrdnzfRondz4=
X-Google-Smtp-Source: APXvYqwdxlHugOqJ9eKHqf3yfkfrHLd0FZY2vQd+/JyWF+V8OyOtvtZCLabR6yRqA/jmPMoqn1V4IHsJsQOUSFOzWDU=
X-Received: by 2002:a05:6830:109:: with SMTP id
	i9mr15771177otp.96.1556025886863; 
	Tue, 23 Apr 2019 06:24:46 -0700 (PDT)
MIME-Version: 1.0
References: <8828ebbf-bc9d-3633-b8a7-8ccaa2101733@luxoft.com>
	<a2f3a0a281b75d06300d38ebd62e9c138cf6f9a5.camel@linuxfoundation.org>
	<f8913de6-e793-f7cb-ef56-a6f3b348fc0c@luxoft.com>
In-Reply-To: <f8913de6-e793-f7cb-ef56-a6f3b348fc0c@luxoft.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 23 Apr 2019 15:24:35 +0200
Message-ID: <CANNYZj9+_e2oDvKcqnOa3T44dK4a9pAW-xqX6HkkxwgiGLVvDA@mail.gmail.com>
To: "Mardegan, Alberto" <AMardegan@luxoft.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] XML test runner, or how to override Poky's python code
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
X-List-Received-Date: Tue, 23 Apr 2019 13:24:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please send the patch using 'git send-email' to oe-core mailing list.

Also, this should be optional, subject to a bitbake variable (which
you can pass in via a bool parameter that defaults to False). Not
everyone wants the full stdout/stderr content in the json.

Alex


On Tue, 23 Apr 2019 at 14:37, Mardegan, Alberto <AMardegan@luxoft.com> wrot=
e:
>
> Hi,
>
> On 18/04/19 11:31, Richard Purdie wrote:
> > Its certainly possible to alter pretty much any of the code but it
> > would probably involve duplication which would be ugly. A better way
> > may be to send patches which optionally allow the test output to be
> > stored in the json output based upon configuration?
>
> Here's the patch; I hope that Thunderbird won't play too much with it :-)
>
> Ciao,
>   Alberto
>
>
> ________________________________
>
> This e-mail and any attachment(s) are intended only for the recipient(s) =
named above and others who have been specifically authorized to receive the=
m. They may contain confidential information. If you are not the intended r=
ecipient, please do not read this email or its attachment(s). Furthermore, =
you are hereby notified that any dissemination, distribution or copying of =
this e-mail and any attachment(s) is strictly prohibited. If you have recei=
ved this e-mail in error, please immediately notify the sender by replying =
to this e-mail and then delete this e-mail and any attachment(s) or copies =
thereof from your system. Thank you.
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

