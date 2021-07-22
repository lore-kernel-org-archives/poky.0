Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web09.1737.1626980726462757019
 for <poky@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 12:05:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WIZYwEWN;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id a66so3888170vsd.10;
        Thu, 22 Jul 2021 12:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=16Jq6NgVJl7ouirZSqeMui9ZG6vCIraXCwJ/7mzOZ74=;
        b=WIZYwEWND52zDb9jGaob81rV/WkDOnxeRaQUAAiKUTcnZ3ATFZB29W2kx3WK8APouJ
         E4GuYUxnwN2wvZhDa+yhfFdVfiWDheRpYWxU4huW73xNrbG3G6aEH5bgJDUy/2ptoaeg
         YFu65f669GKX/ofT4fdqT6iQKFGHtqsmk7v9P/XEJY2HJh8X6nyJ3fRJ6U0jF25t7ZJX
         QdCrxdhlUXMU8BBpSj3I/koPSayYhZNhugwdZHStDBkxxXnwHG/A6rECqF6DKjx09UA2
         pMcK+NX4P0Jny8m3/e7RR9XUWaeYQcody/SmUs64H+P59BzNFjJ9YRTd/XWvClpe2p8z
         /nnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=16Jq6NgVJl7ouirZSqeMui9ZG6vCIraXCwJ/7mzOZ74=;
        b=kz/zvHVz5NQWFB/3MqOB8cfVf+znK7a7tXQRZmOXg5BZ/HxIc5wS7YTGFrP3VjC2NE
         Olrck2iPtH1gGHg3BOdRoGrb/SWNXKUQ6zSRkRuattXyFewkdwA4ZCFNx+Z6+9bzZV8z
         jOCeGML04CHiK/snB1Bn3A9UGQqWCK2OtklfneaVBfGy/mgP9zQHnlr86Kx7n1PwBmtU
         vQTmsBu33r/JX7WqRBT60viRfkaTOL2OHDkW5ui7Xn4rF7eALvrFqcbnwqsr+S9gU153
         JwTx3CTDJLivIPTUo6vyl94vId5Sn0EEe4yg7U+ukEbq+7GoerwLMHqxCVYHqJxSW7Li
         Z1iA==
X-Gm-Message-State: AOAM531Wp5ib0UuJ5OREr8nNac/khv6MVqe6MGt64JWMLU0JxDEYv2Lv
	itUQ8HVTyTYFqpgy/BPyLLlydE8UI5IXanRHks8=
X-Google-Smtp-Source: ABdhPJyRi1ogPazyl4aloRNSoooCMBW41BilhiJ+NwmTigdw/DHvIPN3DvjdgCgiRSheiLUn5nHC1Ub4cwyKTloH3F0=
X-Received: by 2002:a05:6102:3a5a:: with SMTP id c26mr1572246vsu.20.1626980725629;
 Thu, 22 Jul 2021 12:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210615081225.1734033-1-alex.kanavin@gmail.com>
 <5ed9e1d2676d4d31289ebaf2ec3b492c1daa88a7.camel@linuxfoundation.org>
 <CANNYZj84MXS57sG5CWLmS-Y_0-w8h1_9NLmtjFEo4pJ5snXvcA@mail.gmail.com>
 <CANNYZj8S7V5owiS0p3B1fD7n_JpF-OPLApO=e9d+SiPuyFWHZw@mail.gmail.com>
 <0451f536368310860d9acb12e5a8424881b545e8.camel@linuxfoundation.org>
 <CANNYZj9Z87Jb7Ea-vtQ1ZEmtQvfFRDtTXAxvStZT3c02RnU01g@mail.gmail.com> <a7e0a44c-084e-5e21-5621-67e32ca36127@gmail.com>
In-Reply-To: <a7e0a44c-084e-5e21-5621-67e32ca36127@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 22 Jul 2021 21:05:14 +0200
Message-ID: <CANNYZj-C_QWe9CB9JsAOctCJbNrAni8WoDVg15t5kzKsYn6QEw@mail.gmail.com>
Subject: Re: [yocto] [poky] [PATCH] local.conf.sample: disable prelink
To: robert.berger.yocto.user@gmail.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Mark Hatle <mark.hatle@kernel.crashing.org>, poky@lists.yoctoproject.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000035279305c7baf860"

--00000000000035279305c7baf860
Content-Type: text/plain; charset="UTF-8"

PIE is nowadays more or less the only available option and is expected for
improved security; Yocto does not even test non-PIE builds or provide an
off the shelf way to turn it off.

I also have to note that prelink does show higher RAM consumption in your
tests as well (MemFree column). On the constrained systems which would
benefit most from improved prelink timings that might be a bigger loss than
not prelinking.

