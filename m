Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD3D1E00D2B; Mon, 15 Feb 2016 04:38:53 -0800 (PST)
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
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49C43E00D26
	for <poky@yoctoproject.org>; Mon, 15 Feb 2016 04:38:52 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id g62so56817749wme.1
	for <poky@yoctoproject.org>; Mon, 15 Feb 2016 04:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=eJ/mnCD5WVtncjLFThgclm5AzMQl5aHJ8bUlsp8dQe4=;
	b=Ge5KxpZjfcuRIAchdu3VcOI8hhcXHxyWdNH1OE6OchGGxllCjvsn7cSSn5lvHeCtrQ
	jpf9uD8c0Uee4cys4d9eK7A4s8d8w/7B9eQOAqdpmISrjfExmtL2GGxeM9cXowXFGQiK
	S0pa4OOg06jUn9cmRz16COOBuXOyVvGlemyfZkbKjxpqJbcspC43UaPxoYJ1qy11fzJd
	ek4EuyQYzZSUXY2ya0OyJuDbUf9Vx1vADNzMhAhYKVwRAE3x/oPXMjyEIg1Yb3d3CoDE
	hekY1mqbJxGehHi74cb2cQQCfvfK6Dk2U2ftED7Kfmm+ILJkPiJTRiKwGmU5N7eKFUPg
	4PtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=eJ/mnCD5WVtncjLFThgclm5AzMQl5aHJ8bUlsp8dQe4=;
	b=UHsFsDKws1d62Hosq/ukeDZIk0kNzkWgUNvvvnH+Ma48KX1ieHwxxUw54yaFyB7YrO
	ZzaV9MCX5g/BDcpAwszxYnXnBzQc76UegGVACMuXSUog3A9cVDQrn6CUDhJ3cjyIv17O
	DzTF9hCua6QeI9w6RicsjJNH+MEqLA0fBwTipNtqhnxrkiB6JB4CyFi+2vrUg5HS2e35
	GXyUnbhukHC797Q1qsl6o1+t/jd4xLGmR0QJy6yumJc2RRDJj1kusMSqog5UEcP1O16V
	DtjFsdXr1ivyfF0odrarHpIdCiu990OfnwOv8+Gd7xOfYoSmoND6EOMA8R+6K3mUPI9s
	AeuQ==
X-Gm-Message-State: AG10YOQhDQNrCRHV4p3odQOkUDZkPMcpKD4Ot9r80Ag8bxCW2ho+cOVXHBqZguE4R8uZB1KQLMb7s+9Aq9Plhw==
MIME-Version: 1.0
X-Received: by 10.194.90.100 with SMTP id bv4mr16092662wjb.11.1455539932345;
	Mon, 15 Feb 2016 04:38:52 -0800 (PST)
Received: by 10.28.94.133 with HTTP; Mon, 15 Feb 2016 04:38:52 -0800 (PST)
Date: Mon, 15 Feb 2016 18:08:52 +0530
Message-ID: <CAA2DH4ujkrDqo3RYsm7RCQQsV_Nb6LmvT=1Xns4zaXO0t-PE8w@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Can I force a particular recipe to rebuild every time?
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
X-List-Received-Date: Mon, 15 Feb 2016 12:38:53 -0000
Content-Type: text/plain; charset=UTF-8

Hi,


I'm writing my own layer for the Intel Atom Board.


- Is there a way to force a recipe to be rebuild every time
core-image-minimal-initramfs is built?

- Is there a ROOTFS_POSTPROCESS equivalent for
core-image-minimal-initramfs image?



Regards, Pj

