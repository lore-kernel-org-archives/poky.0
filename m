Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66756E00D2B; Mon, 15 Feb 2016 04:35:07 -0800 (PST)
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
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB6A2E00D26
	for <poky@yoctoproject.org>; Mon, 15 Feb 2016 04:35:06 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id g62so106920530wme.0
	for <poky@yoctoproject.org>; Mon, 15 Feb 2016 04:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=OpHjueKzNlPlLhLbw/F0fH6YOS87uJ65xUdMHlxoY1A=;
	b=U75MSHDE/Jz99eZQ2IoTlF3SspLv3whUXr10KEbty8bOvcKF599XpUrPJo1zqfeEuo
	U64q4K4BDvi6rsJ4eT/Tajxc6CyOmClCetoUkJDyzhhWJdguIjXENEWtCLXhe8VEXyYy
	Ym6B+GWmFuLd85b8gG3oKXqiArsnDU2UxlQigOjYxvY1Yi2K9G8oOdM/uzI/P4gg5lft
	RqYtIko6ifmJmPS9/p+K3xXFad/Gui/1/7CpWou0Y+Dz5xXK8DPkAYoqGJPu7Nb9sJVR
	rXwxFjjq5OAMBmnOIEGc+N+q7+buykpS+J7woBX1ObOzIb8h9qOfnfYzzPM0CIxS+I4t
	nOTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=OpHjueKzNlPlLhLbw/F0fH6YOS87uJ65xUdMHlxoY1A=;
	b=VjSoVnjdopZvk5zEdbrSEKFztofeUb+NF1MTc0iIhfMx3IhfE+RfNRE5CVBFkVCTzy
	hxs6YH1sWyokiiCFtXrXy8bT9lhPM8nbg5cIbK8en3kOlbdrXXrUxqTuIiYHVLzvWpK7
	yDMZjMtFw6kzN5rXReQEzTyGe5EiQpGYjBsWZoRDHIqsN5lKgQSmXDW9WRdrq16LCwhj
	LBVOCunUAGV6olGBtwpUfmMSTHZwzqSxP9GTgBmrKR4/Ss+3SXMxP03ezHNpqO4t7Au4
	9yRaTzQbQYc1J2n5SWT8hG3nziLCIXZHLosNJgpzXS98MeMk0brC8unoyC7/u5rxT5Mg
	PExw==
X-Gm-Message-State: AG10YOTDp1tLYCtSOB4hH2sFkGrDKmzink0kR1oOlmqvjAWguuIamK+Ptgi5PSZLlzGbvcNSgqkHLUzQ56jbTQ==
MIME-Version: 1.0
X-Received: by 10.28.5.77 with SMTP id 74mr13378503wmf.62.1455539705552; Mon,
	15 Feb 2016 04:35:05 -0800 (PST)
Received: by 10.28.94.133 with HTTP; Mon, 15 Feb 2016 04:35:05 -0800 (PST)
In-Reply-To: <CAA2DH4svD59du6J6SPLoqnLK8rO50wgKxp-EB09coeebis1Syg@mail.gmail.com>
References: <CAA2DH4svD59du6J6SPLoqnLK8rO50wgKxp-EB09coeebis1Syg@mail.gmail.com>
Date: Mon, 15 Feb 2016 18:05:05 +0530
Message-ID: <CAA2DH4sANAd__35JCjPNbQQcyxDzppr1zAtz1+Qg0HVoQrMD6Q@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: Modify core-image-minimal-initramfs image
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
X-List-Received-Date: Mon, 15 Feb 2016 12:35:07 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 12, 2016 at 5:57 PM, Prasant J <pj0585@gmail.com> wrote:
> Hi,
>
>
> I have built my own layer for my yocto root file system modifications.
> I was able to build custom image as per my requirements.
>
> However, I'm unable to understand core-image-minimal-initramfs image.
>
>
> - How can I add packages to core-image-minimal-initramfs image?
>

This was a very simple one. I just added
core-image-minimal-initramfs_%.bbappend and it works for me.

Regards, Pj