But yes, there is a timing benefit visible in the tests: 0.01s vs 0.1s.

Alex

On Mon, 19 Jul 2021 at 22:58, Robert Berger@yocto.user <
robert.berger.yocto.user@gmail.com> wrote:

> Hi Alex, RP, Mark,
>
> I did some research on the subject in order to try to figure out what is
> going on.
>
> 1) I come to a similar conclusion with what found, but tried to look a
> bit deeper for the reason.
>
> 1.1) The reason that cross-prelink is not prelinking is, that for a
> quite some time by default everything is built with PIE mode by default
> and cross-prelink does not seem to be able to work on exe/libs compiled
> with PIE mode. So seeing the same behavior with and without prelinking
> is what I would expect as long as everything is compiled with PIE mode.
>
> A more detailed analysis of my tests can be found on my not yet
> officially published site:
>
> https://rlbl.me/prelink-1
>
> https://rlbl.me/prelink-2
>
> Alex:
>
> Can you please rebuild your test images without PIE mode and re-run the
> tests?
>
> Then we should have the 4 test cases:
>
> prelinked-with-pie
> no-prelink-with-pie
> prelink-no-pie
> no-prelink-no-pie
>
> I guess then we can discuss what are the next steps.
>
> In my opinion the current default settings, which compile close to
> everything in PIE mode, but invoke also cross-prelink do not make much
> sense.
>
> The question is: "Do we want to drop cross-prelink, or do we want to
> drag it along and come up more fine-grained configuration options?"
>
> We could e.g. exclude certain files from pre-linking.
>
> IMHO cross-prelink still works, but not on exe/libs which were compiled
> in PIE mode.
>
> Regards,
>
> Robert
>

--00000000000035279305c7baf860
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>PIE is nowadays more or less the only available optio=
n and is expected for improved security; Yocto does not even test non-PIE b=
uilds or provide an off the shelf way to turn it off.</div><div><br></div><=
div>I also have to note that prelink does show higher RAM consumption in yo=
ur tests as well (MemFree column). On the constrained systems which would b=
enefit most from improved prelink timings that might be a bigger loss than =
not prelinking.</div><div><br></div><div>But yes, there is a timing benefit=
 visible in the tests: 0.01s vs 0.1s.<br></div><div><br></div><div>Alex<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, 19 Jul 2021 at 22:58, Robert Berger@yocto.user &lt;<a href=3D=
"mailto:robert.berger.yocto.user@gmail.com">robert.berger.yocto.user@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Hi Alex, RP, Mark,<br>
<br>
I did some research on the subject in order to try to figure out what is <b=
r>
going on.<br>
<br>
1) I come to a similar conclusion with what found, but tried to look a <br>
bit deeper for the reason.<br>
<br>
1.1) The reason that cross-prelink is not prelinking is, that for a <br>
quite some time by default everything is built with PIE mode by default <br=
>
and cross-prelink does not seem to be able to work on exe/libs compiled <br=
>
with PIE mode. So seeing the same behavior with and without prelinking <br>
is what I would expect as long as everything is compiled with PIE mode.<br>
<br>
A more detailed analysis of my tests can be found on my not yet <br>
officially published site:<br>
<br>
<a href=3D"https://rlbl.me/prelink-1" rel=3D"noreferrer" target=3D"_blank">=
https://rlbl.me/prelink-1</a><br>
<br>
<a href=3D"https://rlbl.me/prelink-2" rel=3D"noreferrer" target=3D"_blank">=
https://rlbl.me/prelink-2</a><br>
<br>
Alex:<br>
<br>
Can you please rebuild your test images without PIE mode and re-run the <br=
>
tests?<br>
<br>
Then we should have the 4 test cases:<br>
<br>
prelinked-with-pie<br>
no-prelink-with-pie<br>
prelink-no-pie<br>
no-prelink-no-pie<br>
<br>
I guess then we can discuss what are the next steps.<br>
<br>
In my opinion the current default settings, which compile close to <br>
everything in PIE mode, but invoke also cross-prelink do not make much <br>
sense.<br>
<br>
The question is: &quot;Do we want to drop cross-prelink, or do we want to <=
br>
drag it along and come up more fine-grained configuration options?&quot;<br=
>
<br>
We could e.g. exclude certain files from pre-linking.<br>
<br>
IMHO cross-prelink still works, but not on exe/libs which were compiled <br=
>
in PIE mode.<br>
<br>
Regards,<br>
<br>
Robert<br>
</blockquote></div>

--00000000000035279305c7baf860--
