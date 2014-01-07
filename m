Return-Path: <skroll@kevadiya.com>
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A74EE006CA
	for <poky@yoctoproject.org>; Tue,  7 Jan 2014 11:17:29 -0800 (PST)
Received: by mail-wg0-f52.google.com with SMTP id b13so307345wgh.7
	for <poky@yoctoproject.org>; Tue, 07 Jan 2014 11:17:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=wdTqgcujPOnm10yvkiTwfLr9GOUGCWdVLeXEsbT0z8w=;
	b=ASdJD73Nn7B432UkjxcNdfk/LZ6dpQvfLH1zG2vgK4Ya1V6h6krepg7+WrFed3WuHL
	DHWfklY86ZDFEUiGtXIvxxleYOohxp4BYousI8Wji+ig0uw7E81N+wU5xTQyCS9QPoMR
	8ZSHjsTmuig1mAuRRynzSRab35sTNf7jsQtcsVeyDkphRscX+DyEq5EKJlSjyMXGmt0C
	jdv7qNNi/HrwX66fUw1tcewQK7oUKNrLuJDIUrcbg8v3DYIfkiTh3CySi56PFTo8iHhW
	fEHoW5vSo5bwvKKsBMyRNOZQCT7BZwe6/HSNBpIHIezNFFzrqhHWb44gXPRKoscJJT9G
	6+XA==
X-Gm-Message-State: ALoCoQl72n1rLU9Is+gBHBSNG8AbaWxkmyuCbX7D5Giugis6aXOAw/U20FhVCto55+FD9XpmccEi
MIME-Version: 1.0
X-Received: by 10.180.108.240 with SMTP id hn16mr18043777wib.5.1389122247929; 
	Tue, 07 Jan 2014 11:17:27 -0800 (PST)
Received: by 10.217.67.9 with HTTP; Tue, 7 Jan 2014 11:17:27 -0800 (PST)
Date: Tue, 7 Jan 2014 14:17:27 -0500
Message-ID: <CAL-qi526ua3G0iyPqE+awLKNgiobftcswofZ2qHXMgCsX1-WRQ@mail.gmail.com>
From: "Kroll, Scott" <skroll+poky@kevadiya.com>
To: poky@yoctoproject.org
Subject: Problem populating rootfs with a binary only recipe
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
X-List-Received-Date: Tue, 07 Jan 2014 19:17:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have a recipe for NVIDIA display drivers written that simply fetches
the drivers, compiles a kernel module, and populates some
(unfortunately) binary only libraries. The RPMs created work just
fine, but when generating the root filesystem, an issue crops up due
to a "missing" dependency.

The drivers provide a libGL.so.325.15, which eventually becomes the
symlinked libGL.so (at least in the -dev package). However, one of the
required libraries in the NVIDIA package depends directly on libGL.so
instead of libGL.so.325.15, so when the root filesystem population is
to occur, the RPM refuses to install because no package provides
libGL.so.

Is there any way to handle this sort of situation? I'm not against
overriding the packaging of libGL.so since the target system is going
to only have a particular NVIDIA chipset inside of it, and since CUDA
is being used, the official NVIDIA drivers are required. I've looked
all over but it seems that no matter what the naked unversioned
libraries will never end up on the target. I was even considering
modifying the binary itself to depend on libGL.so.325.15 instead,
although I have a feeling that is probably not a good idea.

