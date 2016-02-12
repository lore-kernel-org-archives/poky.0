Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3700FE00C7D; Fri, 12 Feb 2016 04:27:39 -0800 (PST)
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
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29702E00C6F
	for <poky@yoctoproject.org>; Fri, 12 Feb 2016 04:27:35 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id p63so17319318wmp.1
	for <poky@yoctoproject.org>; Fri, 12 Feb 2016 04:27:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=xh2nxFf4jttAEXghONQ5fLToB0cQIjUSbPym0ggiMe0=;
	b=AaD2KrgcCYplgvB/KZ9Kavtmnzl4Tl4fgluQqAko9QQmKfp2d/GYUZ8/eVaq+mjMSd
	jBK+H0tsAk8TLzWR28C6nP+TKfhTxjTyvy9uEzhqs7DfrtSEkPXCj2BdUe4WHEBQLfnf
	K0TIogFHfn90dOJCAt+zO/h2YbG4Vquc6DlrA8wXzMSoZZMM3qkxsvCqiYY/R6l2U1rb
	k7KhXqIxU35ttUY/fYucLNT9MtkgEbvkKSDaoR4Vh5mrvAdc/YQIP4Mh8XqADIrsMvxm
	4iZL+rwaKPbddO/D0XhOWiwHZspGpRzjKLuzvPsr9qynCUSabYfJM0RrhYo2akMBdjWh
	MS8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=xh2nxFf4jttAEXghONQ5fLToB0cQIjUSbPym0ggiMe0=;
	b=Z2P8GU3ZzdV1R/aWqwzBmitz0LGZE6cRu/6SA+MFOgbOb9MCXCfycjCOfNeAlUeRW4
	NIZ8Rfh4jtibnmGSVxAglYc9WIOTyHe6BhE5/S31xu5KvynSaS/MkdSmFs60yTHHjsdD
	hjZv7WC+hBTsMGzCDrfvvOMj4iWEzmkpox9NdZ8e4zuYgguAuDFlBiKuNd3W8aGDNAKH
	yq3WvwpWIT1AaTvVdCeyAKoWOT9XP0zwWNmQjsJgAzKl9tplx7vQawfKZ9PGwOL3YoQ6
	v/yaInqNY6nL3Wrb1541hfOvjRQO/sp+RuPq56w2wlvX2AlHCxK967/Ofr4kJJxUzvuo
	Z7aw==
X-Gm-Message-State: AG10YOQ7I4YC1IUp+o4GJSvuf3Dv0ta3EbvSRcqTmvzIwwnWzJG41xWTI5LxYGkKXLlJJ7MjEzmPpBqq+BOizA==
MIME-Version: 1.0
X-Received: by 10.194.78.83 with SMTP id z19mr1426756wjw.5.1455280054883; Fri,
	12 Feb 2016 04:27:34 -0800 (PST)
Received: by 10.28.94.133 with HTTP; Fri, 12 Feb 2016 04:27:34 -0800 (PST)
Date: Fri, 12 Feb 2016 17:57:34 +0530
Message-ID: <CAA2DH4svD59du6J6SPLoqnLK8rO50wgKxp-EB09coeebis1Syg@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Modify core-image-minimal-initramfs image
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
X-List-Received-Date: Fri, 12 Feb 2016 12:27:39 -0000
Content-Type: text/plain; charset=UTF-8

Hi,


I have built my own layer for my yocto root file system modifications.
I was able to build custom image as per my requirements.

However, I'm unable to understand core-image-minimal-initramfs image.


- How can I add packages to core-image-minimal-initramfs image?

Any inputs will be of help!

Regards, Pj

