Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87C0CE00D3E; Fri, 16 Mar 2018 14:55:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F139EE0073D;
	Fri, 16 Mar 2018 14:55:50 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id s9so12609269qke.12;
	Fri, 16 Mar 2018 14:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=DABTOUDOifWNm5GA82bz+jFCgY/CnlvZUisE3SwQuNI=;
	b=MEf+r95UpCzJK6XRj4ka50qJzBKqr7Ae2gUlX1Cc4aYHDRhYjeStB1sw/Gzzb1Y5uK
	O7b6osFXaYtMALvVKwZOo75kbM0shhnS3TbgeWg/cKPTuLd2cupT663gVjgsOshJNwhS
	FxfZbzF+a0br3XO01epRSd8LrNvM86e8MzBzpHSY/EJyAkrXktVcCHd4+EDCYWwigKSG
	WtbxG9pZ0TuOY8VgYDjwbZGPrtdSUWNgHIG4PlrC3P44nPJV2SNWSIMAAlmOX4qhJli/
	PXDeFHq/4PqV+9IHciT40gqpHowhZIvgb+vrhVSOs4n/OUJHugLALuALeiw88r0afzoV
	mIVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=DABTOUDOifWNm5GA82bz+jFCgY/CnlvZUisE3SwQuNI=;
	b=s74OXxGwsQkFYIA89meFUT2CTkXGGAkC7a/XHKDuYdOLSKnq4/7v2TCkCNfQRiCoUi
	0kuTIOJeb6TC0iE6vEqVossD8DzZ3qat4qcLdD6CkcuyZOm8PWPVOiyMHJHiMn+ivt5U
	5wJsJwjFNwdBm2CCXRSE1xE36iUBhdePD1zFcLadFxVfd/gJNGfVes7kOij+GhBDw5xo
	Q5J5pkr5qrBlJlXsc3XmCQNfQFRedqw0Tl9Imc24F9zOT9fXBHaiSy+y+23bTmqZ2+cN
	sa0d9APtf4XXw5NKng05SfYMLyfXgfdEkAykcCtK2PzxmKzdJU2Ch+ycOUKmeguWdP7T
	Z+5A==
X-Gm-Message-State: AElRT7EdKMbVIJW5n/KVIsHgxIjwGa57RxGlkwQYZDjzQkijuGCE/sWJ
	Qrx6UZREai/E1SbdJvSIKyrP0NOq5nM2FLRDps5eXg==
X-Google-Smtp-Source: AG47ELuhgyCrjsfm3zcQEY+EHGzqVdtmTNaEv5HdUiPbPzZuksQBVb0cOrY1J+ydV3QHbaS6nsT5cEqzpP52xd2HKmw=
X-Received: by 10.55.158.72 with SMTP id h69mr5053929qke.338.1521237349820;
	Fri, 16 Mar 2018 14:55:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.233.221.132 with HTTP; Fri, 16 Mar 2018 14:55:49 -0700 (PDT)
From: Davis Roman <davis.roman84@gmail.com>
Date: Fri, 16 Mar 2018 17:55:49 -0400
Message-ID: <CACfi_Z0Cy+DsqUKk3m7gsm-mHkw=_1JtfvBF+PxEFrjn1g9vTQ@mail.gmail.com>
To: poky@yoctoproject.org
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: best way to use sudo for a long running background process
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
X-List-Received-Date: Fri, 16 Mar 2018 21:55:51 -0000
Content-Type: text/plain; charset="UTF-8"

hello,

I have a daemon called powermanager running as the non-root user, power.

In /etc/sudoers.d/power, I have the following:
power ALL=(ALL) NOPASSWD: ALL

I know that the above statement essentially gives the powermanager
process root privileges
however, in the future, I'd like to have the option to enforce certain
commands/files not be used, if needed.
My understanding is that the sudoers file would be the place to place
these rules.
( ie: disable ability to open file /dev/foobar )

Therefore on startup, I configured my systemd service file to run as
the power user however I'm trying to figure out which is better:

1. launch this process as 'sudo powermanager'

or

2.  launch my process as just 'powermanager' and let the process deal
with invoking sudo when it needs to open files in /dev/


Any feedback would be greatly appreciated.

Thank you,

Davis

