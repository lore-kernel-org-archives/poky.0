Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16504E0070B
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 14:55:55 -0700 (PDT)
Received: by eekb45 with SMTP id b45so3362576eek.35
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 14:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4dx8M7FLVG4vmTf2LgpmcrfI31E7ODhfyYqPVHwo724=;
	b=H6qr29kh+Y9ctrVjaiUzoY6UpeyAmwHt2PZOQT2Rl4PM3MD27NLrK0yB3pb1x5Zxbv
	M8NEjkZ7rWpq2TEsfmRCD3fMQihdRb3Jzt8331cQuY2PEJ2PcoMVtS8Vi+IniywPNrmW
	W1xuKh5gY3qjreyPV4DcTQNhYqCAtJa3DTMYLQ13zUH0SN/AGYVbMGl/oKQbudHvObqV
	oo7/Zt5z5nS02uRVWqK/lwRR5X5rUExyeIyp8LZYa3q5crX7fo44AqFq3Vq8OgFhhrop
	AYx15GylL4q+LbGm+Kod3SItUfP8Kf8qAYNW0deRSUYmqQZlJzdAhdeUXq1akS6KCkUs
	g10g==
Received: by 10.14.37.132 with SMTP id y4mr5145430eea.142.1340229354931; Wed,
	20 Jun 2012 14:55:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Wed, 20 Jun 2012 14:55:24 -0700 (PDT)
In-Reply-To: <4FE220B8.2080903@mlbassoc.com>
References: <4FE220B8.2080903@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 20 Jun 2012 14:55:24 -0700
Message-ID: <CAMKF1so1L3GNuELFb4stPPORTwN29vOLngJM_x_9BrV7_jMaiQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: New warning
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Jun 2012 21:55:56 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 20, 2012 at 12:12 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> This happens when I have two intertwined layers - I have a recipe in layer1
> which references a file satisfied only by layer2.

why not move the reference from layer1 to layer2 as well ?

