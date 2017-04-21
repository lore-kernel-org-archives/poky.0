Return-Path: <giuseppe.diguglielmo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 978D4E00A30; Fri, 21 Apr 2017 09:08:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (giuseppe.diguglielmo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.175 listed in dnsbl.sorbs.net]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33528E0074B
	for <poky@yoctoproject.org>; Fri, 21 Apr 2017 09:08:24 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id a103so125392667ioj.1
	for <poky@yoctoproject.org>; Fri, 21 Apr 2017 09:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=L0V8nmsefwECYuozq74nE+NVoHiHuMYgUddilcmrDnk=;
	b=DZ7gHlZMCq5C4SjEvUsAayqINgQH6EysGVbKRXpF+CDmLY679CY0EHuvTavLdXk8r+
	Qxzdge4Vn7tAczNCabVQ5Dp4wtL2t1klIq291Y/4Vgnpu6nM4xuyc1cBXGP/xuuTmDyn
	TD0BUstAfHCogNKCuglMaCfjArpvgDCqUpUCpA7rxnlnGdQiVnpZN7S+6IdYxL6Obda+
	LkqOE1mroZkWJdb+s59nqY9h4elwIqmijemE/4hjQpmGq5jBNfIHZdnDhLFcCDRbcHL1
	GrnRMSkDBDCnGFxv/6D3d2QbD8zM1nY2XP1bVe4bvwlWXIpZESa60aCmFwnbf70Ks8ac
	jGVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=L0V8nmsefwECYuozq74nE+NVoHiHuMYgUddilcmrDnk=;
	b=KXEp2iqvXPcdIU5qFNOZNUlU7+ycSQ4TGQnwhbq4TseUOEEo/dbdeLHmqTfkkz9aZ8
	ng9/zRn0fEzog6AEeZ/FjVCSsMwcPKecS6mxvgfZmeaQF11QGU97WpDFYJ/XqSDUlLS4
	iKoli5yvymV4HOmwomavPLDLPfFCt2OoZIo+V8O6jy2P928nRzcXTF+T693TsEmsWGPT
	CukhCwYSvBZSCNQB/CkVb5oWMGyslAtwcdxNJo62KZnJyvrhPyY0O1MoEWBlYdS7lOyZ
	6SDDkW8oVmhc3FQmb+6FslGeIyKB7ib+a/W7x/AZx7OmvDCh8uZu1NtGiiBamwgPWqmN
	xAxw==
X-Gm-Message-State: AN3rC/6wQVx2nwTdoCpTTfLDErrsCQ9JsuYQZFb+jr/XVktqVKn9GB5l
	TektWk472BUzFqIsBK8pnyVmMQbpaQ==
X-Received: by 10.107.173.14 with SMTP id w14mr17527999ioe.232.1492790822703; 
	Fri, 21 Apr 2017 09:07:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.208.9 with HTTP; Fri, 21 Apr 2017 09:07:01 -0700 (PDT)
From: Giuseppe Di Guglielmo <giuseppe.diguglielmo@gmail.com>
Date: Fri, 21 Apr 2017 12:07:01 -0400
Message-ID: <CAOiuDAW-CqOgZxwWdyuFLxoQWAfyhvpCcuPqJmpgOAV_aa44HA@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Kernel source code in /usr/src
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
X-List-Received-Date: Fri, 21 Apr 2017 16:08:26 -0000
Content-Type: multipart/alternative; boundary=001a114409e4b61807054daf72e6

--001a114409e4b61807054daf72e6
Content-Type: text/plain; charset=UTF-8

Hi,
how can I have the source code or headers of the kernel that I am currently
running in the folder "/usr/src" of the Poky running on the board?

Thank you,
GDG

--001a114409e4b61807054daf72e6
Content-Type: text/html; charset=UTF-8

<div dir="ltr">Hi,<div>how can I have the source code or headers of the kernel that I am currently running in the folder &quot;/usr/src&quot; of the Poky running on the board?</div><div><br></div><div>Thank you,</div><div>GDG</div></div>

--001a114409e4b61807054daf72e6--
