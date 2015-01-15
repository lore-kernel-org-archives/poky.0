Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E898E00894; Thu, 15 Jan 2015 13:13:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4843E00757
	for <poky@yoctoproject.org>; Thu, 15 Jan 2015 13:13:44 -0800 (PST)
Received: by mail-lb0-f173.google.com with SMTP id b6so2627580lbj.4
	for <poky@yoctoproject.org>; Thu, 15 Jan 2015 13:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lrPj20gdCgmd2KUn1HRZ/Bob215Jt0W5LlVImDs+sQw=;
	b=isrfdsnW1+eF47pZxGbG7P4pXo59pC0OvDgsWhV5ua2lgtpJJNfxXK8u9tvuSWSzog
	YyjuUEJf36Z71nwco0wePrYQj+wAhjwWRkhNOc1dmgqyrxneNE9VCo6A3uJFcIq6amw5
	J0ZEqqTAxErG6WzxX5ZezpD6Q393lX46473TXsu/1j0fjdXDZn0IuB66AToaUFKn1jVk
	MNUiYI+8fSn/uSnZ3hwA9A6G2ER+J6niOMxBlOt5q5EGq8syxDpbCFqxrW/AP3+ukGnG
	Bd66h0KL2EDgloP+ypzdKWBb+ktes7KE7a8V7+JhQOlnFhA5uxc9LW4pfEy+BNLkGoYI
	creQ==
MIME-Version: 1.0
X-Received: by 10.152.6.132 with SMTP id b4mr12236469laa.59.1421356422520;
	Thu, 15 Jan 2015 13:13:42 -0800 (PST)
Received: by 10.112.48.41 with HTTP; Thu, 15 Jan 2015 13:13:42 -0800 (PST)
In-Reply-To: <CABORvUjkiZHvX5FO2cTjCxfTpgv-1W+G31Ox2VsmUk7tvf1nRA@mail.gmail.com>
References: <CABORvUjkiZHvX5FO2cTjCxfTpgv-1W+G31Ox2VsmUk7tvf1nRA@mail.gmail.com>
Date: Thu, 15 Jan 2015 16:13:42 -0500
Message-ID: <CADkTA4OPPOhQTZ9WYF660bYCv9XU=ELPX6xuogOZLsFviaA+kg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Theodor Gherzan <theodor@resin.io>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] kernel-yocto.bbclass: Bug Fix inside do_kernel_checkout()
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
X-List-Received-Date: Thu, 15 Jan 2015 21:13:48 -0000
Content-Type: text/plain; charset=UTF-8

This change should go to the oe-core devel list
(openembedded-core@lists.openembedded.org)

On Thu, Jan 15, 2015 at 12:47 PM, Theodor Gherzan <theodor@resin.io> wrote:
>  After we check the existence of 'machine_branch' with 'git show-ref'
>  the following if statement should change the 'machine_branch'
>  to the default (i.e. master) if the 'git show-ref' has returned an
>  exit code that is not 0, not the other way around.

I was actually looking to remove the block completely .. in the end, this code
doesn't care about the branch anymore (it used to), it is the git checkout -f
that is the important operation.

.. but indeed, the condition is inverted .. good catch!

Bruce



>
>  Signed-off-by: Theodor Gherzan <theodor@resin.io>
>
> diff --git a/meta/classes/kernel-yocto.bbclass
> b/meta/classes/kernel-yocto.bbclass
> index 3b59d85..44aa1b8 100644
> --- a/meta/classes/kernel-yocto.bbclass
> +++ b/meta/classes/kernel-yocto.bbclass
> @@ -211,7 +211,7 @@ do_kernel_checkout() {
>         # Create a working tree copy of the kernel by checking out a branch
>         machine_branch="${@ get_machine_branch(d, "${KBRANCH}" )}"
>         git show-ref --quiet --verify -- "refs/heads/${machine_branch}"
> -       if [ $? -eq 0 ]; then
> +       if [ $? -ne 0 ]; then
>                 machine_branch="master"
>         fi
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

